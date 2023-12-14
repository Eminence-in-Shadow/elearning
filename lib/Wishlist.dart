import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'MyList.dart';
class Wishlist extends StatefulWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("WishList",
        style: TextStyle(
          color: Colors.white
        ),),
        actions: [
          IconButton(
              onPressed: (){
                Navigator.pushReplacement(context,PageTransition(child: MyList(), type: PageTransitionType.leftToRightWithFade));
              },
              icon: const Icon(EvaIcons.shoppingBagOutline,color: Colors.white,))
        ],
      ),
      body: SingleChildScrollView(
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
                  CircleAvatar(
                  backgroundColor: Colors.red,radius: 40.0,
                  child: Icon(EvaIcons.shakeOutline,color: Colors.white,),),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text('Want to save something for later?',style: TextStyle(
                        color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(" Your wishlist shall go here",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(height: 100,),
              Text("Browse Categories",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
                ),),
              ListTile(
                leading: Icon(EvaIcons.browserOutline,color: Colors.grey.shade500,),
                title: const Text('Finance and accounting',style: TextStyle(
                    color: Colors.blueGrey,fontSize: 16.0
                ),),
              ),
              ListTile(
                leading: Icon(EvaIcons.browserOutline,color: Colors.grey.shade500,),
                title: const Text('Development',style: TextStyle(
                    color: Colors.blueGrey,fontSize: 16.0
                ),),
              ),
              ListTile(
                leading: Icon(EvaIcons.browserOutline,color: Colors.grey.shade500,),
                title: const Text('Business',style: TextStyle(
                    color: Colors.blueGrey,fontSize: 16.0
                ),),
              ),
              ListTile(
                leading: Icon(EvaIcons.browserOutline,color: Colors.grey.shade500,),
                title: const Text('IT & Software',style: TextStyle(
                    color: Colors.blueGrey,fontSize: 16.0
                ),),
              ),
              ListTile(
                leading: Icon(EvaIcons.browserOutline,color: Colors.grey.shade500,),
                title: const Text('Finance and accounting',style: TextStyle(
                    color: Colors.blueGrey,fontSize: 16.0
                ),),
              ),
              ListTile(
                leading: Icon(EvaIcons.browserOutline,color: Colors.grey.shade500,),
                title: const Text('Finance and accounting',style: TextStyle(
                    color: Colors.blueGrey,fontSize: 16.0
                ),),
              ),
              ListTile(
                leading: Icon(EvaIcons.browserOutline,color: Colors.grey.shade500,),
                title: const Text('Office Productivity',style: TextStyle(
                    color: Colors.blueGrey,fontSize: 16.0
                ),),
              ),
              ListTile(
                leading: Icon(EvaIcons.browserOutline,color: Colors.grey.shade500,),
                title: const Text('Personal Development',style: TextStyle(
                    color: Colors.blueGrey,fontSize: 16.0
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
