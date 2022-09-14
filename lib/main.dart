import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_proferences_3/pages/home_page.dart';
import 'package:shared_proferences_3/pages/sign_up.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox('pdp_online');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  HomePage(),
      routes: {
        HomePage.id:(context) => HomePage(),
        SignPage.id:(context) => SignPage()
      },
    );
  }
}


