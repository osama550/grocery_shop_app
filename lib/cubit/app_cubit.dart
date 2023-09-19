import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_shop_app/cubit/app_state.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  List<Map<String,dynamic>> allItem =[
    //[ item name , item price , image path , color ]
    {
      "item name":'strawberry',
      "item price": '5.99',
      "image path": 'assets/images/strawberry.png',
      "color": Colors.lightGreen,
    },
    {
      "item name":'bananas',
      "item price": '15',
      "image path": 'assets/images/bananas.png',
      "color": Colors.lightGreen,
    },
    {
      "item name":'apple',
      "item price": '5',
      "image path": 'assets/images/apple.png',
      "color": Colors.lightGreen
    },
    {
      "item name":'orange',
      "item price": '12',
      "image path": 'assets/images/orange-juice.png',
      "color": Colors.lightGreen,
    },
    {
      "item name":'cherries',
      "item price": '16',
      "image path": 'assets/images/cherries.png',
      "color": Colors.lightGreen,
    },
    {
      "item name":'grapes',
      "item price": '7.5',
      "image path":'assets/images/grapes.png',
      "color": Colors.lightGreen,
    },
    {
      "item name":'pineapple',
      "item price": '30',
      "image path":'assets/images/pineapple.png',
      "color": Colors.lightGreen,
    },
    {
      "item name":'watermelon',
      "item price": '50',
      "image path":'assets/images/watermelon.png',
      "color": Colors.lightGreen,
    },
    {
      "item name":'kiwi',
      "item price": '25',
      "image path":'assets/images/kiwi.png',
      "color": Colors.lightGreen,
    },
    {
      "item name":'avocado',
      "item price": '15',
      "image path":'assets/images/avocado.png',
      "color": Colors.lightGreen,
    },
    {
      "item name":'lemon',
      "item price": '18',
      "image path":'assets/images/lemon.png',
      "color": Colors.lightGreen,
    },
    {
      "item name":'onion',
      "item price": '10',
      "image path":'assets/images/onion.png',
      "color": Colors.lightGreen,
    },
    {
      "item name":'passion',
      "item price": '11',
      "image path":'assets/images/passion-fruit.png',
      "color": Colors.lightGreen,
    },
    {
      "item name":'tomato',
      "item price": '17',
      "image path":'assets/images/tomato.png',
      "color": Colors.lightGreen,
    },
    {
      "item name":'eggplant',
      "item price": '13',
      "image path":'assets/images/eggplant.png',
      "color": Colors.lightGreen,
    },
    {
      "item name":'capsicum',
      "item price": '8.5',
      "image path":'assets/images/capsicum.png',
      "color": Colors.lightGreen,
    },
    {
      "item name":'carrot',
      "item price": '5.75',
      "image path":'assets/images/carrot.png',
      "color": Colors.lightGreen,
    },

    {
      "item name":'cabbage',
      "item price": '8.25',
      "image path":'assets/images/cabbage.png',
      "color": Colors.lightGreen,
    },
    {
      "item name":'potato',
      "item price": '12',
      "image path":'assets/images/potato.png',
      "color": Colors.lightGreen,
    },
    {
      "item name":'corn',
      "item price": '10',
      "image path":'assets/images/corn.png',
      "color": Colors.lightGreen,
    },
    {
      "item name":'pea',
      "item price": '14',
      "image path":'assets/images/pea.png',
      "color": Colors.lightGreen,
    },

  ];

  List<Map<String,dynamic>> cartItem=[];

  //Add item to Cart
void addItems(int index){
  cartItem.add(allItem[index]);
  emit(AddItemToCart());
}
//remove item from cart
void removeItems(int index){
  cartItem.removeAt(index);
  emit(RemoveItemFromCart());
}
//Calculate Item Cart
  String calculateItems(){
double totalPrice=0;
for(int i=0; i<cartItem.length;i++) {
  totalPrice=totalPrice + double.parse(cartItem[i]["item price"]);
}
return totalPrice.toStringAsFixed(2);
  }



}
