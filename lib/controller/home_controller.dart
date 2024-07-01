import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:shawermer/core/constatnt/assets.dart';
import 'package:shawermer/core/services/services.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:shawermer/view/widget/printable_home_view.dart';

class HomeController extends GetxController {
  AppServices appServices = Get.put(AppServices());
  var dateFormat = DateFormat('dd/MM/yyyy');
  var timeFormat = DateFormat('h:mm a');
  var numeralFormat = NumberFormat(
    '####',
  );
  Future<void> printDoc() async {
    final frame1 = await imageFromAssetBundle(AssetsImage.frame1);
    final frame2 = await imageFromAssetBundle(AssetsImage.frame2);
    final frame3 = await imageFromAssetBundle(AssetsImage.frame3);
    final frame4 = await imageFromAssetBundle(AssetsImage.frame4);
    List<pw.Widget> widgets = [
      buildPrintableHomeView1(frame1: frame1, frame2: frame2),
      buildPrintableHomeView2(frame3: frame3, frame4: frame4),
    ];
    final doc = pw.Document();

    for (var i = 0; i < widgets.length; i++) {
      doc.addPage(pw.Page(
        pageFormat: PdfPageFormat.a3,
        build: (pw.Context context) {
          return widgets[i];
        },
      ));
    }

    print("===============");
    await Printing.layoutPdf(
      onLayout: (format) => doc.save(),
      usePrinterSettings: true,
      format: PdfPageFormat.a3,
      dynamicLayout: true,
    );
  }
}
