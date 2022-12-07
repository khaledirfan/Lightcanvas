import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class modes extends StatefulWidget {
  @override
  State<modes> createState() => _modesState();
}

class _modesState extends State<modes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'LIGHT CANVAS',
            style: TextStyle(

              fontFamily: 'Manrope',
              fontSize: 28.0,
              color: Colors.black,
            ),
          ),

          backgroundColor: Color(0xEFF3FBF),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: Image.asset("asset/log-out.png",
              fit: BoxFit.contain,
              width: 500,),
              onPressed: () {},
            ),
          ],

          elevation: 0.0,
        ),
        body: Container(
          color: Color(0xEFF3FBF),
          //crossAxisAlignment: CrossAxisAlignment.center,
          child: Column(
            children: [ Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
              child: Center(
                child: SizedBox(
                  height: 129,
                  width: 366,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFEE6B0E),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    icon: Icon(
                      // <-- Icon
                      Icons.person,
                      size: 60.0,
                    ),
                    label: Text(
                      'Maliha Zerin',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'Manrope',
                      ),
                    ), // <-- Text
                  ),
                ),
              ),
            ),
              SizedBox(
                height: 100,
                width: 300,
                child: Text(
                  'Select Mode',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 24.0,
                    color: Color(0xFF01BFBF),
                  ),
                ),
              ),



              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Center(
                  child: SizedBox(
                    height: 100,
                    width: 300,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF01BFBF),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        // <-- Icon
                        Icons.keyboard_alt_outlined,
                        size: 80.0,
                      ),
                      label: Text(
                        'Keyboard',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Syne',
                          color: Colors.black,
                        ),
                      ), // <-- Text
                    ),
                  ),
                ),
              ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Center(
            child: SizedBox(
              height: 100,
              width: 300,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF01BFBF),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                icon: Icon(
                  // <-- Icon
                  Icons.brush_outlined,
                  size: 80.0,
                ),
                label: Text(
                  'Draw Board',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Syne',
                    color: Colors.black,
                  ),
                ), // <-- Text
              ),
            ),


          ),),

              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {

                  },
                  child: Text(
                    "Let's Get Started",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Manrope',
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: Color(0xFFEE6B0E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
          ],
          ),
        ),



        ),
      );
  }
}