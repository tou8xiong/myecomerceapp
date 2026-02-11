import 'package:flutter/material.dart';
import 'package:myecomerceapp/presentation/auth/page/signup.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(181, 3, 51, 65),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 30),
        child: Column(children: [_SignInContent(context)]),
      ),
    );
  }
}

// text color

TextStyle _textStyle() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
}

TextStyle _textStylewhite() {
  return const TextStyle(color: Colors.white);
}

Widget _SignInContent(BuildContext context) {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  return (Container(
    margin: EdgeInsets.all(10),
    child: Column(
      children: [
        Text("Sign In", style: _textStyle()),
        Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(49, 48, 47, 47),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: TextField(
                  cursorColor: const Color.fromARGB(255, 219, 46, 250),
                  style: _textStylewhite(),
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: const TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                    fillColor: Colors.amber,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 57, 57, 57),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(49, 48, 47, 47),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: TextField(
                  cursorColor: const Color.fromARGB(255, 219, 46, 250),
                  style: _textStylewhite(),
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: const TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 57, 57, 57),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),

                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Sing In", style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 100),
              Container(child: _createAccounttextbutton(context)),
            ],
          ),
        ),
      ],
    ),
  ));
}

Widget _createAccounttextbutton(BuildContext context) {
  return (Container(
    margin: EdgeInsets.all(10),
    alignment: Alignment.center,
    child: Column(
      children: [
        _textdonhaveaccount(),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const SignupPage()),
            );
          },
          child: Text(
            "Create Account",
            style: TextStyle(color: const Color.fromARGB(205, 255, 238, 3)),
          ),
        ),
      ],
    ),
  ));
}

Widget _textdonhaveaccount() {
  return (Text("Don't have an account?", style: _textStylewhite()));
}
