part of 'section_bloc.dart';

@freezed
class SectionEvent with _$SectionEvent {
  const factory SectionEvent.started() = _Started;
  const factory SectionEvent.shippingAddress() = _ShippingAddress;
}
