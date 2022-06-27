import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/responsive/mobile_screen_layout.dart';
import 'package:instagram_clone/responsive/responsive_layout_screen.dart';
import 'package:instagram_clone/responsive/web_screen_layout.dart';
import 'package:instagram_clone/utils/color.dart';
import 'package:instagram_clone/views/login_screen.dart';
import 'package:instagram_clone/views/sign_up_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDxTzUQaMTZ6LKUUnzQ8RMv3qvc-aePv-c",
          appId: "1:451326187433:web:f9241b92e9fa150b8216b8",
          authDomain: "instagram-tut-1c0ae.firebaseapp.com",
          messagingSenderId: "451326187433",
          projectId: "instagram-tut-1c0ae",
          storageBucket: "instagram-tut-1c0ae.appspot.com"),
    );

  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),

      // home: const ResponsiveLayout(
      //   webScreenLayout: webScreenLayout(),
      //   mobileScreenLayout: MobileScreenLayout(),
      // ),
       home: SignupScreen(),
    );
  }
}
