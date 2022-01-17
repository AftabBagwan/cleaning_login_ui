import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({Key? key}) : super(key: key);

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            color: const Color(0xff4e3d77),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 80 / 100,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                )),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: SvgPicture.asset(
                    "images/vaccum.svg",
                    fit: BoxFit.cover,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email Address",
                      hintText: 'aftabbagwan9886@gmail.com',
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextField(
                    autofocus: true,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(10),
                      labelText: "Enter Password",
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ).objectCenterRight(),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      'Log In',
                    ),
                    color: const Color(0xffffac00),
                    textColor: Colors.white,
                  ).wh(context.screenWidth, 48),
                ),
              ],
            ),
          ),
          Positioned(
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset("images/fb.svg"),
                    const SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset("images/google.svg"),
                    const SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset("images/twitter.svg")
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ).wFull(context),
                const SizedBox(
                  height: 16,
                ),
                const Text("Don't have an account?"),
              ],
            ),
            bottom: 24,
          )
        ],
      ),
    );
  }
}
