import 'package:flutter/material.dart';
import 'package:flutter_medicalapp/pages/home_page.dart';
//import 'components/back_btn.dart';
import 'components/construction_image.dart';

class ConstructionPage extends StatelessWidget {
  const ConstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[100],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Container(
                    //color: Colors.yellow, 
                   height: 400.0,
                   width:250.0,
                    child:(
                      ConstructionImage()
                    ),
                  ),
                  SizedBox(height: 20),
                  
                  Container(
                    width: 200.0,
                    height: 70.0,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100], 
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child:
                       ElevatedButton(
                        child: const Text(
                          'Home',
                          style: TextStyle(color: Colors.deepPurple)),
                          style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurple[100],
                          ),
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
                      ),
                    ),
                  ),
                ],
                ),
              ),
          ]
        ),
        ),
      );
  }
}
