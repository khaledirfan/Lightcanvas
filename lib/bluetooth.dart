import 'package:flutter/material.dart';
import 'package:app/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'bluetooth.dart';




class bluetooth extends StatelessWidget {
  const bluetooth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
         body: Column(


           children: [
             Container(

              // margin: const EdgeInsets.only(left: 20.0, right: 20.0),
               height: 200.0,
               width: 200.0,
               margin: const EdgeInsets.only(top: 150.0),
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage(
                       'asset/bluetooth.png'),
                   fit: BoxFit.fill,
                 ),
                 shape: BoxShape.circle,
               ),

             ),
             Container(
                 margin: const EdgeInsets.all(10.0),

               child: Text(
                 'Connect To Your Device',
                 style: TextStyle(
                     fontSize: 24,
                     fontWeight: FontWeight.bold),
               )

             ),
             Container(
               margin: const EdgeInsets.only(bottom: 10.0),

               child: Text("Make Sure Bluetooth Is Turned On"),
             ),
             FractionallySizedBox(

               widthFactor: 1.0,
               //heightFactor: 0.25,

               child :Container(
                 margin: const EdgeInsets.only(left: 20.0, right: 20.0),

                 padding: const EdgeInsets.all(6.0),
                 color: Color( 0xFF6D6D72),

                 child: Text("Available Devices"),
               ),
             ),


             FractionallySizedBox(

               widthFactor: 1.0,
               //heightFactor: 0.25,

               child :Container(
                 margin: const EdgeInsets.only(left: 20.0, right: 20.0),

                 padding: const EdgeInsets.all(6.0),
                 color: Color( 0xFFB7B9BC),

                 child: Text("Maliha's POCO"),
               ),
             ),
             FractionallySizedBox(

               widthFactor: 1.0,
               //heightFactor: 0.25,

               child :Container(
                 margin: const EdgeInsets.only(left: 20.0, right: 20.0),

                 padding: const EdgeInsets.all(6.0),
                 color: Color( 0xFF6D6D72),

                 child: Text("Previously Connected Devices"),
               ),
             ),
             FractionallySizedBox(

               widthFactor: 1.0,
               //heightFactor: 0.25,

               child :Container(
                 margin: const EdgeInsets.only(left: 20.0, right: 20.0),

                 padding: const EdgeInsets.all(6.0),
                 color: Color( 0xFFB7B9BC),

                 child: Text(
                   'iphone',
                   style: TextStyle(

                       color: Colors.white54),
                 ),
               ),
             ),
           ],

         )





    ),
    );
  }
}
