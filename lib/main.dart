import 'package:flutter/material.dart';
import 'package:invoice_generator/screen/addscreen.dart';
import 'package:invoice_generator/screen/edit.dart';
import 'package:invoice_generator/screen/homescreen.dart';
import 'package:invoice_generator/screen/pdf.dart';

void main() {
  runApp(const Invoice_Generator());
}

class Invoice_Generator extends StatelessWidget {
  const Invoice_Generator({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => Homescreen(),
         '/add':(context) => Addscreen(),
         '/edit':(context) => Edit(),
      },
    );
  }
}
