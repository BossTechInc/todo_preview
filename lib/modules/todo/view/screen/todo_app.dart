import 'package:flutter/material.dart';
class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff292B3A),
      appBar: AppBar(
        backgroundColor: Color(0xff292B3A),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_rounded ,color: Color(0xffFF8582
            ), size: 40,),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(
                Icons.menu_rounded,
                color: Color(0xffFF8582
                ),
                size: 40,
              ),
              onPressed: () {
                // do something
              },
            ),
          )
        ],
        title: Text('Today', style: TextStyle(color: Colors.white, fontFamily: 'PoppinsSemiBold', fontSize: 25),),
        centerTitle: true,

      ),
      body:
      Container(

      ),
     floatingActionButton: FloatingActionButton(
       onPressed: () async {


       },
       child: Icon(Icons.add,
         color: Colors.white,),
       backgroundColor: Color(0xffDC5354),

     ),
    );
  }
}
