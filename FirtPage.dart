// import 'package:flutter/material.dart';

// void main(){
//   runApp(FirsPage());
// }

// class FirsPage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Home(),
//     );
//   }
// }

// class Home extends StatefulWidget{
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> { 
//   @override
//   Widget build(BuildContext context) { 
//     return  Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.red,
//             title: Text("Berhasil Pindah halaman"),

//           ),
//           body: Container(
//             padding: EdgeInsets.only(top:20, left:20, right:20),
//             alignment: Alignment.topCenter,
//             child: Column(
//               children: [
//                 ElevatedButton(
//                   onPressed: (){
//                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
//                         return NewPage();
//                      }));
//                   }, 
//                   child: Text("Kembali")
//                 ),
                
//             ],)
//           )
//        );
//   }
// }

// class NewPage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//      return Scaffold(
//          appBar: AppBar(
//             title: Text("Next Page"),
//             leading: IconButton(
//                onPressed: (){
//                  Navigator.pop(context);
//                },
//                icon:Icon(Icons.arrow_back_ios), 
//                //replace with our own icon data.
//             )
//           ),
//          body: Container(
           
//          ),
//      );
//   }
// }