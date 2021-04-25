import 'package:flutter/material.dart';
import 'package:tastyapp/componentes/componentes.dart';
import 'sign_up.dart';
import 'package:tastyapp/shared/colors.dart';
import 'package:tastyapp/screens/favorites.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[


              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/icon2.png"),
                  ),
                ),
              ),

              Column(
                children: <Widget>[
                  MaterialButton(
                     minWidth: double.infinity,
                     height: 45,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Favorites()));
                    },
                     color: defaultColor,
                     shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                     ),
                    child: Text(
                      "LOGIN",
                       style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.w600,
                       fontSize: 18,
                       ),
                     ),
                   ),
                  Button(
                    context: context ,
                    page: SignUpPage(),
                    text: 'Login',
                  ),
                  SizedBox(height: 30),
                   MaterialButton(
                     minWidth: double.infinity,
                     height: 45,
                     onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Favorites()));

                     },
                     color: defaultColor,
                     shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                     ),
                    child: Text(
                      "SIGNUP",
                     style: TextStyle(
                       color: Colors.white,
                         fontWeight: FontWeight.w600,
                         fontSize: 18,
                      ),
                     ),

                   ),
                  //Button(
                   // context: context ,
                    //page: SignUpPage(),
                   // text: 'SignUp',
                 // ),

                ],
              ),

            ],
          ),

        ),
      ),
    );
  }
}