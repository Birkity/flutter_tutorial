import 'package:flutter/material.dart';
import './widgets/action_toolbar.dart';
import './widgets/bottom_toolbar.dart';
import './widgets/video_description.dart';
import './widgets/top_section.dart';

class Home extends StatelessWidget{
  Widget get topSection =>  TopSection();
  
  Widget get middleSection => Expanded(
    child: Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        VideoDescription(),
        ActionToolbar(),
      ],
      ),);
  Widget get bottomSection => BottomToolbar();
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
