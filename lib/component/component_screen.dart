import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defultItem({
  required String itemName,
  required String itemPrice,
  required String imagePath,
  required Color color,
  required VoidCallback onPressed,
}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(imagePath, height: 80, width: 80),
            ),
            Text(
              itemName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '1Kg, Price',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                 '\$' + itemPrice,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black),
                  child: IconButton(
                      onPressed: onPressed,
                      icon: Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
