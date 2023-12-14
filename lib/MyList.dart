import 'package:flutter/material.dart';
class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("My List",
        style: TextStyle(
          color: Colors.white,

        ),),
      ),
      body: Container(

      ),
    );
  }
}
