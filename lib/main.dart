import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intercom_flutter/intercom_flutter.dart';
import 'package:web_test/app_module.dart';
import 'package:web_test/app_widget.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Intercom.instance.initialize('jgm6ml00');

  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
