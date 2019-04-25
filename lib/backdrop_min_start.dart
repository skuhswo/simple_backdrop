// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

const double _kFlingVelocity = 2.0;

class Backdrop extends StatefulWidget {
  final Widget frontPanel;
  final Widget backPanel;
  final Widget title;

  const Backdrop({
    @required this.frontPanel,
    @required this.backPanel,
    @required this.title,
  })  : assert(frontPanel != null),
        assert(backPanel != null),
        assert(title != null);

  @override
  _BackdropState createState() => _BackdropState();
}

class _BackdropState extends State<Backdrop>
    with SingleTickerProviderStateMixin {

  // Wir benötigen einen AnimationController

  @override
  void initState() {
    super.initState();

    // Der Animation Controller muss hier initialisiert werden.
  }

  @override
  void dispose() {
    // Hier muss der AnimationController wieder freigegeben werden.
  }

  // Diese Methode wird aufgerufen, wenn das Icon gedrückt wird.
  void _toggleBackdropPanelVisibility() {
    // Hier wird im AnimationController die Transition getriggert (fling)
  }

  // Diese Methode wird an den Layout Builder (siehe unten) übergeben.
  Widget _buildStack(BuildContext context, BoxConstraints constraints) {
    return Container(
     
      color: Colors.teal[200], // widget.currentCategory.color,
      // Hier bauen wir einen Stack auf mit BackPanel und FrontPanel
      // Ausserdem verwenden wir eine FadeTransition, um den FrontPanel ein- und auszublenden
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[200], // widget.currentCategory.color,
        elevation: 0.0,
        // leading:
            // Hier ein Icon einfügen
            // Und eine Callback-Funktion, wenn man das Icon drückt.
        title: widget.title,
      ),
      // body:
        // Hier verwenden wir einen LayoutBuilder()
      resizeToAvoidBottomPadding: false,
    );
  }
}
