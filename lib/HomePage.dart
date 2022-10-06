import 'package:coffe_ui/coffee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      backgroundColor: Colors.grey[900],
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
      ]),
      body: Column(
        children: [

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "FIND THE BEST COFEE FOR YOU",
              style: GoogleFonts.bebasNeue(fontSize: 56),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.grey.shade600,),
                  hintText: 'find you coffee',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade600))),
            ),
          ),
          SizedBox(height: 25,),

          Expanded(child: ListView(
            scrollDirection: Axis.horizontal,
            children: [ CofeTite(), CofeTite(), CofeTite(),],
          ))
          // Expanded(child: ListView(
          //   scrollDirection: Axis.horizontal,
          //   children: [
          //     Padding(padding: EdgeInsets.all(8.0),
          //     child: Container(
          //       width: 200,
          //       color: Colors.grey,
          //     ),),
          //     Padding(padding: EdgeInsets.all(8.0),
          //     child: Container(
          //       width: 200,
          //       color: Colors.grey,
          //     ),),
          //     Padding(padding: EdgeInsets.all(8.0),
          //     child: Container(
          //       width: 200,
          //       color: Colors.grey,
          //     ),),
          //   ],
          // ))
        ],
      ),
    );
  }
}
