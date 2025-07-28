import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/screens/Auth/SignUp.dart';
import 'package:untitled/widgets/onBoardScreens/CustomBanner.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          CustomBanner(
              image: "lib/assets/images/welcome_screen.png",
              heading: "Welcome",
              text: "Have a better sharing experience"
          ),

          Padding(
            padding: EdgeInsets.only(
              bottom: 100,
              left: 10,
              right: 10
            ),
            child:  Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  spacing: 20,
                  children: [
                    SizedBox(
                      height: 54,
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                            ),
                            backgroundColor: Color(0xff008955),
                          ),
                          onPressed: () => {},
                          child: Text(
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),
                              "Create an account"
                          )
                      ),
                    ),

                    SizedBox(
                      width: double.infinity,
                      height: 54,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          side: BorderSide(
                            color: Color(0xFF008955)
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                        onPressed: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Scaffold(
                                body: SafeArea(
                                    child: SignUp()
                                ),
                              )
                            )
                          )
                        },
                        child: Text(
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF008955)
                          ),
                          "Log in"
                        )
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}