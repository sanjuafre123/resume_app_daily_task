import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart'as pw;
import 'package:printing/printing.dart';
import 'package:resume_app_daily_task/Utils/globallist.dart';
import 'package:resume_app_daily_task/home/Components/Screen/Invoice/invoice.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body : PdfPreview(
          build: (format) => generatePdf(),
        )
      ),
    );
  }
}


