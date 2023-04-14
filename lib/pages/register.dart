import 'package:dra/pages/home.dart';
import 'package:dra/pages/login.dart';
import 'package:flutter/material.dart';

const Widget verticalSpaceSmall = SizedBox(height: 10.0);
const Widget verticalSpaceMedium = SizedBox(height: 25.0);
const Widget verticalSpaceTiny = SizedBox(height: 5.0);
const Widget verticalSpaceLarge = SizedBox(height: 50.0);
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenWidthPercent(BuildContext context, {double multipleBy = 1}) =>
    (screenWidth(context) * multipleBy);

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff3813A0),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                verticalSpaceLarge,
                SizedBox(
                  height: MediaQuery.of(context).size.height * .20,
                  child: Column(
                    children: const [
                      Text(
                        'My Daily',
                        style: TextStyle(
                            fontSize: 65.0,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.5,
                            color: Colors.white),
                      ),
                      verticalSpaceSmall,
                      Text(
                        'Daily Report Amik',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.5,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .75,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45),
                      )),
                  child: Column(
                    children: [
                      verticalSpaceSmall,
                      const Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.5,
                            color: Color(0xff3813A0)),
                      ),
                      verticalSpaceSmall,
                      Container(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.black),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.perm_identity,
                              color: Color(0xff3813A0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            labelText: "Full Name",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      verticalSpaceSmall,
                      Container(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.black),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.perm_identity,
                              color: Color(0xff3813A0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            labelText: "Username",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      verticalSpaceSmall,
                      Container(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.black),
                          obscureText: _isObscure,
                          controller: password,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.lock_outline,
                                color: Color(0xff3813A0),
                              ),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              labelText: "Password",
                              labelStyle: const TextStyle(color: Colors.black),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscure
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                              )),
                        ),
                      ),
                      verticalSpaceSmall,
                      Container(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.black),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Color(0xff3813A0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            labelText: "NPM",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      verticalSpaceSmall,
                      Container(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.black),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Color(0xff3813A0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            labelText: "Email",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      verticalSpaceLarge,
                      Container(
                        width: screenWidthPercent(
                          context,
                          multipleBy: 10,
                        ),
                        height: 55,
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  // Change your radius here
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xff3813A0)),
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return Home_();
                              }));
                            },
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                letterSpacing: 1.5,
                              ),
                            )),
                      ),
                      verticalSpaceSmall,
                      Container(
                        height: 50.0,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return const Login_();
                            }));
                          },
                          child: const Center(
                            child: Text('Login'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}

//nama email password