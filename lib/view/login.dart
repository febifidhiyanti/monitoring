import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:monitoring/view/firebase_auth.dart';
import 'package:monitoring/view/home_screen.dart';
import 'package:monitoring/view/login/validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();

  bool _isProcessing = false;

  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomeScreen(
            user: user,
          ),
        ),
      );
    }

    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusEmail.unfocus();
        _focusPassword.unfocus();
      },
      child: Scaffold(
          body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/backgroundhome.png"),
              fit: BoxFit.fill),
        ),
        child: FutureBuilder(
          future: _initializeFirebase(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Padding(
                padding:
                    const EdgeInsets.only(left: 24.0, right: 24.0, top: 48),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 30,
                    ),
                    Card(
                      elevation: 20,
                      color: const Color.fromARGB(255, 213, 217, 219),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset(
                        'assets/images/user.png',
                        height: 80,
                        width: 80,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "HELLO IZMI",
                      style: TextStyle(
                          color: Color.fromARGB(255, 181, 184, 185),
                          fontFamily: "InknutAntiqua",
                          fontWeight: FontWeight.w400,
                          fontSize: 38),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: const Alignment(-0.8, 0.0),
                            child: const Text(
                              "Email",
                              style: TextStyle(
                                color: Color.fromARGB(255, 213, 217, 219),
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            controller: _emailTextController,
                            focusNode: _focusEmail,
                            validator: (value) => Validator.validateEmail(
                              email: value,
                            ),
                            decoration: InputDecoration(
                              // hintText: "Email",
                              errorBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3,
                                    color: Color.fromARGB(
                                        255, 213, 217, 219)), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              filled: true,
                              fillColor:
                                  const Color.fromARGB(255, 213, 217, 219),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            alignment: const Alignment(-0.80, 0.0),
                            child: const Text(
                              "Password",
                              style: TextStyle(
                                color: Color.fromARGB(255, 213, 217, 219),
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          TextFormField(
                            controller: _passwordTextController,
                            focusNode: _focusPassword,
                            obscureText: true,
                            validator: (value) => Validator.validatePassword(
                              password: value,
                            ),
                            decoration: InputDecoration(
                              // hintText: "Password",
                              errorBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3,
                                    color: Color.fromARGB(
                                        255, 213, 217, 219)), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              filled: true,
                              fillColor:
                                  const Color.fromARGB(255, 213, 217, 219),
                            ),
                          ),
                          const SizedBox(
                            height: 36,
                          ),
                          _isProcessing
                              ? CircularProgressIndicator()
                              : Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                        child: Container(
                                      width: 180,
                                      height: 50,
                                      child: ElevatedButton(
                                        onPressed: () async {
                                          _focusEmail.unfocus();
                                          _focusPassword.unfocus();

                                          if (_formKey.currentState!
                                              .validate()) {
                                            setState(() {
                                              _isProcessing = true;
                                            });

                                            User? user =
                                                await FirebaseAuthHelper
                                                    .signInUsingEmailPassword(
                                              email: _emailTextController.text,
                                              password:
                                                  _passwordTextController.text,
                                            );

                                            setState(() {
                                              _isProcessing = false;
                                            });

                                            if (user != null) {
                                              Navigator.of(context)
                                                  .pushReplacement(
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomeScreen(user: user),
                                                ),
                                              );
                                            }
                                          }
                                        },
                                        child: Text(
                                          'LOGIN',
                                          style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontWeight: FontWeight.w400),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xffF1601E),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                    )),
                                  ],
                                )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }

            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      )),
    );
  }
}
