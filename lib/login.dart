import "package:flutter/material.dart";
import "package:flutter_catalog/utils/routes.dart";

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  final _formKey = GlobalKey<FormState>();

// TODO: before function declartion
  movetoHome(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      // redraws the view again
      setState(() {});
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/flutter_login.png",
                      fit: BoxFit.cover,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter username", labelText: "Username"),
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: false,
                        decoration: const InputDecoration(
                            hintText: "Enter password", labelText: "Password"),
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return "Password cannot be empty";
                          } else if (value != null && value.length < 7) {
                            return "Password length must be 7 characters";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      ElevatedButton(
                          onPressed: () => movetoHome(context),
                          child: const Text("Login"))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
