
import 'package:flutter/material.dart';
import 'intro_page.dart';
import 'cart.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp() );
}  // This is the theme of your application.
 class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return ChangeNotifierProvider(
       create: (context) => Cart(),
       builder : (context,child) => const MaterialApp(
         debugShowCheckedModeBanner: false,
         home: IntroPage(),
       )


     );
   }
 }
      //
      // Try running your application with "flutter run". You'll see the
      // application has a blue toolbar. Then, without quitting the app, try
      // changing the primarySwatch below to Colors.green and then invoke
      // "hot reload" (press "r" in the console whe

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it lo