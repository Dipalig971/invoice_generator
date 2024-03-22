import 'package:flutter/material.dart';
import 'package:invoice_generator/utils/productlist.dart';

class Addscreen extends StatefulWidget {
  const Addscreen({super.key});

  @override
  State<Addscreen> createState() => _AddscreenState();
}

class _AddscreenState extends State<Addscreen> {
  TextEditingController txtproductname = TextEditingController();
  TextEditingController txtquantity = TextEditingController();
  TextEditingController txtprice = TextEditingController();
  TextEditingController txtgst = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Invoice generator',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 40),
            child: TextField(
              controller: txtproductname,
              decoration: InputDecoration(
                labelText: 'Productname',
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 40),
            child: TextField(
              controller: txtquantity,
              decoration: InputDecoration(
                labelText: 'Quantity',
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2)),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 40),
            child: TextField(
              controller: txtprice,
              decoration: InputDecoration(
                labelText: 'Price',
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2)),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(right: 10, left: 10, top: 40),
            child: TextField(
              controller: txtgst,
              decoration: InputDecoration(
                labelText: 'Gst',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/');
                setState(() {

                });
              },
              child: Text('submit'))
        ],
      ),
    );
  }
}
