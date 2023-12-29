import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newapp/components/app_text_field.dart';
import 'package:newapp/config/app_icons.dart';
import 'package:newapp/config/app_routes.dart';
import 'package:newapp/database.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  User? _user;

  @override
  void initState() {
    super.initState();
    _auth.authStateChanges().listen((event) {
      setState(() {
        _user = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const Spacer(),
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
                const Spacer(),
                AppTextField(
                  hint: "Username",
                  controllerName: usernameController,
                ),
                const SizedBox(
                  height: 15,
                ),
                AppTextField(
                  hint: "Password",
                  controllerName: emailController,
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
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      onPressed: () {
                        uploadData();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.black,
                      ),
                      child: const Text("Login")),
                ),
                const Spacer(),
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
                        _handleGoogleSignIn();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: const RoundedRectangleBorder(
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
                          const Text(" Login with Google"),
                        ],
                      )),
                ),
                const SizedBox(
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
                          shape: const RoundedRectangleBorder(
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
                          const Text(" Login with Facebook"),
                        ],
                      )),
                ),
                Row(
                  children: [
                    const Text(
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
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        )),
                    const Spacer(),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleGoogleSignIn() {
    try {
      GoogleAuthProvider googleAuthProvider = GoogleAuthProvider();
      _auth.signInWithProvider(googleAuthProvider);
      if (_user != null) {
        Navigator.of(context).pushNamed(AppRoutes.home);
      } else {
        (e) {
          print(e);
        };
      }
    } catch (e) {
      print(e);
    }
  }

  uploadData() async {
    Map<String, dynamic> uploaddata = {
      "email": emailController.text,
      "username": usernameController.text,
    };
    await DatabaseMethods().addUserDetails(uploaddata);
    
  }
}
