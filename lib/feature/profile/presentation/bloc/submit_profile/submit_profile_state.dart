part of 'submit_profile_bloc.dart';

@freezed
class SubmitProfileState with _$SubmitProfileState {
  const factory SubmitProfileState.initial() = Initial;
  const factory SubmitProfileState.loadingSubmitProfile() =
      LoadingSubmitProfile;
  const factory SubmitProfileState.addShippingAddressSuccess(String message) =
      AddShippingAddressSuccess;
  const factory SubmitProfileState.updateProfileSuccess(
    UpdateProfileResponseModel data,
  ) = UpdateProfileSuccess;
  const factory SubmitProfileState.updateShippingAddressSuccess(
    String message,
  ) = UpdateShippingAddressSuccess;
  const factory SubmitProfileState.deleteShippingAddressSuccess(
    String message,
  ) = DeleteShippingAddressSuccess;
  const factory SubmitProfileState.errorSubmitProfile(String message) =
      ErrorSubmitProfile;
}
