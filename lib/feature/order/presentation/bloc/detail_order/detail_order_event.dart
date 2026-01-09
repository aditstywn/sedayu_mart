part of 'detail_order_bloc.dart';

@freezed
class DetailOrderEvent with _$DetailOrderEvent {
  const factory DetailOrderEvent.started() = _Started;
  const factory DetailOrderEvent.detailOrder(int id) = _DetailOrder;
}
