import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class ActionToolbar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      width: 100.0,
      color: Colors.red[300],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _getSocialAction(title: '3.2m', icon: Icons.heart_broken),
          _getSocialAction(title: '16.4k', icon: Icons.chat_bubble),
          _getSocialAction(title: 'Share', icon: Icons.reply)
        ]
      ),
    );
  }

  Widget _getSocialAction({
    required String title,
    required IconData icon
  }){
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      width: 60.0,
      height: 60.0,
      child: Column(
        children: [
          Icon(icon, size: 35.0, color: Colors.grey[300],),
          Padding(
            padding: EdgeInsets.only(top: 2.0), 
            child: 
            Text(title, style: TextStyle(fontSize: 12.0),),),
        ],
      ),
    );

  }
}