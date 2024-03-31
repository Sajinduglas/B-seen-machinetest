import 'package:b_seen_machinetest/day_3_ui/view/widgets/card_widgets.dart';
import 'package:b_seen_machinetest/day_3_ui/view/widgets/carousel_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ArabicAiHomeScreen extends StatefulWidget {
  const ArabicAiHomeScreen({super.key});

  @override
  State<ArabicAiHomeScreen> createState() => _ArabicAiHomeScreenState();
}

class _ArabicAiHomeScreenState extends State<ArabicAiHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 100,
          backgroundColor: Colors.black,
          leading: Icon(
            Icons.horizontal_split_rounded,
            color: Colors.white54,
          ),
          centerTitle: true,
          title: Container(
            width: 200,
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            height: 40,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 1.8,
                color: Colors.blue,

                // Set border color to transparent
              ),
            ),
            child: Text(
              "Manage plans",
              selectionColor: Colors.white,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white70,
              ),
            ),
          ),
          actions: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black,
              child: Image.asset("assets/images/uk flag.jpg"),
            ),
            SizedBox(
              width: 25,
            ),
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 18,
              child: Icon(
                Icons.person,
                size: 35,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselWithIconsAndDots(),
              ListTile(
                title: Text(
                  "Categories",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              CustomCard(
                firstText: 'ARABY GPT',
                secondText: 'Your personalised Ai assiastant',
                imageUrl: "assets/images/aiimage.jpg",
                borderColor: Colors.tealAccent,
                secondBorderColor: Colors.blue,
              ),
              CustomCard(
                firstText: 'Writer section',
                secondText: 'Enhance your writeing process',
                // imageUrl: "assets/images/uk flag.jpg",

                borderColor: Colors.tealAccent,
                secondBorderColor: Colors.blue,
                iconData: CupertinoIcons.pencil,
              ),
              CustomCard(
                firstText: 'Media section',
                secondText: 'Bring your ideas to life ',
                // imageUrl: "assets/images/uk flag.jpg",
                iconData: Icons.image,
                borderColor: Colors.tealAccent,
                secondBorderColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
