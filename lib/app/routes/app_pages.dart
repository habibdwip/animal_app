import 'package:get/get.dart';

import '../modules/animal/bindings/animal_binding.dart';
import '../modules/animal/views/animal_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ANIMAL,
      page: () => const AnimalView(),
      binding: AnimalBinding(),
    ),
  ];
}
