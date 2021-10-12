import 'package:flutter/material.dart';

class Signin extends StatefulWidget {

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff292B3A),
      body:  Stack(
        children: [
          SafeArea(child: Align(alignment: Alignment.topRight,
              child: Image.asset("images/topdesign.png"))),
          SafeArea(child: Align(alignment: Alignment.bottomLeft,
              child: Image.asset("images/bottomdesign.png"))),
          Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Sign in',
          style: TextStyle(fontSize: 26, color: Colors.white,fontFamily: "PoppinsSemiBold"),
          ),

          SizedBox(
            height: 30,
          ),

          Form(
          child: Column(
          children: [
          Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 14,bottom: 14),
            child :TextFormField(
            keyboardType: TextInputType.name,
            style: TextStyle(
            fontSize: 15.0, color: Colors.white,fontFamily: "PoppinsRegular"),
            decoration: InputDecoration(
    hintText: 'Username',
    hintStyle: TextStyle(
    color: Colors.white70,
    ),
    filled: true,
    fillColor: Color(0xff454963),
    contentPadding: const EdgeInsets.only(
    left: 14.0, bottom: 6.0, top: 8.0),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(
    width: 0,
    style: BorderStyle.none,
    ),
    ),
    ),


    ),
    ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child :TextFormField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                    fontSize: 15.0, color: Colors.white,fontFamily: "PoppinsRegular"),
                decoration: InputDecoration(
                  hintText: 'Phone number',
                  hintStyle: TextStyle(
                    color: Colors.white70,
                  ),
                  filled: true,
                  fillColor: Color(0xff454963),
                  contentPadding: const EdgeInsets.only(
                      left: 14.0, bottom: 6.0, top: 8.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),


              ),
            ),
    ]
          ),
    ),

            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: FloatingActionButton(
                  onPressed: () async {


                  },
                  child: Icon(Icons.arrow_forward_sharp,
                    color: Colors.white,),
                  backgroundColor: Color(0xffDC5354),

                ),
              ),
            ),

          ],
    ),
    ),
        ],
      ),
    );

  }
}
