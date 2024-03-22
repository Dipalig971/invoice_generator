import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

// class Pdf extends StatefulWidget {
//   const Pdf({super.key});
//
//   @override
//   State<Pdf> createState() => _PdfState();
// }
//
// class _PdfState extends State<Pdf> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children:[
//
//         ]
//       ),
//     );
//   }
// }
// Future<Uint8List> generatepdf() async {
//   final pdf = pw.Document();
//   pdf.addPage(
//     pw.Page(
//       build: (context) {
//         return pw.Column(children: []);
//       },
//     ),
//   );
//   await PdfPreview(
//     build: (format) => pdf.save(),
//   );
//   return pdf.save();
// }
//
// class Preview extends StatefulWidget {
//   const Preview({super.key});
//
//   @override
//   State<Preview> createState() => _PreviewState();
// }
//
// class _PreviewState extends State<Preview> {
//   @override
//   Widget build(BuildContext context) {
//     return PdfPreview(build: generatepdf());
//   }
// }
//
