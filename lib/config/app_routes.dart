import 'package:newapp/pages/edit_profile_page.dart';
import 'package:newapp/pages/home_page.dart';
import 'package:newapp/pages/login_page.dart';
import 'package:newapp/pages/main_page.dart';
import 'package:newapp/pages/nearby_page.dart';
import 'package:newapp/pages/test_page.dart';

class AppRoutes {
  static final pages = {
    login: (context) => const LoginPage(),
    home: (context) => HomePage(),
    main: (context) => const MainPage(),
    editProfile: (context) => const EditProfile(),
    nearbyPage: (context) => const NearbyPage(),
    test: (context) => const TestPage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearbyPage = '/nearby';
  static const test = '/test';
}
