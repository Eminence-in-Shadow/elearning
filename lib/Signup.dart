import 'package:elearning/Authentication.dart';
import 'package:elearning/Sign_in.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  Authentication authentication=new Authentication();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Container(
        child: Center(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text("Sign in",
                  style: TextStyle(
                      color: Colors.white,fontSize: 20.0,fontWeight:FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white
                    ),
                    onPressed: ()async{
                      await authentication.googleSignIn();
                    },
                    icon: Icon(EvaIcons.google),
                    label: Text("Sign in with google")
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white
                    ),
                    onPressed: (){
                      print("Google Sign in");
                    },
                    icon: Icon(EvaIcons.facebook),
                    label: Text("Sign in with facebook")
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white
                    ),
                    onPressed: (){
                      print("Google Sign in");
                    },
                    icon: Icon(FontAwesomeIcons.apple),
                    label: Text("Sign in with apple")
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have account? ",style: TextStyle(color: Colors.white),
                  ),
                  MaterialButton(
                    onPressed: (){
                      Navigator.pushReplacement(context,PageTransition(child: SignIn(), type:PageTransitionType.bottomToTop));
                    },child: Text("Log in",style: TextStyle(color: Colors.white),),)
                ],
              )
            ],
          ) ,),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/backg.jpg"
                ),fit: BoxFit.cover,colorFilter: ColorFilter.mode((Colors.black54), BlendMode.darken)
            )
        ),
      ),
    );
  }
}
