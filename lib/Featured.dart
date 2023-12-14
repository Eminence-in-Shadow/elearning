import 'package:elearning/DetailedScreen.dart';
import 'package:elearning/MyList.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

import 'model.dart';
class Featured extends StatefulWidget {
  final List<Content> contentList;
  final List<Content> contentList2;
  const Featured({Key? key, required this.contentList, required this.contentList2}) : super(key: key);

  @override
  State<Featured> createState() => _FeaturedState(contentList,contentList2);
}

class _FeaturedState extends State<Featured> {
  final List<Content> contentList;
  final List<Content> contentList2;

  _FeaturedState(this.contentList, this.contentList2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (){
                Navigator.pushReplacement(context,
                    MaterialPageRoute(
                        builder:(context) => MyList()));
                },
              icon:Icon(EvaIcons.shoppingCart,color: Colors.white,))
        ],
        backgroundColor: Colors.black,
        title: Text("Featured",style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/banner.jpg")
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: MediaQuery.sizeOf(context).width,
                color: Colors.blueAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Courses now on sale",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),),
                    Text("1 Day Left",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 22
                    ),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Featured",
                style:TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),),
            ),
            SizedBox(
              height: 450,
              // width: 400,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: contentList.length,
                itemBuilder: (BuildContext context,int index){
                  final Content content=contentList[index];
                  return GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, PageTransition(
                          child: DetailedScreen(content: contentList[index]),
                          type: PageTransitionType.leftToRightWithFade));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              height:200,
                              width: 200,
                              decoration:BoxDecoration(
                                  image:DecorationImage(
                                      fit:BoxFit.fitWidth,
                                      image: AssetImage(
                                        content.image
                                      ),
                                  ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              constraints: BoxConstraints(maxWidth: 200),
                              child: Text(
                                content.title,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                            content.author,
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(EvaIcons.star,color: Colors.yellowAccent,),
                              Icon(EvaIcons.star,color: Colors.yellowAccent,),
                              Icon(EvaIcons.star,color: Colors.yellowAccent,),
                              Icon(EvaIcons.star,color: Colors.yellowAccent,),
                              Icon(EvaIcons.star,color: Colors.yellowAccent,),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                content.rating,
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  content.enrolled,
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Row(
                              children: [
                                Icon(FontAwesomeIcons.rupeeSign,
                                  color: Colors.white,),
                                Text(
                                content.price,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Container(
                              decoration: BoxDecoration(
                                // border: BorderRadius.circular(10),
                                color: Colors.yellow,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("BestSeller",
                                  style: TextStyle(
                                      color: Colors.brown,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Top Courses in development",
                style:TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),),
            ),
            SizedBox(
              height: 450,
              // width: 400,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: contentList2.length,
                itemBuilder: (BuildContext context,int index){
                  final Content content=contentList2[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            height:200,
                            width: 200,
                            decoration:BoxDecoration(
                              image:DecorationImage(
                                fit:BoxFit.fitWidth,
                                image: AssetImage(
                                    content.image
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            constraints: BoxConstraints(maxWidth: 200),
                            child: Text(
                              content.title,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            content.author,
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(EvaIcons.star,color: Colors.yellowAccent,),
                            Icon(EvaIcons.star,color: Colors.yellowAccent,),
                            Icon(EvaIcons.star,color: Colors.yellowAccent,),
                            Icon(EvaIcons.star,color: Colors.yellowAccent,),
                            Icon(EvaIcons.star,color: Colors.yellowAccent,),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text(
                                content.rating,
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text(
                                content.enrolled,
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Row(
                            children: [
                              Icon(FontAwesomeIcons.rupeeSign,
                                color: Colors.white,),
                              Text(
                                content.price,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
