import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import './firebase_options.dart';
import './helpers/theme/app_theme.dart';
import 'helpers/theme/app_notifier.dart';
import 'screens/chat_home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AppTheme.init();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(ChangeNotifierProvider<AppNotifier>(
    create: (context) => AppNotifier(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppNotifier>(
        builder: (BuildContext context, AppNotifier value, Widget? child) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme,
        home: const ChatHomeScreen(),
        builder: (context, child) {
          return Directionality(
            textDirection: AppTheme.textDirection,
            child: child ?? Container(),
          );
        },
      );
    });
  }
}
