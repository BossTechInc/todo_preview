
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class AddTask extends StatefulWidget {

  @override
  _AddTaskState createState() => _AddTaskState();

}

class _AddTaskState extends State<AddTask> {
  List<String> weekdays = ['Monday', 'Tuesday', 'Wednesday','Thursday', 'Friday', 'Saturday', 'Sunday' ];
  String dateFormat = DateFormat('EEEE').format(DateTime.now());
  bool switcase = false;
  List<int>hours = [1,2,3,4,5];
  List<int>minute =[];
  List<int> minutes(){
    for(int i = 0; i <=59; i++){
      minute.add(i);
    }
    return minute;
  }





  @override
  Widget build(BuildContext context) {
     int findPosition() {
      for (int i = 0; i < weekdays.length; i++) {
        if (dateFormat == weekdays[i]) {
          return i;
        }
        return 0;
      }
      return 0;
    }
  minutes();

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
    ),hr
    ),
          title: Text('Add Task', style: TextStyle(color: Colors.white, fontFamily: 'PoppinsSemiBold', fontSize: 25),),
          centerTitle: true,

        ),
        body: ListView(
        children: [
        Padding(
          padding: const EdgeInsets.only(top:30.0, bottom: 10),
          child: Form(
          child: Column(
          children: [
              Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 14,bottom: 14),
      child :TextFormField(
          keyboardType: TextInputType.text,
          style: TextStyle(
              fontSize: 15.0, color: Colors.white,fontFamily: "PoppinsRegular"),
          decoration: InputDecoration(
            hintText: 'Title',
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
    padding: const EdgeInsets.only(top:30.0, bottom: 10),
    child: Form(
    child: Column(
    children: [
    Padding(
    padding: const EdgeInsets.only(left: 14.0, right: 14,bottom: 14),
    child :TextFormField(
    keyboardType: TextInputType.multiline,
        // minLines: 1,
        maxLines: 5,
    style: TextStyle(
    fontSize: 15.0, color: Colors.white,fontFamily: "PoppinsRegular"),
    decoration: InputDecoration(
    hintText: 'Description',
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
        padding: const EdgeInsets.only(top: 50.0, bottom: 8),
        child: Text('Day assigned', style: TextStyle(color: Colors.white, fontFamily: "PoppinsRegular", fontSize: 20),),
      ),
      Container(
       height:200 ,
      child:CupertinoPicker(
          // scrollController: FixedExtentScrollController(initialItem: findPosition()),
        // looping: true,

        diameterRatio: 1,
        selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
          background: Color(0xff454963).withOpacity(0.4)
        ),
        onSelectedItemChanged: (value) {setState(() {
          value = value;
          print(value);
        });  },
        itemExtent: 40,
        children: [ for (String name in weekdays) Text( name,style: TextStyle(color:  Color(0xffFF8582), fontFamily: "PoppinsRegular")),]

      )

  ),
      SizedBox(
        height: 30,
      ),
      Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text('Timer', style: TextStyle(color: Colors.white,fontSize: 20, fontFamily: "PoppinsRegular"),
          ),
            CupertinoSwitch(
              value: switcase,
              onChanged: (bool value){
                setState(() {
                  switcase = value;
                });
                print (value);
              },
              activeColor:  Color(0xffFF8582),
            )
        ],
      ),

      ),
      Padding(
        padding: const EdgeInsets.only(top: 50.0, bottom: 8),
        child: Text('Set the time required for the task', style: TextStyle(color: Colors.white, fontFamily: "PoppinsRegular", fontSize: 20),),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 50.0, bottom: 8),
        child: Text('Hours', style: TextStyle(color: Colors.white, fontFamily: "PoppinsRegular", fontSize: 20),),
      ),
      Container(
          height:200 ,
          child:CupertinoPicker(
            // scrollController: FixedExtentScrollController(initialItem: findPosition()),
            // looping: true,

              diameterRatio: 1,
              selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
                  background: Color(0xff454963).withOpacity(0.4)
              ),
              onSelectedItemChanged: (value) {setState(() {
                value = value;
                print(value);
              });  },
              itemExtent: 40,
              children: [ for (int name in hours) Text( name.toString(),style: TextStyle(color:  Color(0xffFF8582), fontFamily: "PoppinsRegular")),]

          ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 8),
        child: Text('Minutes', style: TextStyle(color: Colors.white, fontFamily: "PoppinsRegular", fontSize: 20),),
      ),
      Container(
        height:200 ,
        child:CupertinoPicker(
          // scrollController: FixedExtentScrollController(initialItem: findPosition()),
          // looping: true,

            diameterRatio: 1,
            selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
                background: Color(0xff454963).withOpacity(0.4)
            ),
            onSelectedItemChanged: (value) {setState(() {
              value = value;
              print(value);
            });  },
            itemExtent: 40,
            children: [ for (int name in minute) Text( name.toString(),style: TextStyle(color:  Color(0xffFF8582), fontFamily: "PoppinsRegular")),]

        ),
      ),
      SizedBox(
        height: 30,
      ),
      Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Break', style: TextStyle(color: Colors.white,fontSize: 20, fontFamily: "PoppinsRegular"),
            ),
            CupertinoSwitch(
              value: switcase,
              onChanged: (bool value){
                setState(() {
                  switcase = value;
                });
                print (value);
              },
              activeColor:  Color(0xffFF8582),
            )
          ],
        ),

      ),
      Padding(
        padding: const EdgeInsets.only(top: 50.0, bottom: 8),
        child: Text('Set the number and duration of breaks', style: TextStyle(color: Colors.white, fontFamily: "PoppinsRegular", fontSize: 20),),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 50.0, bottom: 8),
        child: Text('No. of breaks', style: TextStyle(color: Colors.white, fontFamily: "PoppinsRegular", fontSize: 20),),
      ),
      Container(
        height:200 ,
        child:CupertinoPicker(
          // scrollController: FixedExtentScrollController(initialItem: findPosition()),
          // looping: true,

            diameterRatio: 1,
            selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
                background: Color(0xff454963).withOpacity(0.4)
            ),
            onSelectedItemChanged: (value) {setState(() {
              value = value;
              print(value);
            });  },
            itemExtent: 40,
            children: [ for (int name in hours) Text( name.toString(),style: TextStyle(color:  Color(0xffFF8582), fontFamily: "PoppinsRegular")),]

        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 8),
        child: Text('Breaktime', style: TextStyle(color: Colors.white, fontFamily: "PoppinsRegular", fontSize: 20),),
      ),
      Container(
        height:200 ,
        child:CupertinoPicker(
          // scrollController: FixedExtentScrollController(initialItem: findPosition()),
          // looping: true,

            diameterRatio: 1,
            selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
                background: Color(0xff454963).withOpacity(0.4)
            ),
            onSelectedItemChanged: (value) {setState(() {
              value = value;
              print(value);
            });  },
            itemExtent: 40,
            children: [ for (int name in minute) Text( name.toString(),style: TextStyle(color:  Color(0xffFF8582), fontFamily: "PoppinsRegular")),]

        ),
      ),
    ],
    ),
    ),
        )]
    )
          )
    )]
    )
    );
  }



}
