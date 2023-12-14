import 'dart:async';

import 'package:elearning/LandingPage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
        Duration(seconds: 3),()=>Navigator.pushReplacement(context, PageTransition(
      child:LandingPage(),type:PageTransitionType.rightToLeftWithFade
    ))
    );
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          alignment:Alignment.center ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(textAlign: TextAlign.center,
                  "Learner ",
                  style: TextStyle(
                    fontSize: 100,
                    color: Colors.white,
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: CircularProgressIndicator(
                  color: Colors.red,
                  backgroundColor: Colors.black,
                ),
              ),

            ],
          ),
        ),
    );
  }
}
