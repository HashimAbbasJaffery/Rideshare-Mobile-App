import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/widgets/onBoardScreens/CustomBanner.dart';

class Onboard extends StatefulWidget {

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  Map<int, Map<String, String>> banners = {
    0: {
      "image": "lib/assets/images/first_step.png",
      "heading": "Anywhere you are",
      "text": "Sell houses easily with the help of Listenoryx and to make this line big I am writing more."
    },
    1: {
      "image": "lib/assets/images/second.png",
      "heading": "At anytime",
      "text": "Sell houses easily with the help of Listenoryx and to make this line big I am writing more."
    },
    2: {
      "image": "lib/assets/images/third.png",
      "heading": "Book your car",
      "text": "Sell houses easily with the help of Listenoryx and to make this line big I am writing more."
    },
  };
  late int total;
  int current_slide = 0;
  void initState() {
    setState(() {
      total = 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    var progress = (current_slide + 1) / 3;
    print(progress);
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomBanner(
              image: banners[current_slide]!["image"] ?? "null",
              heading: banners[current_slide]!["heading"] ?? "null",
              text: banners[current_slide]!["text"] ?? "null"
          ),

          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 60,
                height: 60,
                child: CircularProgressIndicator(
                  value: progress,
                  backgroundColor: Color(0xFFB9E5D1),
                  color: Color(0xFF08B783),
                ),
              ),
              SizedBox(
                width: 50,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: Color(0xFF08B783)
                    ),
                    onPressed: () => {
                      setState(() {
                        if(current_slide < total) {
                          current_slide++;
                        }
                      })
                    },
                    child: progress < 1 ? Icon(Icons.arrow_forward) : Text("Go")
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}