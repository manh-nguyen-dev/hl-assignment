import 'package:get/get.dart';

import '../feature/joke/views/joke_view.dart';
import 'app_pages.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.joke, page: () => const JokeView()),
  ];
}
