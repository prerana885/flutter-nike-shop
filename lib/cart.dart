import 'package:flutter/cupertino.dart';

import 'shoe.dart';
class Cart extends ChangeNotifier{
//list of shoe for sale
List<Shoe> shoeShop =[
  Shoe(
      name: 'Zoom Freak' ,
      price: '4000',
      imagePath:'lib/image/pngegg (1).png' ,
      description: 'The forward-thinking design of his latest signature shoe',
),
  Shoe(name: 'Air Jodan',
      price: '700',
      imagePath: 'lib/image/pngegg.png',
      description: 'zoom it again and again' ,
  ),


  Shoe
    (
      name: 'Nikefly',
      price: '3050',
      imagePath: 'lib/image/pngegg (2).png',
      description: 'Fly-High',
  ),
  Shoe(
      name: 'nike340',
      price: '3666',
      imagePath: 'lib/image/pngegg (3).png',
      description: 'cool sneakers',
),




];

//list ot item
    List<Shoe> userCart = [];

//get list of shoe for sale
     List<Shoe> getShoeList() {
       return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
      return userCart;
  }

//add items to cart
   void addItemToCart(Shoe shoe ) {
       userCart.add(shoe);
       notifyListeners();
   }
//remove item from cart
    void removeItemFromCart(Shoe shoe) {
       userCart.remove(shoe);
       notifyListeners();
    }
  
}