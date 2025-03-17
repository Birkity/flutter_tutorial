import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  Widget get topSection =>  Container(
            height: 100.0,
            color: Colors.yellow[300],
            );
  
  Widget get videoDescription => Expanded(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(height: 10.0, color: Colors.green[300], margin: EdgeInsets.only(top:10),),
        Container(height: 10.0, color: Colors.green[300], margin: EdgeInsets.only(top:10),),
        Container(height: 10.0, color: Colors.green[300], margin: EdgeInsets.only(top:10),),

      ],
    ),);

  Widget get actionToolbar => Container(
                width: 100.0,
                color: Colors.red[300],
              );
  Widget get middleSection => Expanded(
    child: Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        videoDescription,
        actionToolbar,
      ],
      ),);
  Widget get bottomSection => Container(
            height: 100.0,
            color: Colors.blue[300],
            );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children:[
          topSection,
          middleSection,
          bottomSection,
            
          ],
        )
      ),
    );
    }
  }
