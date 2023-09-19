import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_app/home_page.dart';

class IntroPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding:EdgeInsets.only(
                  top:70 ,
                  bottom:30 ,
                  right:80 ,
                  left:80 ,
                ),
              child:Image.asset('assets/images/healthy-food.png'),
            ),
             Padding(
                padding: EdgeInsets.only(

                  right: 20,
                  bottom: 20,
                  left: 20,
                ),
              child: Text(
                'We deliver groceries at your doorstep',
                textAlign: TextAlign.center,
                style:GoogleFonts.notoSerif(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ) ,
              ),
            ),
            Text(
              'Fresh items everyday',
              style: TextStyle(
                color: Colors.grey
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                    builder:(context) =>HomePage()
                  ,
                ));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius:BorderRadius.circular(15),

                ),
                padding: EdgeInsets.all(20),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                  ),
                ),
              ),
            ),
            Spacer(),

          ],
        ),
      ),
    );
  }
}
