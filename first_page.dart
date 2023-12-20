import 'package:flutter/material.dart';
import 'package:flutter_application_1/conrtoh.dart';
import 'package:flutter_application_1/contact.dart';
import 'login_page.dart';
import 'main.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'galery.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar:  AppBar(
        backgroundColor: Colors.black,
        title: Text('Menu Home'),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return loginPage();
                },
              ));
            },
            child: Icon(Icons.logout),
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
            )
        ],
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children : [
            Container(
              padding: EdgeInsets.all(5),
              child: SizedBox(
                width: 150.0,
                height: 150.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Calculator();
                      },
                    ));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.calculate,
                        size: 60,
                      ),
                      Text('CALCULATOR')
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: SizedBox(
                width: 150.0,
                height: 150.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Dzikir();
                    },
                  ));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mosque,
                      size: 60,
                      ),
                      Text('DZIKIR')
                  ],
                ),
                style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
                ),
                ), 
            ),     
          ],
      ),
          Row(
          mainAxisAlignment : MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              child: SizedBox(
                width: 150.0,
                height: 150.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return galerii();
                    },
                  ));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.image,
                      size: 60,
                    ),
                    Text('GALERY')
                  ],
                ),
                style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: SizedBox(
                width: 150.0,
                height: 150.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return contact();
                      },
                    ));
                  },
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.contact_page,
                        size: 60,
                      ),
                      Text('CONTACT')
                    ],
                   ),
                   style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
                ),
              ),
            )
          ],
        ),
          ],
        ),
      )
        );
  }
} 
