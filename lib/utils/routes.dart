import 'package:flutter/cupertino.dart';

import '../scrren/homepage.dart';

class Routes {
  static String home_page = '/';

  static Map<String, WidgetBuilder> myRoutes = {
    home_page: (context) => const Homepage(),
  };
}
