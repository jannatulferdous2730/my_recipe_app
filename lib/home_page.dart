import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import "package:flutter_svg/flutter_svg.dart";
import 'package:my_recipe/recipe_details.dart';

import 'constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Home", style: GoogleFonts.acme(
          color: Colors.white
        ),),
      ),
      
      body: GridView.count(
          crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          GestureDetector(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RecipeDetails(name: recipe1Name, image: image1, decription: description1)));

            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              margin: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.fastfood,
                    size: 100,
                    color: Colors.white,),

                    SizedBox(height: 10,),

                    Text(recipe1Name, style: TextStyle(
                      color: Colors.white, fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
            ),
          ),


          GestureDetector(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RecipeDetails(name: recipe2Name, image: image2, decription: description2)));

            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              margin: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.redAccent
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.rice_bowl_outlined,
                      size: 100,
                      color: Colors.white,),

                    SizedBox(height: 10,),

                    Text(recipe2Name, style: TextStyle(
                        color: Colors.white, fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
            ),
          ),


          GestureDetector(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RecipeDetails(name: recipe3Name, image: image3, decription: description3)));

            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              margin: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.redAccent
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.cake_rounded,
                      size: 100,
                      color: Colors.white,),

                    SizedBox(height: 10,),

                    Text(recipe3Name, style: TextStyle(
                        color: Colors.white, fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
            ),
          ),


          GestureDetector(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RecipeDetails(name: recipe4Name, image: image4, decription: description4)));

            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              margin: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.redAccent
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.local_pizza_outlined,
                      size: 100,
                      color: Colors.white,),

                    SizedBox(height: 10,),

                    Text(recipe4Name, style: TextStyle(
                        color: Colors.white, fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
            ),
          ),


        ],

      ),
    );
  }
}

