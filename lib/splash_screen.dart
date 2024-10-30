import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_recipe/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
// function for set a timer
startTimer() async{
  Timer(Duration( seconds: 5), (){
   
    //onno page e jabe 5 sec. por
    // for going to one page to another
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
    
  });
}

@override
  void initState() {
    // TODO: implement initState
    super.initState();

   // call a function
    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/recipe_logo.png",
            width: 200,
            height: 200,),

            SizedBox(height: 10,),

            Text("My Recipe", style: GoogleFonts.acme(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),),

            SizedBox(height: 10,),

            CircularProgressIndicator(
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}
