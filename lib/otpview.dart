import 'package:doozy_retailer/create_profile.dart';
import 'package:doozy_retailer/login.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:doozy_retailer/globalvar.dart' as globals;
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class Otpview extends StatefulWidget {
  const Otpview({Key? key}) : super(key: key);

  @override
  State<Otpview> createState() => _OtpviewState();
}

class _OtpviewState extends State<Otpview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(30, 100, 20, 0),
        child: Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Loginpage()),
                );
              },
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.arrow_back))),
            SizedBox(
              height: 30,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Verify OTP",
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.left,
                )),
            SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter The OTP Sent To 9xxxxx345",
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.left,
                )),
            SizedBox(
              height: 100,
            ),
            Center(
              child: OTPTextField(
                  //controller: otpController2,
                  length: 4,
                  width: 250,
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldWidth: 40,
                  spaceBetween: 2,
                  keyboardType: TextInputType.number,
                  fieldStyle: FieldStyle.box,
                  outlineBorderRadius: 4,
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.w700),
                  onChanged: (pin) {
                    print("Changed: " + pin);
                  },
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  }),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(230, 50)),
                  backgroundColor:
                      MaterialStateProperty.all(HexColor(globals.color_pink))),
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
                  MaterialPageRoute(builder: (context) => CreateProfile()),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.center,
                child: Text(
                  "Didn't Received The Code? Resend",
                  style: GoogleFonts.roboto(
                      fontSize: 12, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.left,
                )),
          ],
        ),
      ),
    );
  }
}
