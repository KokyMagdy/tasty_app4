import 'package:flutter/material.dart';
import 'package:tastyapp/componentes/componentes.dart';
import 'package:tastyapp/shared/colors.dart';
import 'package:tastyapp/screens/favorites.dart';



class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
      ),
      body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Container(
                child:  Container(
                  height: MediaQuery.of(context).size.height /4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/icon2.png"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    TesctBox(
                      hint: 'Enter email',
                        label: 'email'
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TesctBox(
                        hint: 'Enter your password',
                        label: 'password'
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: <Widget>[
                  Button(
                    context: context ,
                    page: SignUpPage(),
                    text: 'SignUp',
                  ),
                  SizedBox(height: 30),
                  Button(
                    context: context ,
                    page: SignUpPage(),
                    text: 'BackToLogin',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
      ),
    );
  }
}

