import 'package:doozy_retailer/otpview.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:doozy_retailer/globalvar.dart' as globals;
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(globals.color_green),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 47, 0, 0),
              child: Row(
                children: [
                  Text(
                    "DO",
                    style: GoogleFonts.puritan(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: HexColor(globals.color_pink),
                    ),
                  ),
                  Text(
                    "OZY",
                    style: GoogleFonts.puritan(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: HexColor(globals.color_black),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Shuru kijiye online grocery bechna Doozy ke sath!",
                        style: GoogleFonts.roboto(
                          color: HexColor(globals.color_pink),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  SizedBox(height: 20,),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Commission",
                        style: GoogleFonts.roboto(
                          color: HexColor(globals.color_black),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      )),

                  SizedBox(height: 20,),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Registration Charges",
                        style: GoogleFonts.roboto(
                          color: HexColor(globals.color_black),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
            ),

            SizedBox(height: 40,),

            Container(
              height: MediaQuery.of(context).size.height - 325,
              width: double.infinity,
              decoration: BoxDecoration(
                    color: HexColor(globals.color_white),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
              ),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Text("Enter 10 Digit Mobile Number",style: GoogleFonts.roboto(
                    color: HexColor(globals.color_black),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                    textAlign: TextAlign.center,),
                  SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "+91",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: HexColor(globals.color_black)),
                            ),
                            TextSpan(text: " "),

                          ],
                        ),
                      ),

                      OTPTextField(
                        length: 10,
                        width: 220,
                        fieldWidth: 20,
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w700
                        ),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        spaceBetween: 2,
                        fieldStyle: FieldStyle.underline,
                        onCompleted: (pin) {
                          print("Completed: " + pin);
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(HexColor(globals.color_pink))
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: Text(
                        'Continue',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Otpview()),
                      );
                    },
                  )

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
