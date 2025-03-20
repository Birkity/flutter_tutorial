import 'package:flutter/material.dart';

class TopSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: EdgeInsets.only(bottom: 15.0),
      alignment: Alignment(0.0, 1.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
        Text('Following', style: TextStyle(color: Colors.white),),
        Container(width: 15.0,),
        Text('For You' ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.white),)
      ],),
    );
   
  }
}