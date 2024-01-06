import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimationHover extends StatefulWidget {
  const AnimationHover({super.key});

  @override
  State<AnimationHover> createState() => _AnimationHoverState();
}

class _AnimationHoverState extends State<AnimationHover> {

  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: FaIcon(
                FontAwesomeIcons.linkedinIn,
                size: 20.0,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ),
          //SizedBox(height: 12.0,),
          Divider(color: Colors.white,),
          Card(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: FaIcon(
                FontAwesomeIcons.github,
                size: 20.0,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ),
          //SizedBox(width: 12.0,),
          Divider(color: Colors.white,),
          Card(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: FaIcon(
                FontAwesomeIcons.instagram,
                size: 20.0,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ),
          //SizedBox(width: 12.0,),
          Divider(color: Colors.white,),
        ],
      ),
    );
  }
}
