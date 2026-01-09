import 'package:bloc/bloc.dart';
import '../../../data/datasource/profile_remote_datasource.dart';
import '../../../data/models/response/profile_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRemoteDatasource profileRemoteDatasource;
  ProfileBloc(this.profileRemoteDatasource) : super(Initial()) {
    on<_Profile>((event, emit) async {
      emit(LoadingProfile());
      final result = await profileRemoteDatasource.profile();
      result.fold((l) => emit(ErrorProfile(l)), (r) => emit(ProfileSuccess(r)));
    });
  }
}
