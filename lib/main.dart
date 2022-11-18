import 'package:chat_app_ui/config/theme.dart';
import 'package:chat_app_ui/screens/chat_screen.dart';
import 'package:chat_app_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App UI',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      home: const HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/chat', page: () => const ChatScreen()),
      ],
    );
  }
}
