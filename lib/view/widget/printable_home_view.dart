import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:shawermer/controller/home_controller.dart';
import 'package:shawermer/core/constatnt/assets.dart';
import 'package:pdf/widgets.dart' as pw;

pw.Widget buildPrintableHomeView1({frame1, frame2}) {
  var controller = HomeController();
  return pw.Padding(
    padding: const pw.EdgeInsets.symmetric(horizontal: 16),
    child:
        pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.center, children: [
      pw.Image(frame1),
      pw.SizedBox(height: 10),
      pw.Divider(color: PdfColors.black, thickness: 1.5),
      pw.Row(
        children: [
          pw.Expanded(
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text(
                  controller.numeralFormat.format(543),
                  style: pw.TextStyle(
                    fontSize: 24.sp,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.Row(
                  children: [
                    pw.Text(
                      "#",
                      style: pw.TextStyle(
                        fontSize: 12.sp,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Text(
                      controller.numeralFormat.format(54545),
                      style: pw.TextStyle(
                        fontSize: 12.sp,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          pw.Column(
            children: [
              pw.Row(
                children: [
                  pw.Text(
                    "Date",
                    style: pw.TextStyle(
                      fontSize: 12.sp,
                      //    fontWeight: FontWeight.w400,
                    ),
                  ),
                  pw.SizedBox(width: 30),
                  pw.Text(
                    controller.dateFormat.format(DateTime.now()),
                    style: pw.TextStyle(
                      fontSize: 12.sp,
                      //    fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              pw.Row(
                children: [
                  pw.Text(
                    "Time",
                    style: pw.TextStyle(
                      fontSize: 12.sp,
                      //   fontWeight: FontWeight.w400,
                    ),
                  ),
                  pw.SizedBox(width: 60),
                  pw.Text(
                    controller.timeFormat.format(controller.timeFormat.parse(
                        "${DateTime.now().hour}:${DateTime.now().minute} PM")),
                    style: pw.TextStyle(
                      fontSize: 12.sp,
                      //    fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
      pw.Padding(
        padding: const pw.EdgeInsets.symmetric(vertical: 10),
        child: pw.Divider(color: PdfColors.black, thickness: 1.5),
      ),
      pw.Image(frame2),
      pw.Padding(
        padding: const pw.EdgeInsets.symmetric(vertical: 10),
        child: pw.Divider(color: PdfColors.black, thickness: 1.5),
      ),
      pw.Row(
        children: [
          pw.Center(
            child: pw.Icon(const pw.IconData(0xe7fd),
                size: 50, color: PdfColors.blue),
          ),
          pw.SizedBox(width: 10),
          pw.Text(
            "Abdessmed Bouazza",
            style: pw.TextStyle(
              fontSize: 12.sp,
              // fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
      pw.SizedBox(height: 5),
      pw.Row(
        children: [
          pw.Icon(const pw.IconData(0xe0cd), size: 50, color: PdfColors.blue),
          pw.SizedBox(width: 10),
          pw.Text(
            "06 98 76 54 32",
            style: pw.TextStyle(
              fontSize: 12.sp,
              //   fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
      pw.SizedBox(height: 7),
      pw.Row(
        children: [
          pw.Icon(const pw.IconData(0xe0c8), size: 50, color: PdfColors.blue),
          pw.SizedBox(width: 10),
          pw.Flexible(
            child: pw.Text(
              "15 Masr ElTaamir Bldgs. Moustafa El-Nahas St.,",
              style: pw.TextStyle(
                fontSize: 12.sp,
                //    fontWeight: FontWeight.w700,
              ),
              // overflow: pw.TextOverflow.ellipsis,
              maxLines: 2,
            ),
          )
        ],
      ),
      pw.SizedBox(height: 7),
      pw.Row(
        children: [
          pw.Icon(const pw.IconData(0xe0c8), size: 50, color: PdfColors.blue),
          pw.SizedBox(width: 10),
          pw.Flexible(
            child: pw.Text(
              "Address Note",
              style: pw.TextStyle(
                fontSize: 12.sp,
                //   fontWeight: FontWeight.w700,
              ),
              // overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          )
        ],
      ),
      pw.SizedBox(height: 7),
      pw.Padding(
        padding: pw.EdgeInsets.symmetric(vertical: 10),
        child: pw.Divider(color: PdfColors.blue, thickness: 1.5),
      ),
      pw.SizedBox(height: 7),
      pw.Padding(
        padding: pw.EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        child: pw.Row(
          children: [
            pw.Expanded(
              child: pw.Text(
                "Product",
                style: pw.TextStyle(
                  fontSize: 12.sp,
                  //  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            pw.Text(
              "Price",
              style: pw.TextStyle(
                fontSize: 12.sp,
                //      fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      pw.Row(
        children: [
          pw.Expanded(
            child: pw.Text(
              "7x köfte",
              style: pw.TextStyle(
                fontSize: 14.sp,
                //  fontWeight: FontWeight.w700,
              ),
            ),
          ),
          pw.Text(
            "200 EGP",
            style: pw.TextStyle(
              fontSize: 12.sp,
              //       fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      pw.Padding(
        padding: pw.EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        child: pw.Row(
          children: [
            pw.Expanded(
              child: pw.Row(
                children: [
                  //     pw.SvgImage(svg: AssetIcon.plus),
                  pw.Text(
                    " Comps",
                    style: pw.TextStyle(
                      fontSize: 12.sp,
                      //   fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            pw.Text(
              "10 EGP",
              style: pw.TextStyle(
                fontSize: 12.sp,
                //    fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      pw.Padding(
        padding: const pw.EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        child: pw.Row(
          children: [
            pw.Expanded(
              child: pw.Row(
                children: [
                  //  pw.SvgImage(svg: AssetIcon.minus),
                  pw.Text(
                    " Comps",
                    style: pw.TextStyle(
                      fontSize: 12.sp,
                      //  fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            pw.Text(
              "10 EGP",
              style: pw.TextStyle(
                fontSize: 12.sp,
                // fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      pw.Row(
        children: [
          pw.Expanded(
            child: pw.Text(
              "2x fårikål",
              style: pw.TextStyle(
                fontSize: 14.sp,
                //   fontWeight: FontWeight.w700,
              ),
            ),
          ),
          pw.Text(
            "200 EGP",
            style: pw.TextStyle(
              fontSize: 12.sp,
              // fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      pw.Padding(
        padding: const pw.EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        child: pw.Row(
          children: [
            pw.Expanded(
              child: pw.Row(
                children: [
                  //   pw.SvgImage(svg: AssetIcon.plus),
                  pw.Text(
                    " Comps",
                    style: pw.TextStyle(
                      fontSize: 12.sp,
                      //  fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            pw.Text(
              "10 EGP",
              style: pw.TextStyle(
                fontSize: 12.sp,
                // fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    ]),
  );
}

pw.Widget buildPrintableHomeView2({frame3, frame4}) {
  return pw.Column(
    children: [
      pw.Row(
        children: [
          pw.Expanded(
            child: pw.Text(
              "1x حواوشي",
              style: pw.TextStyle(
                fontSize: 14.sp,
                //fontWeight: FontWeight.w700,
              ),
            ),
          ),
          pw.Text(
            "200 EGP",
            style: pw.TextStyle(
              fontSize: 12.sp,
              //   fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      pw.Padding(
        padding: const pw.EdgeInsets.symmetric(vertical: 10),
        child: pw.Divider(color: PdfColors.black, thickness: 1.5),
      ),
      pw.SizedBox(height: 15),
      pw.Row(
        children: [
          pw.Expanded(
            child: pw.Text(
              "SUBTOTAL",
              style: pw.TextStyle(
                fontSize: 12.sp,
                //       fontWeight: FontWeight.w500,
              ),
            ),
          ),
          pw.Text(
            "200 EGP",
            style: pw.TextStyle(
              fontSize: 12.sp,
              //   fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      pw.SizedBox(height: 5),
      pw.Row(
        children: [
          pw.Expanded(
            child: pw.Text(
              "DISCOUNT",
              style: pw.TextStyle(
                fontSize: 12.sp,
                //fontWeight: FontWeight.w500,
              ),
            ),
          ),
          pw.Text(
            "200 EGP",
            style: pw.TextStyle(
              fontSize: 12.sp,
              // fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      pw.SizedBox(height: 5),
      pw.Row(
        children: [
          pw.Expanded(
            child: pw.Text(
              "SERVICE CHARGE",
              style: pw.TextStyle(
                fontSize: 12.sp,
                //  fontWeight: FontWeight.w500,
              ),
            ),
          ),
          pw.Text(
            "200 EGP",
            style: pw.TextStyle(
              fontSize: 12.sp,
              // fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      pw.SizedBox(height: 5),
      pw.Row(
        children: [
          pw.Expanded(
            child: pw.Text(
              "TAX",
              style: pw.TextStyle(
                fontSize: 12.sp,
                //     fontWeight: FontWeight.w500,
              ),
            ),
          ),
          pw.Text(
            "200 EGP",
            style: pw.TextStyle(
              fontSize: 12.sp,
              //    fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      pw.SizedBox(height: 5),
      pw.Row(
        children: [
          pw.Expanded(
            child: pw.Text(
              "Total",
              style: pw.TextStyle(
                fontSize: 16.sp,
                //   fontWeight: FontWeight.w700,
              ),
            ),
          ),
          pw.Text(
            "200 EGP",
            style: pw.TextStyle(
              fontSize: 16.sp,
              //   fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      pw.Padding(
        padding: const pw.EdgeInsets.symmetric(vertical: 10),
        child: pw.Divider(color: PdfColors.black, thickness: 1.5),
      ),
      pw.SizedBox(height: 5),
      pw.Column(
        children: [
          pw.Image(frame3),
          pw.SizedBox(height: 5),
          pw.Text(
            "Cash",
            style: pw.TextStyle(
              fontSize: 16.sp,
              // fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      pw.Image(
        frame4,
        width: 300.w,
        height: 300.h,
      ),
    ],
  );
}
