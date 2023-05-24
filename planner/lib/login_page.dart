import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mainpage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Login(),
      ),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(25),
              //Collapse evenly from the sides// Kenarlardan istenilen boyutta daraltmak
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                // klavye ile input girişi
                decoration: const InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.mail),
                    border: OutlineInputBorder()//Kenar çizgisi oluşturma dikdörtgen
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(25),
              //Collapse evenly from the sides// Kenarlardan istenilen boyutta daraltmak
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                // klavye ile input girişi
                decoration: const InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder()//Kenar çizgisi oluşturma dikdörtgen
                ),
              ),
            ),
            ElevatedButton(
                child: Text("Login"),
            onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Main()));
                }

            ),
      ]
        ),
      ),
    );
  }
}
