import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/Utils/globallist.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/pdf');
          },
          child: const Icon(Icons.picture_as_pdf),
        ),
        appBar: AppBar(
          centerTitle: true,
          elevation: 2,
          shadowColor: Colors.black,
          title: const Text(
            'Invoice Generator',
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            ...List.generate(
              invoiceList.length,
              (index) => ListTile(
                title: Text(
                  'Name :${invoiceList[index].name}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Text(
                  'Category :${invoiceList[index].category}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: Text(
                  'Rs. ${invoiceList[index].price}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<Uint8List> generatePdf() {
  final pdf = pw.Document();
  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Column(
          children: [
            ...List.generate(
              invoiceList.length,
              (index) => pw.Text(
                '\n${invoiceList[index].name},${invoiceList[index].price},\n${invoiceList[index].category}',
                style: pw.TextStyle(
                  fontSize: 35,
                ),
              ),
            ),
          ],
        );
      },
    ),
  );
  return pdf.save();
}
