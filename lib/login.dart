import "package:flutter/material.dart";
import "package:flutter_catalog/utils/routes.dart";

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column (
          children: [
            Padding(
              padding: EdgeInsets.all(10) ,
              child: Image.asset(
              "assets/images/flutter_login.png",
              fit: BoxFit.cover,
              )
            ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter username",
                          labelText: "Username"
                        ),
                      ),
                      TextFormField(
                        obscureText: false,
                        decoration: const InputDecoration(
                          hintText: "Enter password",
                          labelText: "Password"
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                         child: const Text(
                          "Login")
                      )
                    ],
                  ),
                )
        ],),
      )
    );
  }
}
