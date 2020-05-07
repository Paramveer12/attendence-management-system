import 'package:attendencemanagementsystem/screens/add_students.dart';
import 'package:attendencemanagementsystem/screens/sing_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: LoginAuth(),
    );
  }
}
class LoginAuth extends StatefulWidget {
  @override
  _LoginAuthState createState() => _LoginAuthState();
}

class _LoginAuthState extends State<LoginAuth> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('LOG IN', style: TextStyle(fontSize: 40.0, color: Colors.blue[900], fontWeight: FontWeight.bold),),
              SizedBox(height: 100.0,),
              TextField(
              obscureText: false,
              cursorColor: Colors.blue[900],
              cursorWidth: 2.0,
              style: TextStyle(height: 2.0,),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Email",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
              ),
            ),
                SizedBox(height: 30.0),
                TextField(
                  obscureText: true ,
                  cursorColor: Colors.blue[900],
                  cursorWidth: 2.0,
                  style: TextStyle(height: 2.0,),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: "Password",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
                  ),
                ),
                SizedBox(height: 20.0,),
                FlatButton.icon(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AddStudents()));
                }, icon: Icon(Icons.tag_faces, color: Colors.blue,), label: Text('Log In', style: TextStyle(color: Colors.blue),)),
                SizedBox(height: 10.0,),
                Divider(height: 100.0, color: Colors.blue,),
                FlatButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                  }, icon: Icon(Icons.navigate_next, color: Colors.blue), label: Text('Sign Up', style: TextStyle(
                  color: Colors.blue[400]
                )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}