import 'package:flutter/material.dart';

import 'package:flutter_medicalapp/constants.dart';
import 'package:flutter_medicalapp/pages/home_page.dart';

class LoginBtn extends StatelessWidget {
  const LoginBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: "login_btn",
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomePage();
                  },
                ),
              );
            },
            child: Text(
              "Login".toUpperCase(),
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
