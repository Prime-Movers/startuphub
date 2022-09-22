import 'package:flutter/cupertino.dart';
import 'dart:collection';

// ignore: camel_case_types
class form {
  late String startupname;
  late String description;
  form({required this.startupname, required this.description});
}

class formData extends ChangeNotifier {
  List<form> _startup = [];
  List<form> _jobs = [];
  int i = 0;
  UnmodifiableListView<form> get startup {
    return UnmodifiableListView(_startup);
  }

  void addStartupContainer(String startupname, String description) {
    final f = form(startupname: startupname, description: description);
    _startup.add(f);
  }

  void addJobContainer(String starupname, String jobdescription) {
    final f = form(startupname: starupname, description: jobdescription);
    _jobs.add(f);
  }
}
