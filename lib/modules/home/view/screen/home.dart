import 'package:flutter/material.dart';

class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff292B3A),
      appBar:AppBar(
        backgroundColor: Color(0xff292B3A),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu_rounded, color: Color(0xffFF8582
            ), size: 40,),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(
                Icons.notifications_none_rounded,
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
  ) ,
      body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text('View Partner\'s Tasks', style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: "PoppinsRegular"),),
              ),
              Container(
                  width : MediaQuery.of(context).size.width/1.2,
                  height: MediaQuery.of(context).size.height/3.3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey,
              blurRadius: 2,
              offset: Offset(0, 1),
            ),
          ],
            gradient: LinearGradient(colors: [
              Color(0xffFD7B7B),
              Color(0xffE04C4B),
            ]
            ),
          image: DecorationImage(
      image: AssetImage(
      'images/home1.png'),
      alignment: Alignment.bottomLeft,
            scale: 0.9,
        ),

              ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text('TO-DO', style: TextStyle(color: Colors.white, fontFamily: "PoppinsSemiBold", fontSize: 30),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Icon(Icons.arrow_forward_sharp,
                        size: 30,
                        color: Colors.white,),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                width : MediaQuery.of(context).size.width/1.2,
                height: MediaQuery.of(context).size.height/3.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey,
                      blurRadius: 2,
                      offset: Offset(0, 1),
                    ),
                  ],
                  gradient: LinearGradient(colors: [
                    Color(0xffFD7B7B),
                    Color(0xffE04C4B),
                  ]
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                        'images/home2.png'),
                    alignment: Alignment.bottomLeft,
                    scale: 0.9,
                  ),

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text('Timer', style: TextStyle(color: Colors.white, fontFamily: "PoppinsSemiBold", fontSize: 30),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Icon(Icons.arrow_forward_sharp,
                        size: 30,
                        color: Colors.white,),
                    ),
                  ],
                ),
              )
            ]
    ),
        ),
    );

  }
}
