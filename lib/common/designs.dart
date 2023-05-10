import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Designs{
  InputDecoration textInputDecoration([String lableText="", String hintText = ""]){
    return InputDecoration(
      //labelText: lableText,
      hintText: hintText,
      fillColor: Colors.white,
      counterText: "",
      filled: true,
      floatingLabelStyle: TextStyle(color: HexColor("#BD7923")),
      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4), borderSide: BorderSide(color: Colors.grey)),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4), borderSide: BorderSide(color: Colors.grey.shade400)),
      errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4), borderSide: BorderSide(color: Colors.red, width: 2.0)),
      focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4), borderSide: BorderSide(color: Colors.red, width: 2.0)),
    );
  }
}