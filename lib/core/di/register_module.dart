import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:telephony/telephony.dart';

final getIt = GetIt.I;

@module
abstract class RegisterModule {
  @preResolve
  @singleton
  Future<Telephony> get prefs async => Telephony.instance;
}
