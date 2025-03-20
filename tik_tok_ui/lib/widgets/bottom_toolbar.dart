import 'package:flutter/material.dart';

class BottomToolbar extends StatelessWidget{
  static const double NavigationIconSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Icon(Icons.home, color: Colors.white, size: NavigationIconSize),
      Icon(Icons.search,
                    color: Colors.white, size: NavigationIconSize),
                
      Icon(Icons.message,
                    color: Colors.white, size: NavigationIconSize),
      Icon(Icons.person,
                    color: Colors.white, size: NavigationIconSize)
    ],
  );
  }
}