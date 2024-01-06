import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/social.dart';
import 'package:velocity_x/velocity_x.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: context.screenWidth < 900 ? context.screenWidth * 0.9 : context.screenWidth < 1600 ? context.screenWidth * 0.3 : context.screenWidth * 0.2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            children: [
              const Column(
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
              const SizedBox(width: 80.0,),
              Image.asset("assets/images/memoji.PNG", height: 150.0,),
            ],
          ),
          const Text("Hi, I am Mahesh Chandra Sarkar",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 12.0,),
           Wrap(
            alignment: WrapAlignment.center,
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              Chip(
                label: const Text("Developer"),
                labelStyle: const TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w400),
                backgroundColor: Colors.deepPurple.shade400,
                padding: const EdgeInsets.all(8.0),
              ),
              Chip(
                label: const Text("Tester"),
                labelStyle: const TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w400),
                backgroundColor: Colors.deepPurple.shade400,
                padding: const EdgeInsets.all(8.0),
              ),
              Chip(
                label: const Text("Data Engineer"),
                labelStyle: const TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w400),
                backgroundColor: Colors.deepPurple.shade400,
                padding: const EdgeInsets.all(8.0),
              )
            ],
          ),
          const Divider(color: Colors.white,),
          const Text("I am a developer & data analyst and I am looking for a data analyst roles PAN India.",
          textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0,) //color: Colors.black26),
          ),
          //const SocialMedia(),
        ],
      ),
    );
  }
}
