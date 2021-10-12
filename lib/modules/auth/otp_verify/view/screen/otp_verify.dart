import 'package:flutter/material.dart';
class OtpVerify extends StatefulWidget {
  @override
  _OtpVerifyState createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff292B3A),
      body:  Stack(
        children: [
          SafeArea(child: Align(alignment: Alignment.topLeft,
              child: Image.asset("images/topdesign2.png"))),
          SafeArea(child: Align(alignment: Alignment.bottomRight,
              child: Image.asset("images/bottomdesign2.png"))),
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
                Text('Verify OTP',
                  style: TextStyle(fontSize: 26, color: Colors.white,fontFamily: "PoppinsSemiBold"),
                ),

                SizedBox(
                  height: 30,
                ),

                Form(
                  child: Column(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child :TextFormField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                                fontSize: 15.0, color: Colors.white,fontFamily: "PoppinsRegular"),
                            decoration: InputDecoration(
                              hintText: 'otp number',
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

                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          
                        },

                        child: Container(
                          width: 120,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffF97575),
                            ),
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: Center(child: Text('Resend otp', style:TextStyle(color: Color(0xffF97575),fontFamily: "PoppinsRegular" ) ,)),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
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
          ),
        ],
      ),
    );
  }
}

