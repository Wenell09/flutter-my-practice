import 'package:get/get.dart';
import 'package:latihan_getx_bindings/bindings/counter_binding.dart';
import 'package:latihan_getx_bindings/pages/count_page.dart';
import 'package:latihan_getx_bindings/routes/name_route.dart';
import '../bindings/register_binding.dart';
import '../pages/register_page.dart';

class GetPageRoutes {
  static final routePage = [
    GetPage(
      name: RouteName.register,
      page: () => RegisterPage(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: RouteName.count,
      page: () => CountPage(),
      binding: CounterBinding(),
    ),
  ];
}
