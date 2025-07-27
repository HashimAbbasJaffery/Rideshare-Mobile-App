import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBanner extends StatelessWidget {

  final String image;
  final String heading;
  final String text;
  const CustomBanner({ required this.image, required this.heading, required this.text });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 50,),
          Image.asset(image),
          Container(
              padding: EdgeInsets.only(
                  top: 20
              ),
              child: Column(
                children: [
                  Text(
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF414141)
                      ),
                      heading
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    width: 280,
                    child: Text(
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFA0A0A0)
                        ),
                        text
                    ),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}