import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_agro/feature/profile/data/datasource/profile_remote_datasource.dart';
import 'package:smart_agro/feature/profile/data/models/response/city_response_model.dart';

part 'city_event.dart';
part 'city_state.dart';
part 'city_bloc.freezed.dart';

class CityBloc extends Bloc<CityEvent, CityState> {
  final ProfileRemoteDatasource profileRemoteDatasource;
  CityBloc(this.profileRemoteDatasource) : super(Initial()) {
    on<_City>((event, emit) async {
      emit(LoadingCity());
      final result = await profileRemoteDatasource.city();
      result.fold((l) => emit(ErrorCity(l)), (r) => emit(CitySuccess(r)));
    });
  }
}
