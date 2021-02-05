import 'dart:math';

import 'package:flutter/material.dart';

class CertificatesViewer extends StatefulWidget {
  @override
  _CertificatesViewerState createState() => _CertificatesViewerState();
}

class _CertificatesViewerState extends State<CertificatesViewer> {
  final List<String> certificatePath = [
    'asset/certificates/certificate-01.png',
    'asset/certificates/certificate-02.png',
    'asset/certificates/certificate-03.png',
  ];

  Widget certificateViewer;

  @override
  void initState() {
    super.initState();
    List<Widget> imageChildren = [];

    certificatePath.reversed.toList().asMap().forEach((index, certificate) {
      int angleDegree;
      if (index == certificatePath.length - 1) {
        angleDegree = 0;
      } else {
        angleDegree = Random().nextInt(10) - 5;
      }
      imageChildren.add(Transform.rotate(
        angle: angleDegree * (pi / 170),
        child: Image.asset(
          certificate,
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ),
      ));
    });

    certificateViewer = Stack(
      children: imageChildren,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: certificateViewer,
    );
  }
}
