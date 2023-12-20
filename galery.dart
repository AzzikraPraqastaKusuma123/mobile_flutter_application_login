import 'package:flutter/material.dart';
import 'dart:convert';
import 'first_page.dart';
import 'main.dart';
import 'package:http/http.dart' as http;

class galerii extends StatelessWidget {
  final String apiImage=
    'https://api.slingacademy.com/v1/sample-data/photos?offset=0&limit=60';

    Future<List<dynamic>> AmbilImage() async {
      var result= await http.get(Uri.parse(apiImage));
      return jsonDecode(result.body)['photos'];
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Galery dari API"),
        ),
        body: Container(
          child: FutureBuilder<List<dynamic>>(
            future: AmbilImage(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5),
                    itemCount:snapshot.data.length,
                    itemBuilder: (BuildContext context, int index){
                      return Image.network(snapshot.data[index]['url']);

                    });
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
                })));
   }
}
