import 'package:flutter/material.dart';

import '../style/color/colors_app.dart';

class CustomDropdown extends StatefulWidget {
  final String? value;
  final List<DropdownMenuItem<String>> items;
  final Function(String?) onChanged;
  final String? hintText;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final List<Widget>? selectedItems;
  final bool enableSearch;
  final String? searchHint;

  const CustomDropdown({
    super.key,
    this.value,
    required this.items,
    required this.onChanged,
    this.hintText,
    this.validator,
    this.prefixIcon,
    this.selectedItems,
    this.enableSearch = false,
    this.searchHint,
  });

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String _searchQuery = '';
  final FocusNode _focusNode = FocusNode();
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;
  bool _isOpen = false;

  @override
  void dispose() {
    _focusNode.dispose();
    _overlayEntry?.remove();
    _overlayEntry = null;
    super.dispose();
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
    if (mounted) {
      setState(() {
        _isOpen = false;
      });
    }
  }

  void _toggleDropdown() {
    if (_isOpen) {
      _removeOverlay();
    } else {
      _showDropdown();
    }
  }

  void _showDropdown() {
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
    if (mounted) {
      setState(() {
        _isOpen = true;
      });
    }
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;
    var position = renderBox.localToGlobal(Offset.zero);

    // Get screen height
    final screenHeight = MediaQuery.of(context).size.height;

    // Calculate available space below and above
    final spaceBelow = screenHeight - (position.dy + size.height);
    final spaceAbove = position.dy;

    // Maximum dropdown height
    const maxDropdownHeight = 300.0;

    // Determine if dropdown should show above or below
    final showAbove = spaceBelow < maxDropdownHeight && spaceAbove > spaceBelow;

    // Calculate offset
    final offset = showAbove
        ? Offset(0, -(maxDropdownHeight + 5))
        : Offset(0, size.height + 5);

    return OverlayEntry(
      builder: (context) => GestureDetector(
        onTap: () {
          _removeOverlay();
          setState(() {
            _searchQuery = '';
          });
        },
        behavior: HitTestBehavior.translucent,
        child: Stack(
          children: [
            Positioned(
              width: size.width,
              child: CompositedTransformFollower(
                link: _layerLink,
                showWhenUnlinked: false,
                offset: offset,
                child: Material(
                  elevation: 16,
                  shadowColor: Colors.black.withAlpha(100),
                  borderRadius: BorderRadius.circular(12),
                  child: StatefulBuilder(
                    builder: (context, setOverlayState) {
                      final filteredItems = widget.items.where((item) {
                        if (_searchQuery.isEmpty) return true;

                        final child = item.child;
                        String itemText = '';

                        if (child is Text) {
                          itemText = child.data ?? '';
                        } else if (child is Column) {
                          final texts = <String>[];
                          void extractTexts(Widget w) {
                            if (w is Text) {
                              texts.add(w.data ?? '');
                            } else if (w is Column || w is Row) {
                              for (var child in (w as dynamic).children) {
                                extractTexts(child);
                              }
                            }
                          }

                          extractTexts(child);
                          itemText = texts.join(' ');
                        }

                        return itemText.toLowerCase().contains(
                          _searchQuery.toLowerCase(),
                        );
                      }).toList();

                      return Container(
                        constraints: BoxConstraints(maxHeight: 300),
                        decoration: BoxDecoration(
                          color: ColorsApp.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: ColorsApp.gray300,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Search field (only if enableSearch is true)
                            if (widget.enableSearch)
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: TextField(
                                  autofocus: true,
                                  decoration: InputDecoration(
                                    hintText: widget.searchHint ?? 'Cari...',
                                    hintStyle: TextStyle(
                                      color: ColorsApp.gray400,
                                      fontSize: 14,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: ColorsApp.gray400,
                                      size: 20,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(
                                        color: ColorsApp.gray300,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(
                                        color: ColorsApp.gray300,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(
                                        color: ColorsApp.primary,
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: ColorsApp.white,
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 8,
                                    ),
                                    isDense: true,
                                  ),
                                  onChanged: (value) {
                                    setOverlayState(() {
                                      _searchQuery = value;
                                    });
                                  },
                                ),
                              ),
                            if (widget.enableSearch)
                              Divider(height: 1, color: ColorsApp.gray200),
                            // Items list
                            Flexible(
                              child: filteredItems.isEmpty
                                  ? Padding(
                                      padding: const EdgeInsets.all(24),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.search_off,
                                            size: 48,
                                            color: ColorsApp.gray300,
                                          ),
                                          const SizedBox(height: 8),
                                          Text(
                                            'Tidak ada data ditemukan',
                                            style: TextStyle(
                                              color: ColorsApp.gray500,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : ListView.builder(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 8,
                                        horizontal: 8,
                                      ),
                                      shrinkWrap: true,
                                      itemCount: filteredItems.length,
                                      itemBuilder: (context, index) {
                                        final item = filteredItems[index];
                                        final isSelected =
                                            item.value == widget.value;

                                        return Padding(
                                          padding: const EdgeInsets.only(
                                            bottom: 4,
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              widget.onChanged(item.value);
                                              _removeOverlay();
                                              setState(() {
                                                _searchQuery = '';
                                              });
                                            },
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 12,
                                                    vertical: 12,
                                                  ),
                                              decoration: BoxDecoration(
                                                color: isSelected
                                                    ? ColorsApp.primary
                                                          .withValues(
                                                            alpha: 0.1,
                                                          )
                                                    : Colors.transparent,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Row(
                                                children: [
                                                  Expanded(child: item.child),
                                                  if (isSelected)
                                                    Icon(
                                                      Icons.check_circle,
                                                      color: ColorsApp.primary,
                                                      size: 18,
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Find the selected item's widget
    Widget? displayWidget;
    if (widget.value != null && widget.selectedItems != null) {
      final selectedIndex = widget.items.indexWhere(
        (item) => item.value == widget.value,
      );
      if (selectedIndex != -1 && selectedIndex < widget.selectedItems!.length) {
        displayWidget = widget.selectedItems![selectedIndex];
      }
    }

    return FormField<String>(
      initialValue: widget.value,
      validator: widget.validator,
      builder: (formFieldState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CompositedTransformTarget(
              link: _layerLink,
              child: InkWell(
                onTap: _toggleDropdown,
                borderRadius: BorderRadius.circular(8),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: formFieldState.hasError
                          ? ColorsApp.error
                          : ColorsApp.gray300,
                      width: formFieldState.hasError ? 2 : 1,
                    ),
                    color: ColorsApp.white,
                    boxShadow: widget.value != null
                        ? [
                            BoxShadow(
                              color: ColorsApp.gray200.withValues(alpha: 0.3),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ]
                        : [
                            BoxShadow(
                              color: ColorsApp.gray200.withValues(alpha: 0.3),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Row(
                      children: [
                        if (widget.prefixIcon != null) ...[
                          widget.prefixIcon!,
                          const SizedBox(width: 12),
                        ],
                        Expanded(
                          child:
                              displayWidget ??
                              Text(
                                widget.hintText ?? 'Pilih opsi',
                                style: TextStyle(
                                  color: ColorsApp.gray400,
                                  fontSize: 14,
                                ),
                              ),
                        ),
                        if (widget.value != null) ...[
                          InkWell(
                            onTap: () {
                              widget.onChanged(null);
                              setState(() {});
                            },
                            child: Icon(
                              Icons.close,
                              color: ColorsApp.gray500,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 8),
                        ],
                        Icon(
                          _isOpen
                              ? Icons.keyboard_arrow_up_rounded
                              : Icons.keyboard_arrow_down_rounded,
                          color: ColorsApp.gray600,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            if (formFieldState.hasError)
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 8),
                child: Text(
                  formFieldState.errorText ?? '',
                  style: TextStyle(color: ColorsApp.error, fontSize: 12),
                ),
              ),
          ],
        );
      },
    );
  }
}
