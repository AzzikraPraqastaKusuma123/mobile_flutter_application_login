import 'package:flutter_application_1/FirtPage.dart';
import 'first_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage ({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Colors.red,
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(padding: EdgeInsets.all(10),
            child: TextFormField(
               decoration: const InputDecoration( 
                border: OutlineInputBorder(), labelText: "Nama" ),
                ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Email"),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Password"),
              ),
            ),
             Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Confirm Password"),
              ),
            ), 
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, 
                        MaterialPageRoute(builder: (context) {
                          return FirstPage();
                        }));
                      },
                      child: Text('REGISTER'))),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                    },
                    child: Text('BANK'))),
                ],
              ),
            )
          ],
         ),
       ));
  }
}