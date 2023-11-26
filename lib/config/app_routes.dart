import 'package:newapp/pages/edit_profile_page.dart';
import 'package:newapp/pages/home_page.dart';
import 'package:newapp/pages/login_page.dart';
import 'package:newapp/pages/main_page.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/main': (context) => MainPage(),
    '/edit_profile': (context) => EditProfile(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
}
