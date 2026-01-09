part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = Initial;
  const factory ProfileState.loadingProfile() = LoadingProfile;
  const factory ProfileState.profileSuccess(ProfileResponseModel profile) =
      ProfileSuccess;
  const factory ProfileState.errorProfile(String message) = ErrorProfile;
}
