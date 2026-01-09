import 'package:flutter/material.dart';

import '../style/color/colors_app.dart';

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;

  const CustomCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      activeColor: ColorsApp.primary,
      checkColor: Colors.white,
      fillColor: WidgetStateProperty.resolveWith<Color>((
        Set<WidgetState> states,
      ) {
        if (states.contains(WidgetState.selected)) {
          return ColorsApp.primary;
        }
        return ColorsApp.white;
      }),
      side: WidgetStateBorderSide.resolveWith((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return BorderSide(color: ColorsApp.primary, width: 2);
        }
        return BorderSide(color: ColorsApp.grey, width: 2);
      }),
      onChanged: onChanged,
    );
  }
}
