// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'backdrop.dart';

Widget frontPanel = Container(
    padding: EdgeInsets.all(16.0),
    color: Colors.amber[100],
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Text("Front Panel")],
    )
);

Widget backPanel = Container(
    padding: EdgeInsets.only(
      left: 8.0,
      right: 8.0,
      bottom: 48.0,
    ),
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [Text("Back Panel")],
      ),
    )
);

void main() {
  runApp(SimpleBackdropApp());
}

class SimpleBackdropApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Backdrop App',
      home: Backdrop(
        frontPanel: frontPanel,
        backPanel: backPanel,
        title: Text('Front'),
      ),
    );
  }
}
