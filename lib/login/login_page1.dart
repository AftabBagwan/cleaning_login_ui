import 'package:cleaning_login_ui/primary/primary.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 32, top: 60),
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
                const Align(
                  alignment: Alignment.centerRight, //My Modification
                  child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                      // .objectCenterRight(),   //VelocityX Property
                      ),
                ),
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: MaterialButton(
                      minWidth:
                          MediaQuery.of(context).size.width, //My Modification
                      height: 48,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PrimaryPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Log In',
                      ),
                      color: const Color(0xffffac00),
                      textColor: Colors.white,
                    )
                    // .wh(context.screenWidth, 48),    //VelocityX Property
                    ),
              ],
            ),
          ),
          Positioned(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width, //My Modification
                  child: Row(
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
                  ),
                ),
                // .wFull(context),   //VelocityX Property
                const SizedBox(
                  height: 16,
                ),
                RichText(
                  text: const TextSpan(
                    text: "Don't have an account?",
                    children: <TextSpan>[
                      TextSpan(
                          text: "Sign up here!",
                          style: TextStyle(
                            color: Colors.orange,
                          )),
                    ],
                  ),
                )
              ],
            ),
            bottom: 24,
          )
        ],
      ),
    );
  }
}
