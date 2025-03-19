import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ActionToolbar extends StatelessWidget{

// Full dimensions of an action
static const double ActionWidgetSize = 60.0;

// The size of the icon showen for Social Actions
static const double ActionIconSize = 35.0;

// The size of the share social icon
static const double ShareActionIconSize = 25.0;

// The size of the profile image in the follow Action
static const double ProfileImageSize = 50.0;

// The size of the plus icon under the profile image in follow action
static const double PlusIconSize = 20.0;


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
    required IconData icon,
    bool isShare = false
    
  }){
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      width: ActionWidgetSize,
      height: ActionWidgetSize,
      child: Column(
        children: [
          Icon(icon, size: isShare ? 25.0 : ActionIconSize, color: Colors.grey[300],),
          Padding(
            padding: EdgeInsets.only(top: 2.0), 
            child: 
            Text(title, style: TextStyle(fontSize: 12.0),),),
        ],
      ),
    );

  }

  Widget _getFollowAction({
    String pictureUrl

  }){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: ActionWidgetSize,
      height: ActionWidgetSize,
      child: Stack( children: [
        _getProfilePicture(),
        _getPlusIcon()
      ],
      ),
    );

  }
}