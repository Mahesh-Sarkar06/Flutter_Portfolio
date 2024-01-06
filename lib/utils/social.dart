import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        FaIcon(
          FontAwesomeIcons.facebook,
          size: 20,
          color: Colors.deepPurpleAccent,
        ),
        FaIcon(
          FontAwesomeIcons.twitter,
          size: 20,
          color: Colors.deepPurpleAccent,
        ),
      ],
    );
  }
}
