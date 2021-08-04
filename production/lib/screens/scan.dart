import 'package:flutter/material.dart';

class ARScan extends StatefulWidget {
  static String routeName = "/ARscan";
  @override
  _ARScanState createState() => _ARScanState();
}

class _ARScanState extends State<ARScan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
    );
  }
}
