import 'package:flutter/material.dart';
import 'package:flutter_application_1/Category.dart';
import 'package:flutter_application_1/MarkHistory.dart';

void main() {
  runApp(Dashboard());
}

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int? mark;

  @override
  void initState() {
    super.initState();
  }
 
  void navigateToCategory(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Category()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color.fromARGB(255, 14, 3, 169),
              Color.fromRGBO(0, 0, 0, 1),
            ],
          ),
        ),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              leading: InkWell(
                child: IconButton(
                  icon: Icon(
                    Icons.history,
                    size: 34,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MarkHistory()),
                  );
                  },
                ),
              ),
              title: Text(
                "MR.QUIZ",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              centerTitle: true,
            ),
            SizedBox(height: 50),
            Container(
              height: 74,
              width: 300,
              child: Column(
                children: [
                  Text(
                    "Welcome to MR.QUIZ",
                    style: TextStyle(
                      fontSize: 27,
                      color: Color.fromARGB(255, 162, 34, 34),
                    ),
                  ),
                  Text(
                    "Enjoy Free Quiz",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 162, 34, 34),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
              ),
            ),
            SizedBox(height: 250),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Category()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  side: MaterialStateProperty.all<BorderSide>(
                    BorderSide(color: Colors.white, width: 2.0),
                  ),
                  minimumSize: MaterialStateProperty.all<Size>(
                    Size(200.0, 60.0),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                child: Text(
                  "START",
                  style: TextStyle(fontSize: 46, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
