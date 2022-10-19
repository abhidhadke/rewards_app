import 'package:flutter/material.dart';
import 'package:rewards/pages/home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Main(),
      '/home' : (context) => Home(),
    }
  ));
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main>  {


  void Homepage() async {
    Future.delayed(Duration(milliseconds: 1500), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }





  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Homepage();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: SpinKitSquareCircle(
          color: Colors.white70,
          size: 80.0
        ),
      ),
    );
  }
}
