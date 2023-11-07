import 'package:flutter/material.dart';
import 'bottom_nav_bar.dart';
import 'shop_page.dart';
import 'cart_page.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //select index
  int _selectedIndex =0;

  //update or select
  //when user taps the button bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  //page to display
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),
  //cart page
  const CartPage(),

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar:MyBottonNavBar(
        onTabChange:(index) => navigateBottomBar(index),
      ) ,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) =>IconButton(
            icon:const Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: const Icon(
                Icons.menu,
                color: Colors.black,),
            ),
            onPressed: () {
                 Scaffold.of(context).openDrawer();
    },
            ),
      ),
        ),

      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween
          ,
          children: [
            //logo
            Column(
              children: [
                DrawerHeader(  child: Image.asset('lib/image/nike-4-logo-black-and-white.png',
          height: 120,

                color: Colors.white,
                ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(color: Colors.grey[800],),
                ),

                //otherpage

                  const Padding(
                 padding: const EdgeInsets.only(left: 25),
                 child: ListTile(
                 leading: Icon(Icons.home, color: Colors.white,),
                   title: Text('Home',style:TextStyle(color: Colors.white),
                   ),
           ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ListTile(
                    leading: Icon(Icons.info, color: Colors.white,),
                    title: Text('About',style:TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 25),
                  child: ListTile(
                    leading: Icon(Icons.logout, color: Colors.white,),
                    title: Text('Logout',style:TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),



          ],
        ),
      ),
      body: _pages[_selectedIndex],

    );
  }
}
