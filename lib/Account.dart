import 'package:elearning/Authentication.dart';
import 'package:elearning/LandingPage.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  Authentication authentication=Authentication();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (){
                print("Basket");},
              icon:Icon(EvaIcons.shoppingCart,color: Colors.white,))
        ],
        backgroundColor: Colors.black,
        title: Text("Account",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Kartik Sethi",style: TextStyle(color: Colors.white,fontSize: 24.0),),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(EvaIcons.google,color: Colors.white,),
                          Text(" kartiksethi003@gmail.com",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: MaterialButton(onPressed: (){},
                        child: Text("Become an instructor",
                          style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold),),),
                    )
                  ],
                ),
              SizedBox(
                height: 100,
              ),
              Text("Video preference",
              style: TextStyle(
                color:Colors.grey,fontSize: 14.0
              ),),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,),
                title: Text("Download options",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,),
                title: Text("video Playback options",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
              Text("Account Settings",
                style: TextStyle(
                    color:Colors.grey,fontSize: 14.0
                ),),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,),
                title: Text("Account Security",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,),
                title: Text("Email Notification Preferences",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,),
                title: Row(
                  children: [
                    Text("Learning Reminders ",style: TextStyle(color: Colors.white,fontSize: 18),
                    ),
                    Icon(Icons.new_releases,color: Colors.white,),
                  ],
                ),
              ),
              Text("Support",
                style: TextStyle(
                    color:Colors.grey,fontSize: 14.0
                ),),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,),
                title: Text("About Learner",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,),
                title: Text("About Learner for business",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,),
                title: Text("FAQs",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,),
                title: Text("Share the Learner app",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
              Text("Diagonostics",
                style: TextStyle(
                    color:Colors.grey,fontSize: 14.0
                ),),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,),
                title: Text("Status",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
              Center(
                child: MaterialButton(onPressed: ()async{
                  await authentication.googleSignOut().whenComplete(() =>
                      Navigator.pushReplacement(context, PageTransition(child: LandingPage(),
                          type: PageTransitionType.bottomToTop)));
                },
                  child: Text("Sign out",style: TextStyle(
                    color: Colors.lightBlue
                  ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Center(
                  child: Text("Learner",style: TextStyle(color: Colors.grey,fontSize: 14.0),),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
