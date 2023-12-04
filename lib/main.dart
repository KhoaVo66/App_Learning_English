import 'package:app_learning/components/achievement_screen.dart';
import 'package:app_learning/components/language_detail.dart';
import 'package:app_learning/components/nav_screen.dart';
import 'package:app_learning/components/privacy.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'components/disconnection_screen.dart';
import 'components/profile_screen.dart';
import 'components/setting_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: StreamBuilder(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, AsyncSnapshot<ConnectivityResult> snapshot){
            // print(snapshot.toString());
            if (snapshot.hasData){
              ConnectivityResult? result = snapshot.data;
              if (result == ConnectivityResult.none){
                return const DisConnection();
              }else {
                return const NavScreen();
              }
            }
            return const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            );
          }
      ),
      routes: {
        '/languagedetail': (context) => const LanguageDetail(),
        '/achievement': (context) => const AchievementScreen(),
        '/privacy': (context) => const PrivacyScreen(),
        '/navscreen': (context) => const NavScreen(),
        '/profile': (context) => const ProfilePage(),
        '/setting': (context) => const SettingScreen(),
      },
    );
  }
}
