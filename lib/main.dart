import 'package:flutter/material.dart';
import 'package:personal_library/core/di/get_it.dart';
import 'package:personal_library/main_setups/setup_material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const SetupMaterial());
}
