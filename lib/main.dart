import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Bg Color Changer",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Backgound Changer"),
        ),
        body: BodyPart(),
      ),
    );
  }
}

class BodyPart extends StatefulWidget {
  @override
   _BodyPartState createState() => _BodyPartState();
}
class _BodyPartState extends State<BodyPart> {
  var colors =[
    Colors.black,
    Colors.white,
    Colors.amber,
    Colors.blue,
    Colors.cyan,
    Colors.grey,
    Colors.orange
  ];
  var changedColor = Colors.white;
  var buttonChangedColor =Colors.black;
  colorchanger(){
    var temp;
    var random =Random().nextInt(colors.length);
    if((random+1)<= colors.length){
      temp = random+1;
    }
    else{
      temp = random;
    }
    setState(() {
      changedColor = colors[random];
      if(colors[temp]== Colors.white){
        buttonChangedColor = Colors.black;
      }
      else{
        buttonChangedColor = colors[temp];
      }
    });
  }
   @override
   Widget build(BuildContext context) {
    return Container(
      color: changedColor,
      child: Center(
        child: RaisedButton(
          color: buttonChangedColor,
          child: Text("Change it",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
          padding: EdgeInsets.fromLTRB(50.0, 12.0, 50.0, 12.0),
          onPressed: colorchanger,
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
      ),  
    );
  }
} 