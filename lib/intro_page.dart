import 'package:flutter/material.dart';
import 'package:flutter/src/painting/image_provider.dart';
import 'home_page.dart';
class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
            //logo
             Padding(
               padding: const EdgeInsets.all(25.0),
               child: Image.asset('lib/image/nike-4-logo-black-and-white.png',
               height: 240,
               ),
             ),
             const SizedBox(height: 45),

             //title
             const Text('Just Do It',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              ),
             const SizedBox(height: 24),

             //subtitle
             const Text('Brand New Sneakers and custom kicks made with premium quality',
               style: TextStyle(
                 fontSize: 16,
                 color: Colors.grey,
               ),
               textAlign: TextAlign.center,
             ),
           const SizedBox(height:40 ),

             //start now button
             GestureDetector(
               onTap: () => Navigator.push(context,
                 MaterialPageRoute(builder: (context) =>Homepage(),
               ),
               ),
               child: Container(
                 decoration: BoxDecoration(
                     color: Colors.grey[900],
                   borderRadius: BorderRadius.circular(12),

                 ),

                  padding: const EdgeInsets.all(25),
                  child: Center(
                   child: const Text('Shop Now',
                   style: TextStyle(color: Colors.white,
                   fontWeight: FontWeight.bold,
                     fontSize: 16,
                   ),
                   ),
                 ),
               ),
             )


           ],
          ),
        ),
      ),
    );
  }
}

