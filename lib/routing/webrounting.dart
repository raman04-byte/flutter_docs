import 'package:docs_flutter/feature/home/screen/homepage.dart';
import 'package:docs_flutter/routing/namesroute.dart';
import 'package:get/get.dart';

class WebRouting {
  List<GetPage<dynamic>> getPages() {
    return [
      GetPage(
        name: NamesRoutes.home,
        page: () => const HomePage(),
      ),
    ];
  }
}
