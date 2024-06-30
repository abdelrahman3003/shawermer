import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shawermer/core/services/services.dart';

class HomeController extends GetxController {
  var dateFormat = DateFormat('dd/MM/yyyy');
  var timeFormat = DateFormat('h:mm a');
  var numeralFormat = NumberFormat('####');
  AppServices appServices = Get.put(AppServices());
}
