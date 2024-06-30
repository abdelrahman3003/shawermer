import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shawermer/core/services/services.dart';

class HomeController extends GetxController {
  AppServices appServices = Get.put(AppServices());
  var dateFormat = DateFormat('dd/MM/yyyy');
  var timeFormat = DateFormat('h:mm a');
  var numeralFormat = NumberFormat('####',);
}
