import 'package:flutter/material.dart';
import 'package:tastyapp/shared/colors.dart';

Widget Button({context, page, text}) {
  return MaterialButton(
    minWidth: 100 ,
    height: 30,
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
    color: defaultColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    child: Text(
      "$text",
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      ),
    ),
  );
}

Widget TesctBox({label, hint}) {
  return TextField(
    decoration: InputDecoration(
      labelText: '$label',
      labelStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: defaultColor,
      ),
      hintText: "$hint",
    ),
  );
}

Widget logo({image}) {
  image:
  DecorationImage(
    image: AssetImage("$image"),
  );
}

