import 'package:flutter/material.dart';

class ManajemenPakan extends StatelessWidget {
  const ManajemenPakan({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 2, 28, 49),
      body: FractionallySizedBox(
        widthFactor: 1,
        child: MyManajemenPakan(),
      ),
    ));
  }
}

class MyManajemenPakan extends StatefulWidget {
  const MyManajemenPakan({Key? key}) : super(key: key);

  @override
  State<MyManajemenPakan> createState() => _MyManajemenPakanState();
}

class _MyManajemenPakanState extends State<MyManajemenPakan> {
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
              height: 100,
            ),
            Card(
              elevation: 20,
              color: const Color.fromARGB(255, 213, 217, 219),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              child: const SizedBox(
                width: 300,
                height: 60,
                child: Center(
                    child: Text('MANAJEMEN PAKAN',
                        style: TextStyle(fontSize: 16))),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            const Text(
              "Umur Udang",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
            const SizedBox(
              height: 40,
              width: 100,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3, color: Color.fromARGB(255, 213, 217, 219)),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 213, 217, 219),
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    Text(
                      "Pengaturan Waktu",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    SizedBox(
                      height: 40,
                      width: 100,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3,
                                color: Color.fromARGB(255, 213, 217, 219)),
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(255, 213, 217, 219),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  children: const [
                    Text(
                      "Pengaturan Pakan",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    SizedBox(
                      height: 40,
                      width: 100,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3,
                                color: Color.fromARGB(255, 213, 217, 219)),
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(255, 213, 217, 219),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  children: const [
                    Text(
                      "Autofeeder",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    Card(
                      elevation: 20,
                      color: Color.fromARGB(255, 213, 217, 219),
                      child: SizedBox(
                        width: 60,
                        height: 40,
                        child: Center(
                            child: Text(' ', style: TextStyle(fontSize: 12))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    SizedBox(
                      height: 40,
                      width: 100,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3,
                                color: Color.fromARGB(255, 213, 217, 219)),
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(255, 213, 217, 219),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  children: const [
                    SizedBox(
                      height: 40,
                      width: 100,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3,
                                color: Color.fromARGB(255, 213, 217, 219)),
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(255, 213, 217, 219),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  children: const [
                    Card(
                      elevation: 20,
                      color: Color.fromARGB(255, 213, 217, 219),
                      child: SizedBox(
                        width: 60,
                        height: 40,
                        child: Center(
                            child: Text(' ', style: TextStyle(fontSize: 12))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 260,
            ),
          ],
        ));
  }
}
