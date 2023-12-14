import 'package:elearning/Sign_in.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   centerTitle: true,
      //   title: Text("Landing Page"),
      // ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/backg.jpg"),
              fit: BoxFit.fitHeight,
            ),
        )
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
                onPressed: (){
              print("Pressed");
            },
            child: Text("Browse",
              style: TextStyle(
                color: Colors.grey.shade300,
                fontSize: 20.0
              ),
            ),
            ),
            MaterialButton(
              onPressed: (){
                Navigator.pushReplacement(context, PageTransition(
                    child: SignIn(),
                    type: PageTransitionType.bottomToTop
                ));
              },
              child: Text("Sign in",
                style: TextStyle(
                    color: Colors.grey.shade300,
                    fontSize: 20.0
                ),),)
          ],
        ),
      ),
    );
  }
}
