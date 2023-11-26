import 'package:newapp/pages/edit_profile_page.dart';
import 'package:newapp/pages/home_page.dart';
import 'package:newapp/pages/login_page.dart';
import 'package:newapp/pages/main_page.dart';
import 'package:newapp/pages/nearby_page.dart';

class AppRoutes {
  static final pages = {
    login: (context) => LoginPage(),
    home: (context) => HomePage(),
    main: (context) => MainPage(),
    editProfile: (context) => EditProfile(),
    nearbyPage: (context) => NearbyPage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearbyPage = '/nearby';
}
