import 'package:freezed_annotation/freezed_annotation.dart';
part 'Main_Failure.freezed.dart';
@freezed
class MainFailure with _$MainFailure{
  const factory MainFailure.ClientFailure() = _MainFailure;
  const factory MainFailure.serverfailures() = _serverfailure;
  
}