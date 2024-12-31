import 'package:flutter/material.dart';

class ManajemenPH extends StatelessWidget {
  const ManajemenPH({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 2, 28, 49),
      body: FractionallySizedBox(
        widthFactor: 1,
        child: MyManajemenPH(),
      ),
    ));
  }
}

class MyManajemenPH extends StatefulWidget {
  const MyManajemenPH({Key? key}) : super(key: key);

  @override
  State<MyManajemenPH> createState() => _MyManajemenPHState();
}

class _MyManajemenPHState extends State<MyManajemenPH> {
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
              height: 140,
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
                      child:
                          Text('MANAJEMEN PH', style: TextStyle(fontSize: 16))),
                )),
            Column(
              children: [
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
                        ),
                        onPressed: () {},
                        child: const Text(
                          "pH -",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        const Text(
                          "Molase",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),
                        const SizedBox(
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
                        const Text(
                          "Volume",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),
                        const SizedBox(
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
                      width: 20,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 213, 217, 219),
                        ),
                        onPressed: () {},
                        child: Container(
                          width: 30,
                          height: 30,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 6, 20, 145),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
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
                        ),
                        onPressed: () {},
                        child: const Text(
                          "pH +",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        const Text(
                          "CaCO3",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),
                        const SizedBox(
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
                        const Text(
                          "Volume",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),
                        const SizedBox(
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
                      width: 20,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 213, 217, 219),
                        ),
                        onPressed: () {},
                        child: Container(
                          width: 60,
                          height: 60,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 213, 217, 219),
                            ),
                            onPressed: () {},
                            child: Container(
                              width: 30,
                              height: 30,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 6, 20, 145),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 240,
            ),
          ],
        ));
  }
}
