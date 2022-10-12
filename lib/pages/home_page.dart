import 'package:flutter/material.dart';
import 'package:flutter_medicalapp/util/category_card.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_medicalapp/util/order_card.dart';
import 'package:flutter_medicalapp/util/heading_card.dart';
//import 'construct_page.dart';
import 'construction_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //name
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello,',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Srividhya Gopal',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    // profile picture
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(Icons.person),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                // card how do you feel
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: Lottie.asset(
                            "assets/json/doctor-prescription.json"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('How do you feel',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              )),
                          SizedBox(height: 12),
                          Text('Fill out your medical card right now',
                              style: TextStyle(
                                fontSize: 14,
                              )),
                          SizedBox(height: 12),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[100],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: ElevatedButton(
                                child: const Text('Get Started',
                                    style: TextStyle(color: Colors.white)),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        //return ConstructPage();
                                        return ConstructionPage();
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              // search text
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(12)),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        hintText: 'How can we help you?',
                      ),
                    ),
                  )),
              SizedBox(height: 25),
              /* This is JSON to list commented
              Container(
                height: 200,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12)),
                child: SimpleTable(),
              ),*/
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: HeadingCard(),
                        ),
                        Container(
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple[100],
                              borderRadius: BorderRadius.circular(12)),
                          child: OrderTable(),
                        ),
                      ])),
              SizedBox(height: 25),
              Container(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                    onTap: () {
                      Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return ConstructionPage();
                                      },
                                    ),
                                  );
                    },
                    child: Container(
                    child:( 
                      CategoryCard(
                      categoryName: 'Medicines',
                      iconImagePath: 'lib/icons/medicine-single.png',
                      )
                    )
                    ),
                    ),
                    GestureDetector(
                    onTap: () {
                      Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return ConstructionPage();
                                      },
                                    ),
                                  );
                    },
                    child: Container(
                      
                    child:( 
                      CategoryCard(
                      categoryName: 'Diagnostics',
                      iconImagePath: 'lib/icons/blood-tube.png',
                    )
                    )
                    ),
                    ),
                    GestureDetector(
                    onTap: () {
                      Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return ConstructionPage();
                                      },
                                    ),
                                  );
                    },
                    child: Container(
                      
                    child:( 
                      CategoryCard(
                      categoryName: 'Doctor',
                      iconImagePath: 'lib/icons/surgeon.png',
                    )
                    )
                    ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
