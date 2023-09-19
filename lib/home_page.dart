import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_app/cart_page.dart';
import 'package:grocery_shop_app/component/component_screen.dart';
import 'package:grocery_shop_app/cubit/app_cubit.dart';
import 'package:grocery_shop_app/cubit/app_state.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
        listener:(context, state) {},
      builder:(context, state) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding:EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Text(
                      'Good Morning'
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding:EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Text(
                    'Let\'s order fresh items for you',
                    style: GoogleFonts.notoSerif(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 24
                  ),
                  child: Divider(),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Text(
                    'Fresh items',
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: GridView.builder(
                      itemCount: AppCubit.get(context).allItem.length,
                      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1 / 1.37,
                        crossAxisSpacing: 0.5,
                        mainAxisSpacing: 0.5,
                      ),
                      itemBuilder:(context, index) {
                        return defultItem(
                          itemName: AppCubit().allItem[index]['item name'],
                          itemPrice: AppCubit().allItem[index]['item price'],
                          imagePath:AppCubit().allItem[index]['image path'],
                          color:AppCubit().allItem[index]['color'],
                          onPressed: (){
                            AppCubit.get(context).addItems(index);
                          }
                        );

                      },
                    )),
              ],
            ),

          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CartPage();
              },));
            },
            backgroundColor: Colors.black,
            child: Icon(
              Icons.shopping_bag,
              size: 30,
              color: Colors.white,
            ),
          ),
        );
      }
    );

  }
}
