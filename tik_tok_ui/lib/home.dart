import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  Widget get topSection =>  Container(
            height: 100.0,
            color: Colors.yellow[300],
            );
  
  Widget get videoDescription => Expanded(child: Container(color: Colors.green[100],));

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
