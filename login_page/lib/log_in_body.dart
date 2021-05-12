import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/avatar.dart';
import 'body_page.dart';
class LogInBody extends StatelessWidget {
  TextEditingController username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)
          ),
          elevation: 5,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 12.0),
            width: 400,
            height: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Center(
                    child: Text('Log in',
                    style: TextStyle(
                        fontSize: 42.0,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 35.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0)
                    )
                  ),
                  controller: username,
                ),
                SizedBox(height: 16.0),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0)
                      ),
                  ),
                ),
                SizedBox(height: 24.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[900],
                    padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                  ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => BodyPage()
                        ),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
