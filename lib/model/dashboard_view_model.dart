import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'dart:async';

import 'base_model.dart';

class DashboardViewModel extends BaseModel {
  String datetime = '';
  String time = '';
  late Timer timer;
  final bool _busy = false;
  @override
  bool get busy => _busy;
  @override
  void setBusy(bool bool) {}
  void initData(BuildContext context) async {
    setBusy(true);
    date();
    // getAllReport(pages);
    Timer.periodic(Duration(seconds: 1), (Timer t) => times());
    // getNotifications(context);
    setBusy(false);
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void date() {
    var now = DateTime.now();
    var formatter = DateFormat('dd MMMM yyyy');
    String formattedDate = formatter.format(now);
    datetime = formattedDate;
    print(DateFormat().format(now));
    print("fomart data" + formattedDate);
    print("date " + now.day.toString());
  }

  void times() {
    final String formattedDateTime =
        DateFormat('kk:mm:ss').format(DateTime.now()).toString();
    setBusy(true);
    time = formattedDateTime;
    setBusy(false);
  }
}

String formatDate(int date) {
  var tempData = DateTime.fromMillisecondsSinceEpoch(date * 1000, isUtc: false);
  DateFormat dateFormat = DateFormat("dd-MM-yyyy HH:mm");
  var returnData = dateFormat.format(tempData);
  return returnData;
}
