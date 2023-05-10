import 'package:doozy_retailer/common/designs.dart';
import 'package:doozy_retailer/login.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:doozy_retailer/globalvar.dart' as globals;
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
class CreateProfile extends StatefulWidget {
  const CreateProfile({Key? key}) : super(key: key);

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(30, 100, 20, 0),
        //margin: EdgeInsets.fromLTRB(30, 100, 20, 0),
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
                  "Create Profile",
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
                  "Enter The Your Shop Details Below",
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.left,
                )),
            SizedBox(
              height: 60,
            ),
            Align(alignment:Alignment.centerLeft, child: Text("Enter Shop Name",textAlign: TextAlign.left,)),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              decoration: Designs().textInputDecoration()
            ),
            SizedBox(
              height: 20,
            ),
            Align(alignment:Alignment.centerLeft, child: Text("Enter Owner Name",textAlign: TextAlign.left,)),
            SizedBox(
              height: 5,
            ),
            TextFormField(
                decoration: Designs().textInputDecoration()
            ),
            SizedBox(
              height: 20,
            ),
            Align(alignment:Alignment.centerLeft, child: Text("Enter Shop Address",textAlign: TextAlign.left,)),
            SizedBox(
              height: 5,
            ),
            TextFormField(
                decoration: Designs().textInputDecoration()
            ),
            SizedBox(
              height: 20,
            ),
            Align(alignment:Alignment.centerLeft, child: Text("Whatsapp Number",textAlign: TextAlign.left,)),
            SizedBox(
              height: 5,
            ),
            TextFormField(
                decoration: Designs().textInputDecoration()
            ),
            SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                InkWell(
                  child: Text("I'll Do It Later",style: GoogleFonts.roboto(
                fontSize: 18, fontWeight: FontWeight.w400),),
                ),

                ElevatedButton(
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(80, 40)),
                      backgroundColor:
                      MaterialStateProperty.all(HexColor(globals.color_pink))),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text(
                      'Next Page',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    // Navigator.pop(context);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Otpview()),
                    // );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
