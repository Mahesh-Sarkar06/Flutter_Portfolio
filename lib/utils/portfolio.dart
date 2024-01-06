import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/about.dart';
import '../components/qualification.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {

  bool isMobile = false;
  @override
  Widget build(BuildContext context) {

    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    List<Widget> navItems = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () {}, child: const Text("Home")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () {}, child: const Text("About")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () {}, child: const Text("Skills")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () {}, child: const Text("Projects")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () {}, child: const Text("Portfolio")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () {}, child: const Text("Contact")),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mahesh Chandra Sarkar"),
        actions: isMobile ? null : navItems,
      ),
      drawer: isMobile ?
      Drawer(
        child: ListView(
          children: navItems,
        ),
      ) : null,
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  About(),
                  SizedBox(height: 12.0,),
                  Qualification(),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
