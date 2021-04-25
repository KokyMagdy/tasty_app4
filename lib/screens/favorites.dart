import 'package:flutter/material.dart';
import 'package:tastyapp/componentes/componentes.dart';
import 'package:tastyapp/screens/sign_up.dart';

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites"),
      ),
      body: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.elliptical(48, 80)),
            ),
            child: ExpansionTile(
              title: Text("JUICE LUCY"),
              leading: Image.asset(
                "assets/burger.png",
              ),
              children: <Widget>[
                Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        title: Text(
                          " Fried chicken pieces stuffed amarican cheddar cheese, Fried cream cheese bites.",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/burger.png'),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 110),
                          child: Button(
                            context: context ,
                            page: SignUpPage(),
                            text: 'ADD TO CART',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Column(
                            children: [
                              Icon(Icons.favorite),
                              Text('Remove '),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.elliptical(48, 80)),
            ),
            child: ExpansionTile(
              title: Text("9 PCS CHICKEN"),
              leading: Image.asset(
                "assets/fera5.png",
              ),
              children: <Widget>[
                Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        title: Text(
                          " 9 Pcs Fried chicken",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/fera5.png'),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 110),
                          child: Button(
                            context: context ,
                            page: SignUpPage(),
                            text: 'ADD TO CART',
                          ),
                        ),
                           Padding(
                             padding: const EdgeInsets.only(right: 50),
                             child: Column(
                              children: [
                                 Icon(Icons.favorite),
                                Text('Remove'),
                              ],
                          ),
                           ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
