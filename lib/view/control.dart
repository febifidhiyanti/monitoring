import 'package:flutter/material.dart';
import 'package:monitoring/view/manajemenPH.dart';
import 'package:monitoring/view/manajemenPakan.dart';

class Control extends StatelessWidget {
  const Control({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 2, 28, 49),
      body: FractionallySizedBox(
        widthFactor: 1,
        child: MyControl(),
      ),
    ));
  }
}

class MyControl extends StatefulWidget {
  const MyControl({Key? key}) : super(key: key);

  @override
  State<MyControl> createState() => _MyControlState();
}

class _MyControlState extends State<MyControl> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fill),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const SizedBox(
              height: 60,
            ),
            const Text(
              "CONTROL",
              style: TextStyle(
                  color: Color.fromARGB(255, 213, 217, 219),
                  fontWeight: FontWeight.w400,
                  fontSize: 38),
            ),
            const Text(
              "Autofeeder",
              style: TextStyle(
                  color: Color.fromARGB(255, 213, 217, 219),
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w200,
                  fontSize: 28),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  "AFRATOR",
                  style: TextStyle(
                      color: Color.fromARGB(255, 213, 217, 219),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 213, 217, 219),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "ON",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 213, 217, 219),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "OFF",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 44,
                ),
                Container(
                  width: 300,
                  height: 60,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 213, 217, 219),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ManajemenPakan()),
                      );
                    },
                    child: const Text(
                      "MANAJEMEN PAKAN",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: 300,
                  height: 60,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 213, 217, 219),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ManajemenPH()),
                      );
                    },
                    child: const Text(
                      "MANAJEMEN PH",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 190,
                ),
              ],
            )
          ]),
    );
  }
}
