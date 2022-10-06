import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CofeTite extends StatelessWidget {
  const CofeTite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(3),
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0), color: Colors.grey[800]),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset("image/1.png"),

            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 12, horizontal: 0,), child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Latte", style: TextStyle(fontSize: 20),),
                SizedBox(height: 4,),
                Text("With Alomond Milk", style: TextStyle(color: Colors.grey[700]),),
              ],
            ),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                Text("\$2.99"),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: Icon(Icons.add),
                )
              ],),
            )
          ],
        ),
      ),
    );
  }
}
