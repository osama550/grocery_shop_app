import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_app/cubit/app_cubit.dart';
import 'package:grocery_shop_app/cubit/app_state.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme:IconThemeData(
                color: Colors.black,

              ),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                    child:Text(
                      'My Cart',style: GoogleFonts.notoSerif(
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                ),
                Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.all(12),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            AppCubit.get(context).cartItem[index]["image path"],
                            height: 40,
                          ),
                          subtitle: Text(
                              '\$'+AppCubit.get(context).cartItem[index]["item price"]
                          ),
                          trailing: IconButton(
                            onPressed: (){
                              AppCubit.get(context).removeItems(index);
                            },
                            icon: Icon(
                              Icons.cancel,
                            ),
                          ),
                          title: Text(
                              AppCubit.get(context).cartItem[index]["item name"]),
                        ),
                      ),
                    );
                  },
                  itemCount: AppCubit.get(context).cartItem.length,
                )),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(

                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius:BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  'Total Price',
                                style: TextStyle(
                                  color: Colors.green[100],

                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                  '\$${AppCubit.get(context).calculateItems()}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.green.shade100),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.all(12),
                            child: Row(
                              children: [
                                Text('Pay Now',style: TextStyle(color: Colors.white)),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
