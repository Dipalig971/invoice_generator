import 'package:flutter/material.dart';

import '../utils/productlist.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Invoice generator',style: TextStyle(
          color: Colors.white,
        ),),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right: 20),
        //     child: Icon(Icons.picture_as_pdf,color: Colors.white,),
        //   ),
        // ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.of(context).pushNamed('/add');
        },child: Icon(Icons.add,color: Colors.blue,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 70,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.black12
                  ),
                  child: Column(
                   children: [
                     // Text('$total'),
                   ],
                  ),
                ),
                SizedBox(width: 20,),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/edit');
                  },
                  child: CircleAvatar(
                    child:  Icon(Icons.edit),
                  ),
                ),
                SizedBox(width: 10,),
               CircleAvatar(
                 child:  Icon(Icons.delete),
               )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
