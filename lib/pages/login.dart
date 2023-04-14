import 'package:dra/pages/home.dart';
import 'package:dra/pages/register.dart';
import 'package:flutter/material.dart';

const Widget verticalSpaceSmall = SizedBox(height: 10.0);
const Widget verticalSpaceMedium = SizedBox(height: 25.0);
const Widget verticalSpaceTiny = SizedBox(height: 5.0);
const Widget verticalSpaceLarge = SizedBox(height: 50.0);
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenWidthPercent(BuildContext context, {double multipleBy = 1}) =>
    (screenWidth(context) * multipleBy);

class Login_ extends StatefulWidget {
  const Login_({Key? key}) : super(key: key);

  @override
  State<Login_> createState() => _Login_State();
}

class _Login_State extends State<Login_> {
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
                  height: MediaQuery.of(context).size.height * .25,
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
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .70,
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
                        'Login',
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
                      SizedBox(
                        height: 50.0,
                        child: InkWell(
                          onTap: () {
                            // locator<NavigationService>()
                            //     .navigateTo(ForgotPasswordRoute);
                          },
                          child: Center(
                            child: Text('Forgot Password'),
                          ),
                        ),
                      ),
                      verticalSpaceSmall,
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
                              'Login',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                letterSpacing: 1.5,
                              ),
                            )),
                      ),
                      verticalSpaceSmall,
                      SizedBox(
                        height: 50.0,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return Register();
                            }));
                          },
                          child: const Center(
                            child: Text('Register'),
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