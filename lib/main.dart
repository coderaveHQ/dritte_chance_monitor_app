import 'package:flutter/material.dart';

import 'package:window_manager/window_manager.dart';

import 'package:dritte_chance_monitor_app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await windowManager.ensureInitialized();
  await WindowManager.instance.setFullScreen(true);

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App()
    )
  );
}