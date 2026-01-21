part of 'submit_profile_bloc.dart';

@freezed
class SubmitProfileEvent with _$SubmitProfileEvent {
  const factory SubmitProfileEvent.started() = _Started;
  const factory SubmitProfileEvent.addShippingAddress(
    ShippingAddressRequestModel address,
  ) = _AddShippingAddress;
  const factory SubmitProfileEvent.updateShippingAddress(
    ShippingAddressRequestModel address,
  ) = _UpdateShippingAddress;
  const factory SubmitProfileEvent.deleteShippingAddress(int id) =
      _DeleteShippingAddress;
  const factory SubmitProfileEvent.updateProfile(ProfileRequestModel profile) =
      _UpdateProfile;
  const factory SubmitProfileEvent.changePassword(
    ChangePasswordRequestModel password,
  ) = _ChangePassword;
}
