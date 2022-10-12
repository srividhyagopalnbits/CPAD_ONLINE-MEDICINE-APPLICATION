import 'package:flutter/material.dart';

//import 'package:flutter_medicalapp/constants.dart';
import 'package:flutter_medicalapp/pages/home_page.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: "back_btn",
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
              "Back".toUpperCase(),
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
