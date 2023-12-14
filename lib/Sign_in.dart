import 'package:elearning/Authentication.dart';
import 'package:elearning/HomeScreen.dart';
import 'package:elearning/Signup.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}
class _SignInState extends State<SignIn> {
  Authentication authentication=Authentication();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Text("Sign in",
                  style: TextStyle(
                    color: Colors.white,fontSize: 20.0,fontWeight:FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white
                    ),
                    onPressed: ()async{
                      await authentication.googleSignIn().whenComplete(() =>
                          Navigator.pushReplacement(context, PageTransition(child: HomeScreen(),
                              type:PageTransitionType.rightToLeftWithFade
                          )
                          )
                      );
                    },
                    icon: Icon(EvaIcons.email),
                    label: Text("Sign in with email")
                ),
              ),
             Padding(padding: const EdgeInsets.all(15),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 SizedBox(
                   width: 150,
                   child: Divider(color: Colors.white,),
                 ),
                 Text("  or  ",style: TextStyle(color: Colors.white),),
                 SizedBox(
                   width: 150,
                   child: Divider(color: Colors.white,),
                 ),
               ],
             ),),
             Padding(
               padding: const EdgeInsets.only(bottom: 15.0,top: 50),
               child: OutlinedButton.icon(
                 style: OutlinedButton.styleFrom(
                   backgroundColor: Colors.white
                 ),
                   onPressed: ()async{
                     await authentication.googleSignIn().whenComplete(() =>
                         Navigator.pushReplacement(context, PageTransition(child: HomeScreen(),
                             type:PageTransitionType.rightToLeftWithFade
                         )
                         )
                     );
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
                    onPressed: ()async{
                      await authentication.googleSignIn().whenComplete(() =>
                          Navigator.pushReplacement(context, PageTransition(child: HomeScreen(),
                              type:PageTransitionType.rightToLeftWithFade
                          )
                          )
                      );
                    },
                    icon: Icon(EvaIcons.facebook),
                    label: Text("Sign in with facebook")
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white
                    ),
                    onPressed: ()async{
                      await authentication.googleSignIn().whenComplete(() =>
                          Navigator.pushReplacement(context, PageTransition(child: HomeScreen(),
                              type:PageTransitionType.rightToLeftWithFade
                          )
                          )
                      );
                    },
                    icon: Icon(FontAwesomeIcons.apple),
                    label: Text("Sign in with apple")
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New here? ",style: TextStyle(color: Colors.white),
                  ),
                  MaterialButton(
                    onPressed: (){
                      Navigator.pushReplacement(context,PageTransition(child: Signup(), type:PageTransitionType.bottomToTop));
                    },child: Text("Create an account",style: TextStyle(color: Colors.white),),)
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
