import 'package:flutter/material.dart';
import 'package:my_artisan_app/widgets/universalContainer.dart';

class ForgottenPassword extends StatefulWidget {
  @override
  _ForgottenPasswordState createState() => _ForgottenPasswordState();
}

class _ForgottenPasswordState extends State<ForgottenPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: commonContainer(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Forgot Password",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              Image.asset(
                "images/reset.png",
                height: 220,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Enter the registered email address",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                "We will email you a link to reset your password",
                style: TextStyle(color: Colors.grey),
              ),
              authField(hintText: "Enter email address"),
              authButton(
                  title: "SEND",
                  onPress: () {
                    Navigator.pop(context);
                  })
            ],
          ),
        )),
      ),
    );
  }
}
