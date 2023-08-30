import 'dart:async';
import 'package:flutter/material.dart';
import 'package:helping_e_hand/ui/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Helping E-Hand',
      theme: ThemeData(colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green[400]),),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    loadData();
  }

  Future<Timer> loadData() async {
    return Timer(const Duration(seconds: 4), onDoneLoading);
  }
  onDoneLoading() async {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Login()
        ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      body: Center(
        child: Column(children: <Widget>[
          const Flexible(child: SizedBox(height: 200),),
          Column(
            children: <Widget>[
              const SizedBox(height: 120,),
              Image.asset(
                'assets/images/Helping.png',
                fit: BoxFit.cover,
                repeat: ImageRepeat.noRepeat,
              )
            ],
          ),
          const Flexible(child: SizedBox(height: 230),),
          const Flexible(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),),),
        ]),),
    );
  }
}


