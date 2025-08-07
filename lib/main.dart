import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializa o Firebase
  await Firebase.initializeApp();

  // Captura erros do Flutter
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  // Captura erros fora da árvore de widgets
  runZonedGuarded(() {
    runApp(const App());
  }, FirebaseCrashlytics.instance.recordError);
}
