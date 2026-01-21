import 'package:bloc/bloc.dart';
import '../../../data/datasource/profile_remote_datasource.dart';
import '../../../data/models/request/change_password_request_model.dart';
import '../../../data/models/request/profile_request_model.dart';
import '../../../data/models/request/shipping_address_request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/response/update_profile_response_model.dart';

part 'submit_profile_event.dart';
part 'submit_profile_state.dart';
part 'submit_profile_bloc.freezed.dart';

class SubmitProfileBloc extends Bloc<SubmitProfileEvent, SubmitProfileState> {
  final ProfileRemoteDatasource profileRemoteDatasource;
  SubmitProfileBloc(this.profileRemoteDatasource) : super(Initial()) {
    on<_UpdateProfile>((event, emit) async {
      emit(const SubmitProfileState.loadingSubmitProfile());
      final result = await profileRemoteDatasource.updateProfile(event.profile);
      result.fold(
        (l) => emit(SubmitProfileState.errorSubmitProfile(l)),
        (r) => emit(SubmitProfileState.updateProfileSuccess(r)),
      );
    });
    on<_AddShippingAddress>((event, emit) async {
      emit(const SubmitProfileState.loadingSubmitProfile());
      final result = await profileRemoteDatasource.addShippingAddress(
        event.address,
      );
      result.fold(
        (l) => emit(SubmitProfileState.errorSubmitProfile(l)),
        (r) => emit(SubmitProfileState.addShippingAddressSuccess(r)),
      );
    });
    on<_UpdateShippingAddress>((event, emit) async {
      emit(const SubmitProfileState.loadingSubmitProfile());
      final result = await profileRemoteDatasource.updateShippingAddress(
        event.address,
      );
      result.fold(
        (l) => emit(SubmitProfileState.errorSubmitProfile(l)),
        (r) => emit(SubmitProfileState.updateShippingAddressSuccess(r)),
      );
    });
    on<_DeleteShippingAddress>((event, emit) async {
      emit(const SubmitProfileState.loadingSubmitProfile());
      final result = await profileRemoteDatasource.deleteShippingAddress(
        event.id,
      );
      result.fold(
        (l) => emit(SubmitProfileState.errorSubmitProfile(l)),
        (r) => emit(SubmitProfileState.deleteShippingAddressSuccess(r)),
      );
    });
    on<_ChangePassword>((event, emit) async {
      emit(const SubmitProfileState.loadingSubmitProfile());
      final result = await profileRemoteDatasource.changePassword(
        event.password,
      );
      result.fold(
        (l) => emit(SubmitProfileState.errorSubmitProfile(l)),
        (r) => emit(SubmitProfileState.changePasswordSuccess(r)),
      );
    });
  }
}
