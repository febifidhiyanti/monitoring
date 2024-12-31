import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:monitoring/view/control.dart';
import 'package:monitoring/view/login.dart';

class HomeScreen extends StatefulWidget {
  final User user;

  HomeScreen({required this.user});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late User _currentUser;

  @override
  void initState() {
    _currentUser = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill),
        ),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const SizedBox(
                  height: 18,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 4.0),
                      ElevatedButton(
                        onPressed: () async {
                          await FirebaseAuth.instance.signOut();

                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Sign out',
                          style:
                              TextStyle(color: Color(0xffffffff), fontSize: 14),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(255, 82, 82, 1)),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'name: ',
                  style: TextStyle(
                      color: Color.fromARGB(255, 213, 217, 219),
                      fontWeight: FontWeight.w400,
                      fontSize: 38),
                ),
                const Text(
                  "Water Quality",
                  style: TextStyle(
                      color: Color.fromARGB(255, 213, 217, 219),
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                      fontSize: 28),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              alignment: const Alignment(-1.0, 0.0),
                              child: const Text(
                                "SUHU",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 213, 217, 219),
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Card(
                                elevation: 20,
                                color: const Color.fromARGB(255, 213, 217, 219),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: const SizedBox(
                                  width: 120,
                                  height: 60,
                                  child: Center(
                                      child: Text('YoYo',
                                          style: TextStyle(fontSize: 5))),
                                )),
                          ],
                        ),
                        const SizedBox(
                          width: 45,
                        ),
                        Column(
                          children: [
                            Container(
                              alignment: const Alignment(-1.0, 0.0),
                              child: const Text(
                                "pH",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 213, 217, 219),
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Card(
                                elevation: 20,
                                color: const Color.fromARGB(255, 213, 217, 219),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: const SizedBox(
                                  width: 120,
                                  height: 60,
                                  child: Center(
                                      child: Text('YoYo',
                                          style: TextStyle(fontSize: 5))),
                                )),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              alignment: const Alignment(-1.0, 0.0),
                              child: const Text(
                                "DO",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 213, 217, 219),
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Card(
                                elevation: 20,
                                color: const Color.fromARGB(255, 213, 217, 219),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: const SizedBox(
                                  width: 120,
                                  height: 60,
                                  child: Center(
                                      child: Text('YoYo',
                                          style: TextStyle(fontSize: 5))),
                                )),
                          ],
                        ),
                        const SizedBox(
                          width: 45,
                        ),
                        Column(
                          children: [
                            Container(
                              alignment: const Alignment(-1.0, 0.0),
                              child: const Text(
                                "Salinitas",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 213, 217, 219),
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Card(
                                elevation: 20,
                                color: const Color.fromARGB(255, 213, 217, 219),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: const SizedBox(
                                  width: 120,
                                  height: 60,
                                  child: Center(
                                      child: Text('YoYo',
                                          style: TextStyle(fontSize: 5))),
                                )),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        const Text(
                          "Alkali",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 16),
                        ),
                        Card(
                          elevation: 20,
                          color: const Color.fromARGB(255, 213, 217, 219),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Card(
                        elevation: 20,
                        color: const Color.fromARGB(255, 213, 217, 219),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Container(
                          width: 300,
                          height: 80,
                          child: Center(
                              child: Text(
                            '',
                            style: TextStyle(fontSize: 12),
                            textAlign: TextAlign.left,
                          )),
                        )),
                    const SizedBox(
                      height: 40,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: const Color(0xffF18265)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Control()),
                        );
                      },
                      child: const Text(
                        "Next",
                        style: TextStyle(
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }

  Future<dynamic> Logout() async {
    await FirebaseAuth.instance.signOut();

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }
}
