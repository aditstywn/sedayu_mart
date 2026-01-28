part of 'city_bloc.dart';

@freezed
class CityState with _$CityState {
  const factory CityState.initial() = Initial;
  const factory CityState.loadingCity() = LoadingCity;
  const factory CityState.citySuccess(CityResponseModel city) = CitySuccess;
  const factory CityState.errorCity(String message) = ErrorCity;
}
