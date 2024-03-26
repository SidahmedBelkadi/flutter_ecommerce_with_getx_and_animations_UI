import 'package:ecommmerce/app.dart';
import 'package:ecommmerce/utils/core/services/init.service.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // --- Initialize The crucial services of the app
  await initialServices();
  runApp(const App());
}
