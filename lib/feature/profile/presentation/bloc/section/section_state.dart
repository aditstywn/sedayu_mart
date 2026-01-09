part of 'section_bloc.dart';

@freezed
class SectionState with _$SectionState {
  const factory SectionState.initial() = Initial;
  const factory SectionState.loadingSection() = LoadingSection;
  const factory SectionState.shippingAddressSuccess(
    ShippingAddressResponseModel address,
  ) = ShippingAddressSuccess;
  const factory SectionState.errorSection(String message) = ErrorSection;
}
