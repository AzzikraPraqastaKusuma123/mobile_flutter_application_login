
import 'package:flutter_application_1/FirtPage.dart';

import 'first_page.dart';
import 'register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class loginPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);
  
  TextEditingController cEmail = TextEditingController();
  TextEditingController cPass = TextEditingController();
  
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
     return Scaffold(
     backgroundColor: Colors.red,
       body: Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Image.network(
            'https://asset-2.tstatic.net/batam/foto/bank/images/ramalan-shio-naga-2024.jpg',
            width: 50,
            )),
            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: cEmail,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Email"),
                  validator: (value) {
                    if (value == null || value.isEmpty){
                    return 'Please Fill This Form';
                    }
                  },
                ),
              ),
             Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: cPass,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Password"),
                  validator: (value) {
                    if (value == null || value.isEmpty){
                    return 'Please Fill This Form';
                    }
                  },
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
                    String email = 'a';
                    String pass = '1';
                    if (_formKey.currentState!.validate()) {
                      if (email == cEmail.text && pass == cPass.text) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Login successful')),
                          );
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                                return FirstPage();
                              }));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Login Failed, email or password might be wrong')),
                        );
                      }
                    }
                  },
                  child: Text('LOGIN'))),
              Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return RegisterPage();
                    }));
                  },
                  child: Text('REGISTER'))),
            ],
          ),
         )
        ],
       ),
      ));
  }
}