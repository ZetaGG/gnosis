import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final String url;
  const IconContainer({super.key, required this.url});
  
  @override
  Widget build(BuildContext context) {
  
    return SizedBox(
      width: 150.0,
      height: 150.0,
      child: CircleAvatar(
        radius: 2.0,
      backgroundColor: Colors.transparent,
      backgroundImage: NetworkImage(url),
      ),
      
    );
  }
}