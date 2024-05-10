// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_application/shared/theme.dart';
import 'package:my_application/user_auth/presentation/pages/main/main_home.dart';
import 'package:my_application/user_auth/presentation/pages/auth/sign_up_page.dart';
import 'package:my_application/user_auth/presentation/widgets/button_costum_widget.dart';
// import 'package:my_application/user_auth/firebase_auth_implementation/firebase_auth_service.dart';
// import 'package:my_application/user_auth/presentation/pages/main_home.dart';
// import 'package:my_application/user_auth/presentation/pages/sign_up_page.dart';
import 'package:my_application/user_auth/presentation/widgets/form_container_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // bool _isSignIn = false;

  // final FirebaseAuthService _auth = FirebaseAuthService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.lock, size: 60),
                    Text("Login",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w900)),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 40.0, horizontal: 20.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: greyBlack),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FormContainerWidget(
                      hintText: "Email",
                      controller: _emailController,
                      isPasswordField: false,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FormContainerWidget(
                      hintText: "Password",
                      controller: _passwordController,
                      isPasswordField: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ButtonCostum(
                      width: MediaQuery.of(context).size.width,
                      height: 42.0,
                      title: "Login",
                      fontsize: 16,
                      color: mainColor,
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainHome()),
                            (route) => false);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "don't have an acount?",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUpPage()));
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                                color: mainColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // void _signIn() async {
  //   // ignore: unused_local_variable
  //   String email = _emailController.text;
  //   String password = _passwordController.text;

  //   User? user = await _auth.signInWithEmailAndPassword(email, password);

  //   if (user != null) {
  //     print("User is succesfully SignIn");
  //     // ignore: use_build_context_synchronously
  //     Navigator.pushNamed(context, "/home");
  //   } else {
  //     print("Some error happend");
  //   }
  // }
}
