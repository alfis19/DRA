import 'dart:async';

import 'package:dra/model/dashboard_view_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';

const Widget verticalSpaceSmall = SizedBox(height: 10.0);
const Widget verticalSpaceMedium = SizedBox(height: 25.0);
const Widget verticalSpaceTiny = SizedBox(height: 5.0);

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  String time = '';
  String code = '';
  String getcode = '';

  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _getTime());
  }

  void _getTime() {
    final String formattedDateTime =
        DateFormat('kk:mm:ss').format(DateTime.now()).toString();
    setState(() {
      time = formattedDateTime;
      // print(time);
    });
  }

  @override
  Widget build(BuildContext context) {
    DateTime datetime = DateTime.now();
    String datetime1 = DateFormat("EEEE, dd MMMM yyyy").format(datetime);
    final size = MediaQuery.of(context).size;
    return ViewModelBuilder<DashboardViewModel>.reactive(
        viewModelBuilder: () => DashboardViewModel(),
        // ignore: deprecated_member_use
        onModelReady: (model) => model.initData(context),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                elevation: 4,
                centerTitle: true,
                backgroundColor: const Color(0xff3813A0),
                title: const Text(
                  "Dashboard",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),
              backgroundColor: const Color(0xff3813A0),
              body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const ScrollPhysics(),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .20,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .65,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 229, 226, 226),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: const Radius.circular(30),
                              )),
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * .14,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 18, vertical: 10),
                                ),
                              ),
                              const Text(
                                "Informasi",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                              verticalSpaceSmall,
                              Container(
                                height: size.height * 0.30,
                                width: size.width * 0.8,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black54,
                                        offset: Offset(0, 1),
                                        blurRadius: 1,
                                      )
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          children: const [
                                            Text('Keahlian :',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                    color: Colors.black)),

                                            Text(' Teknik Informatika',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                    color: Colors.black)),
                                            // ElevatedButton(
                                            //     style: ButtonStyle(
                                            //       shape: MaterialStateProperty.all(
                                            //         RoundedRectangleBorder(
                                            //           // Change your radius here
                                            //           borderRadius:
                                            //               BorderRadius.circular(8),
                                            //         ),
                                            //       ),
                                            //       backgroundColor:
                                            //           MaterialStateProperty.all<
                                            //               Color>(Color(0xff3813A0)),
                                            //     ),
                                            //     onPressed: () {},
                                            //     child: const Text('Detail',
                                            //         style: TextStyle(
                                            //             color: Colors.white))),
                                          ],
                                        ),
                                        const Divider(
                                          color: Color(0xff3813A0),
                                        ),
                                        Row(
                                          children: const [
                                            Text('Angkatan :',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black)),
                                            Text(' 2019',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black)),
                                          ],
                                        ),
                                        const Divider(
                                          color: Color(0xff3813A0),
                                        ),
                                        Row(
                                          children: const [
                                            Text('NPM :',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black)),
                                            Text(' 1942039',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black)),
                                          ],
                                        ),
                                        const Divider(
                                          color: Color(0xff3813A0),
                                        ),
                                        Row(
                                          children: const [
                                            Text('Semester :',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black)),
                                            Text(' 8 (Genap)',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black)),
                                          ],
                                        ),
                                        const Divider(
                                          color: Color(0xff3813A0),
                                        ),
                                        Row(
                                          children: const [
                                            Text('Kelas :',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black)),
                                            Text(' IF-A',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            child: const Text(
                              "Hallo...",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            )),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            children: const [
                              Text(
                                "Selamat Datang ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                              Text(
                                "Alfi", //${model.name}
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                        verticalSpaceMedium,
                        Container(
                          height: size.height * 0.2,
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          padding: const EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xff3813A0),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black87,
                                  offset: Offset(0, 1),
                                  blurRadius: 2,
                                ),
                              ]),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const Text('Date',
                                        style: TextStyle(color: Colors.white)),
                                    verticalSpaceTiny,
                                    Text(datetime1,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20.0)),
                                    const Text('Time',
                                        style: TextStyle(color: Colors.white)),
                                    verticalSpaceTiny,
                                    Text(time,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 25.0))
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Icon(Icons.date_range,
                                          color: Colors.white, size: 40.0),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Icon(Icons.access_time,
                                          color: Colors.white, size: 40.0),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Center(
              //   child: ElevatedButton(
              //       onPressed: () {
              //         Navigator.pushReplacement(context,
              //             MaterialPageRoute(builder: (context) {
              //           return const Login_();
              //         }));
              //       },
              //       child: const Text(
              //         'Keluar',
              //         style: TextStyle(fontSize: 25, color: Colors.white),
              //       )),
              // ),
            ));
  }
}
