import 'package:injectable/injectable.dart';
import 'package:personal_library/core/di/register_module.dart';
import 'package:personal_library/core/di/get_it.config.dart';

@InjectableInit()
void configureDependencies() => getIt.init();
