import 'package:flutter/material.dart';
import 'package:stuadvisors/Designer.dart';
import 'package:stuadvisors/message.dart';
import 'package:stuadvisors/second.dart';
import 'package:stuadvisors/third.dart';

import 'Git.dart';
import 'Profile.dart';
import 'first.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'first',
      routes: {
        'first': (context) => const FirstPage(),
        'second':(context)=> const SecondPage(),
        'third':(context)=> const HomePage(),
        'Designer':(context)=> const DesignerPage(),
        'Profile':(context)=> const ProfilePage(),
        'Git':(context)=> const GitPage(),
        'Message':(context)=> const MessagePage(),


      },

    );
  }
}