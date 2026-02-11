import 'package:flutter/material.dart';
import 'package:myecomerceapp/presentation/auth/page/signin.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(181, 3, 51, 65),
        centerTitle: false,
        leading: IconButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SigninPage()),
            );
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 30),
        child: Column(children: [_SignupContent()]),
      ),

      backgroundColor: const Color.fromARGB(181, 3, 51, 65),
    ));
  }
}

Widget _SignupContent() {
  return Container(
    margin: EdgeInsets.all(10),
    child: Column(
      children: [
        Text("Sign Up", style: _textStyle()),
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(49, 48, 47, 47),
            borderRadius: BorderRadius.circular(7),
          ),
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(color: Colors.white),
            cursorColor: const Color.fromARGB(255, 219, 46, 250),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              border: OutlineInputBorder(),
              labelText: "Name",
              labelStyle: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 30),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(49, 48, 47, 47),
            borderRadius: BorderRadius.circular(7),
          ),
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(color: Colors.white),
            cursorColor: const Color.fromARGB(255, 219, 46, 250),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              border: OutlineInputBorder(),
              labelText: "Email",
              labelStyle: TextStyle(color: Colors.white),
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
            keyboardType: TextInputType.text,
            style: TextStyle(color: Colors.white),
            cursorColor: const Color.fromARGB(255, 219, 46, 250),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              border: OutlineInputBorder(),
              labelText: "Password",
              labelStyle: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 70),

        Container(child: SignupButtton()),
      ],
    ),
  );
}

TextStyle _textStyle() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
}

Widget SignupButtton() {
  return (Container(
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 232, 232, 232),
        padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
      ),
      onPressed: () {},
      child: Text(
        "Sing Up",
        style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
      ),
    ),
  ));
}
