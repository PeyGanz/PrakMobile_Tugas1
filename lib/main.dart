// Muhammad Harish Wijaya - 123210011 - IF A
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //buang wm debug
      title: 'TUGAS 1 PRAK TPM',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),

      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.person_pin_circle_outlined),
          title: Text("Login Screen", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.blue,
        ),

        body: SingleChildScrollView(
          child: Center(
              child: Padding(
                padding: EdgeInsets.only(top: 120, right: 30, left: 30, bottom: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlutterLogo(size: 40),
                    SizedBox(height: 80), //spacebar

                    TextFormField( //bagian field email
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
                        hintText: "Email",
                        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      ),
                    ),
                    SizedBox(height: 10), //spacebar

                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
                        hintText: "Password",
                        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      ),
                    ),
                    SizedBox(height: 30),

                    OutlinedButton(
                      onPressed: (){},
                      child: SizedBox(
                        width: 300,
                        child: Text("Log In", style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
                      ),
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        backgroundColor: Colors.blue,
                      ),
                    ),

                    Text("Forgot Password?", style: TextStyle(color: Colors.blueGrey)),
                  ],

                ),
              )

          ),
        ),


      ),
    );

  }
}
