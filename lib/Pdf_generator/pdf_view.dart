import 'dart:typed_data';

import 'package:billing_app/screens/Invoice%20details/table.dart';
import 'package:billing_app/screens/Invoice%20details/table.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../screens/Invoice details/table.dart';

class PdfPreviewPage extends StatelessWidget {
  String? text;
  PdfPreviewPage(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Preview'),
      ),
      body: PdfPreview(
        build: (context) => makePdf(),
      ),
    );
  }

  Future<Uint8List> makePdf() async {
    final pdf = pw.Document();
    // final ByteData bytes = await rootBundle.load('');
    // final Uint8List byteList = bytes.buffer.asUint8List();
    pdf.addPage(pw.Page(
        margin: const pw.EdgeInsets.all(10),
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Padding(
                    padding: const pw.EdgeInsets.all(15),
                    child: pw.Column(children: [
                      pw.Row(children: [
                        pw.Column(children: [
                          pw.Text("ISSUED TO",
                              style:
                                  pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                          pw.Text(
                            "Invoice no",
                          ),
                          pw.Text(
                            "kghsachin69@gmail.com",
                          ),
                          pw.Text(
                            "9869966969",
                          ),
                        ]),
                        pw.Spacer(),
                        pw.Column(children: [
                          pw.Text("Invoice no",
                              style:
                                  pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                          pw.Text(
                            "9869966969",
                          ),
                          pw.Text(
                            "3000/12/6",
                          ),
                        ]),
                      ]),
                      pw.SizedBox(
                        height: 20,
                      ),
                      pw.Divider(),
                    
                    ]))
              ]);
        }));
    return pdf.save();
  }
}
