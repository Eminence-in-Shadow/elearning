import 'package:elearning/Featured.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'model.dart';
class DetailedScreen extends StatefulWidget {
  final Content content;
  const DetailedScreen({Key? key, required this.content}) : super(key: key);

  @override
  State<DetailedScreen> createState() => _DetailedScreenState(content);
}

class _DetailedScreenState extends State<DetailedScreen> {
  final Content content;
  _DetailedScreenState(this.content);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(EvaIcons.share,color: Colors.white,)
          ),
          IconButton(onPressed: (){},
              icon: Icon(EvaIcons.shoppingBagOutline,color: Colors.white,)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              content.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold
            ),),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(content.DetailedDescription,style: TextStyle(
                color: Colors.white,fontSize: 18.0,
                fontWeight: FontWeight.bold
              ),),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border:Border.all(color: Colors.white)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Icon(Icons.star,color: Colors.white,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(content.enrolled,
                            style: TextStyle(color: Colors.white),),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
