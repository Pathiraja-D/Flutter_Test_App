import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:newapp/components/app_text_field.dart';
import 'package:newapp/config/app_icons.dart';
//import 'package:newapp/config/app_routes.dart';
import 'package:http/http.dart' as http;
import 'package:newapp/config/app_routes.dart';

const baseUrl = 'http://localhost:8080';

class LoginPage extends StatelessWidget {
  final loginRoute = '$baseUrl/login';
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
                const Text(
                  "Hello, welcome back !",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "Login to continue ...",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Spacer(),
                AppTextField(
                  hint: "Username",
                  controllerName: usernameController,
                ),
                const SizedBox(
                  height: 15,
                ),
                AppTextField(
                  hint: "Password",
                  controllerName: passwordController,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        print("Forgot is Clicked");
                      },
                      child: const Text("Forgot Password ?")),
                ),
                SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(AppRoutes.main);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.black,
                      ),
                      child: const Text("Login")),
                ),
                Spacer(),
                const Text(
                  "Or sign in with",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                      onPressed: () {
                        print("Google is clicked");
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(52)),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.ic_google,
                            height: 22,
                            width: 22,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(" Login with Google"),
                        ],
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                      onPressed: () {
                        print(" Facebook is clicked");
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(52)))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.ic_facebook,
                            height: 22,
                            width: 22,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(" Login with Facebook"),
                        ],
                      )),
                ),
                Row(
                  children: [
                    Text(
                      "Don't have account ?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.blue[100],
                        ),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        )),
                    Spacer(),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<String> doLogin() async {
    final username = usernameController.text;
    final password = passwordController.text;
    final body = {'username': username, 'password': password};
    final response =
        await http.post(Uri.parse(loginRoute), body: jsonEncode(body));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      print("Error");
      throw Exception('Error');
    }
  }
}
