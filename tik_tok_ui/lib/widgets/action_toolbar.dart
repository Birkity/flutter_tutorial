import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
      padding: EdgeInsets.only(right: 10.0),
      color: Colors.black,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _getFollowAction(pictureUrl: "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7"),
          _getSocialAction(title: '3.2m', icon: Icons.heart_broken),
          _getSocialAction(title: '16.4k', icon: Icons.chat_bubble),
          _getSocialAction(title: 'Share', icon: Icons.reply),
          _getMusicPlayerAction(),
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
      margin: EdgeInsets.only(top: 10.0),
      width: ActionWidgetSize,
      height: ActionWidgetSize,
      child: Column(
        children: [
          Icon(icon, size: isShare ? 25.0 : ActionIconSize, color: Colors.grey[300],),
          Padding(
            padding: EdgeInsets.only(top: isShare? 5.0: 2.0), 
            child: 
            Text(title, style: TextStyle(fontSize: isShare? 12 : 10.0, color: Colors.white),),),
        ],
      ),
    );

  }

  Widget _getFollowAction({
    required String pictureUrl

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

  Widget _getPlusIcon() {
   return Positioned(
        bottom: 0,
        left: ((ActionWidgetSize / 2) - (PlusIconSize / 2)),
        child: Container(
          width: PlusIconSize,  
          height: PlusIconSize, 
          decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 43, 84),
          borderRadius: BorderRadius.circular(15.0)
          ),
          child: Icon(Icons.add, color: Colors.white, size: 20.0, )),);
 }

  Widget _getProfilePicture() {
   return Positioned(
     left: (ActionWidgetSize / 2) - (ProfileImageSize / 2),
     child: Container(
        padding: EdgeInsets.all(1.0), 
        height: ProfileImageSize, 
        width: ProfileImageSize,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(ProfileImageSize / 2)
        ),
        child: CachedNetworkImage(
          imageUrl: "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7",
          placeholder: (context, url) => new CircularProgressIndicator(),
          errorWidget: (context, url, error) => new Icon(Icons.error),
      ),
      ));
 }

 LinearGradient get musicGradient => LinearGradient(
        colors: [
          Colors.grey.shade800,
          Colors.grey.shade900,
          Colors.grey.shade900,
          Colors.grey.shade800
        ],
        stops: [0.0,0.4, 0.6,1.0],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight
      );

  Widget _getMusicPlayerAction() {
   return Container(
        margin: EdgeInsets.only(top: 10.0),
        width: ActionWidgetSize, 
        height: ActionWidgetSize,
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(11.0),
            height: ProfileImageSize, 
            width: ProfileImageSize,
            decoration: BoxDecoration(
              gradient: musicGradient,
              borderRadius: BorderRadius.circular(ProfileImageSize / 2)
            ),
            child: CachedNetworkImage(
              imageUrl: "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7",
              placeholder: (context, url) => new CircularProgressIndicator(),
              errorWidget: (context, url, error) => new Icon(Icons.error),
          ),
          ),
          
          ]));
  }
}