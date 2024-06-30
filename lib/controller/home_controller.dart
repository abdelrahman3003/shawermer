import 'dart:io';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';
import 'package:shawermer/core/services/services.dart';
import 'package:pdf/widgets.dart' as pw;

class HomeController extends GetxController {
  AppServices appServices = Get.put(AppServices());
  var dateFormat = DateFormat('dd/MM/yyyy');
  var timeFormat = DateFormat('h:mm a');
  var numeralFormat = NumberFormat(
    '####',
  );
  Future<String> savePdf() async {
    final pdf = pw.Document();

    // Add a page to the PDF
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Text(
              'Hello, this is your PDF content!',
              style: pw.TextStyle(fontSize: 20),
            ),
          );
        },
      ),
    );

    // Get the document directory using path_provider
    final directory = await getApplicationDocumentsDirectory();
    final path = '${directory.path}/example.pdf';
    final file = File(path);

    // Write the PDF content to the file
    await file.writeAsBytes(await pdf.save());

    // Return the file path
    return path;
  }

  Future<void> printPdf(String filePath) async {
    final pdfFile = File(filePath);
    final pdfBytes = await pdfFile.readAsBytes();

    await Printing.sharePdf(
      bytes: pdfBytes,
      filename: 'example.pdf',
    );
  }
}
