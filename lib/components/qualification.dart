import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:timelines/timelines.dart';

class Qualification extends StatefulWidget {
  const Qualification({super.key});

  @override
  State<Qualification> createState() => _QualificationState();
}

class _QualificationState extends State<Qualification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: context.screenWidth < 900 ? context.screenWidth * 0.9 : context.screenWidth * 0.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Education",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          Timeline.tileBuilder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            //theme: TimelineThemeData,
            builder: TimelineTileBuilder.fromStyle(contentsAlign: ContentsAlign.alternating,
              itemCount: 3,
              contentsBuilder: (context, index) {
              return Card(
                color: Colors.deepPurple.shade400,
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Electronics & Communication Engineering",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text("KIET Group of Institutions",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey),
                      ),
                      Text("2017-2021",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
                      )
                    ],
                  ),
                ),
              );
              },
            ),
          ),
        ],
      ),
    );
  }
}
