import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/profile_remote_datasource.dart';
import '../../../data/models/response/shipping_address_response_model.dart';

part 'section_bloc.freezed.dart';
part 'section_event.dart';
part 'section_state.dart';

class SectionBloc extends Bloc<SectionEvent, SectionState> {
  final ProfileRemoteDatasource profileRemoteDatasource;
  SectionBloc(this.profileRemoteDatasource) : super(Initial()) {
    on<_ShippingAddress>((event, emit) async {
      emit(LoadingSection());
      final result = await profileRemoteDatasource.shippingAddress();
      result.fold(
        (l) => emit(ErrorSection(l)),
        (r) => emit(ShippingAddressSuccess(r)),
      );
    });
  }
}
