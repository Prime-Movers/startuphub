import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter your email',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

String infura_url =
    "https://kovan.infura.io/v3/7e0fcba16fce454c96616d04abdbf3a4";

String owner_private_key =
    "9e2c82ef68ad0baf4bc0fa84bbdc84e39e5f9a49d874cb635f895985ea45d2f8";

String voter_private_key =
    "0007a74d6b0385232ac4722b936742613ba9fb6f57384dcee69a4769320dc6cc";

String contractAddress1 = "0x47891C0f57e38FfFFb7A08C5A81193b5D4471AdD";
