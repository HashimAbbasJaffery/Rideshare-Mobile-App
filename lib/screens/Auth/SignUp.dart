import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool is_text_obscured = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          SizedBox(height: 40,),
          Text(
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Color(0xFF414141)
              ),
              "Sign in with your email or phone number"
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 50),
            child: Column(
              spacing: 20,
              children: [
                SizedBox(
                  height: 60,
                  child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: BoxBorder.fromBorderSide(
                              BorderSide(
                                  color: Color(0xFFB8B8B8)
                              )
                          )
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 15
                        ),
                        child: TextField(
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Color(0xFFB8B8B8),
                                  fontWeight: FontWeight.w500
                              ),
                              hintText: "Email or Phone Number"
                          ),
                        ),
                      )
                  ),
                ),
                SizedBox(
                    height: 60,
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: BoxBorder.fromBorderSide(
                                BorderSide(
                                    color: Color(0xFFB8B8B8)
                                )
                            )
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  obscureText: is_text_obscured,
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500
                                  ),
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintStyle: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Color(0xFFB8B8B8),
                                          fontWeight: FontWeight.w500
                                      ),
                                      hintText: "Enter Your Password"
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => {
                                  setState(() {
                                    is_text_obscured = !is_text_obscured;
                                  })
                                },
                                child: Icon(
                                    color: Color(0xFF414141),
                                    is_text_obscured ? Icons.visibility_off : Icons.visibility
                                ),
                              )
                            ],
                          ),
                        )
                    )
                ),

                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFF44336)
                      ),
                      "Forget Password?"
                  ),
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}