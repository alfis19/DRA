import 'package:flutter/material.dart';

const Widget verticalSpaceSmall = SizedBox(height: 10.0);
const Widget verticalSpaceMedium = SizedBox(height: 25.0);
const Widget verticalSpaceTiny = SizedBox(height: 5.0);

class matkul extends StatefulWidget {
  const matkul({Key? key}) : super(key: key);

  @override
  State<matkul> createState() => _matkulState();
}

// ignore: camel_case_types
class _matkulState extends State<matkul> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        titleSpacing: 0.0,
        elevation: 4,
        centerTitle: true,
        backgroundColor: Color(0xff3813A0),
        title: Text(
          "Mata Kuliah",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
          textAlign: TextAlign.center,
        ),
      ),
      backgroundColor: Color(0xff3813A0),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  verticalSpaceSmall,
                  Container(
                    height: size.height * 0.20,
                    width: size.width * 0.8,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: const [
                                Text('Mobile Programing',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black)),
                                Text(' Okyza Maherdy P, M.T.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black)),
                                Divider(
                                  color: Color(0xff3813A0),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      // Change your radius here
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xff3813A0)),
                                ),
                                onPressed: () {},
                                child: const Text('Materi',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18))),
                            ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      // Change your radius here
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xff3813A0)),
                                ),
                                onPressed: () {},
                                child: const Text('Tugas',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18))),
                          ],
                        ),
                        verticalSpaceSmall,
                        Text(' Waktu : Jumat, 08.00-10.00',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                  verticalSpaceSmall,
                  Container(
                    height: size.height * 0.23,
                    width: size.width * 0.8,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: const [
                                Text('Aplication Programming Interface (API)',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black)),
                                Text(' Yuliana, S.Pd., M.Cs. ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black)),
                                Divider(
                                  color: Color(0xff3813A0),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      // Change your radius here
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xff3813A0)),
                                ),
                                onPressed: () {},
                                child: const Text('Materi',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18))),
                            ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      // Change your radius here
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xff3813A0)),
                                ),
                                onPressed: () {},
                                child: const Text('Tugas',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18))),
                          ],
                        ),
                        verticalSpaceSmall,
                        Text(' Waktu : Senin, 10.00-12.00',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                  verticalSpaceSmall,
                  Container(
                    height: size.height * 0.23,
                    width: size.width * 0.8,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: const [
                                Text('Databse Fundamental',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black)),
                                Text(' Rudi Kurniawan, M.T. ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black)),
                                Divider(
                                  color: Color(0xff3813A0),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      // Change your radius here
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xff3813A0)),
                                ),
                                onPressed: () {},
                                child: const Text('Materi',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18))),
                            ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      // Change your radius here
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xff3813A0)),
                                ),
                                onPressed: () {},
                                child: const Text('Tugas',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18))),
                          ],
                        ),
                        verticalSpaceSmall,
                        Text(' Waktu : Senin, 08.00-10.00',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
