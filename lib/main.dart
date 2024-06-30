import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart';
import 'package:shawermer/core/localization/local_controller.dart';
import 'package:shawermer/core/localization/translations.dart';
import 'package:shawermer/core/services/services.dart';
import 'package:shawermer/view/home_view.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await inialServices();
  runApp(const Shawermer());
}

class Shawermer extends StatelessWidget {
  const Shawermer({super.key});
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return ScreenUtilInit(
      designSize: const Size(270, 1075),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return GetMaterialApp(
          locale: controller.language,
          translations: AppTrnaslations(),
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          home: child,
        );
      },
      child: const SafeArea(
        child: HomeView(),
      ),
    );
  }
}
