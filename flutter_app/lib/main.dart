import 'package:flutter/material.dart';
import 'package:flutter_app/quote.dart';
import 'package:flutter_app/QuotesCard.dart';
void main() => runApp(MaterialApp(
    //home: University_id(), HOME OF THE FIRST APP
    home: Quotes()
  ));

// class University_id extends StatefulWidget {  START  OF THE FIRST APP
//   @override
//   _University_idState createState() => _University_idState();
// }
//
// class _University_idState extends State<University_id> {
//
//   int course = 1;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[900],
//       appBar: AppBar(
//         title: Text("IUT ID Card"),
//         centerTitle: true,
//         backgroundColor: Colors.grey[850],
//         elevation: 0.0,
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Center(
//               child: CircleAvatar(
//                 backgroundImage: AssetImage("assets/andy-holmes-LUpDjlJv4_c-unsplash.jpg"),
//                 radius: 40.0,
//               ),
//             ),
//             SizedBox(height:15.0),
//             Center(
//               child: Text(
//                 "U2010292",
//                 style: TextStyle(
//                   color: Colors.grey[400],
//                   letterSpacing: 2.0,
//                   fontSize: 18.0
//                 ),
//               ),
//             ),
//             Divider(height: 60.0, color: Colors.grey[800]),
//             Text("Name",
//               style: TextStyle(
//                 color: Colors.grey,
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(height: 10.0),
//             Text(
//               "Chun-Li",
//               style: TextStyle(
//                 color: Colors.amberAccent,
//                 letterSpacing: 2.0,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 28.0
//               ),
//             ),
//             SizedBox(height: 30.0),
//             Text(
//               "Faculty",
//               style: TextStyle(
//                 color: Colors.grey[400],
//                 letterSpacing: 2.0
//               ),
//             ),
//             SizedBox(height: 10.0),
//             Text(
//               "SOCIE",
//               style: TextStyle(
//                 color: Colors.amberAccent,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 2.0
//               ),
//             ),
//             SizedBox(height: 30.0),
//             Text(
//               "Course",
//               style: TextStyle(
//                 color: Colors.grey[400],
//                 letterSpacing: 2.0
//               ),
//             ),
//             SizedBox(height: 10.0),
//             Text(
//               "$course",
//               style: TextStyle(
//                 color: Colors.amberAccent,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 2.0
//               ),
//             ),
//             SizedBox(height:30.0),
//             Text(
//               "Email",
//               style: TextStyle(
//                   color: Colors.grey[400],
//                   letterSpacing: 2.0
//               ),
//             ),
//             SizedBox(height: 10.0),
//             Row(
//               children: <Widget>[
//                 Icon(Icons.email, color: Colors.orange),
//                 SizedBox(width: 10.0),
//                 Text("s.xaltaev@student.inha.uz",
//                 style: TextStyle(
//                   color: Colors.grey[400],
//                   letterSpacing: 2.0,
//                   fontSize: 18.0
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         backgroundColor: Colors.orange,
//         onPressed: (){
//           setState(() {
//             if(course < 4)
//               course++;
//             else{
//               course = 1;
//             }
//           });
//         },
//       ),
//     );
//   }
// } THE END OF THE FIRST APP

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {

  List<Quote> quotes = [
    Quote(author: "Oskar Hide", text: "Yourself; everyone else is already taken."),
    Quote(author: "Oskar Bide", text: "Everyone else is already taken."),
    Quote(author: "Oskar Wilde", text: "Be yourself; everyone else is already taken."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) => QuotedCard(
            quote: quote,
            delete: (){
              setState(() {
                quotes.remove(quote);
                });
              }
            )).toList(),
      ),
    );
  }
}





  

