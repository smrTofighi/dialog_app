import 'package:chat_app/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //? --------------------------

      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      //? --------------------------

      supportedLocales: const [
        Locale('fa', 'IR'), // Farsi, Iran
      ],
      //? --------------------------

      locale: const Locale('fa', 'IR'),

      home: MainPage(),
    );
  }
}
