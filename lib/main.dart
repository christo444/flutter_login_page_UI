import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    // Add controllers for the text fields
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Image.asset('assets/images.jpg'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: SizedBox(
                width: 350,
                height: 100,
                child: TextFormField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 350,
              height: 100,
              child: TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            Builder(
              builder: (context) => ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Logged in"),
                      duration: Duration(seconds: 2),
                      backgroundColor: Colors.red,
                    ),
                  );
                },
                child: Text("Login"),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.lightBlue),
                  fixedSize: WidgetStateProperty.all(Size(100, 50)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Builder(
                builder: (context) => ElevatedButton(
                  onPressed: () {
                    usernameController.clear();
                    passwordController.clear();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Text fields cleared"),
                        duration: Duration(seconds: 2),
                        backgroundColor: Colors.red,
                      ),
                    );
                  },
                  child: Text("Cancel"),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.pink),
                    fixedSize: WidgetStateProperty.all(Size(100, 50)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
