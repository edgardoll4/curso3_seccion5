import 'package:curso3_seccion5/config/theme/app_theme.dart';
import 'package:curso3_seccion5/presentation/chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        theme: AppTheme(selectColor: 2).theme(),
        home: ChatScreen());
  }
}
