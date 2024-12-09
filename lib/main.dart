import 'package:e_commerce/pages/pages.dart';
import 'package:e_commerce/pages/ui/widget/widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreenPage(),
      debugShowCheckedModeBanner: false,
      // Cara Buat Routingan
      routes: {
        '/home': (context) => HomePages(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/main': (context) => MainPages(),
        '/detail_chat_page' : (context) => DetailChatPage(),
        '/edit-profile' : (context) => EditProfilePage(),
        '/product-page' : (context) => ProductPage(),
      },
      title: 'Flutter Demo',
    );
  }
}
