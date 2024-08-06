import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrScanner extends StatefulWidget {
  const QrScanner({super.key});

  @override
  State<QrScanner> createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scan QR Here"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "/generate");
              },
              icon: const Icon(Icons.qr_code))
        ],
      ),
      body: MobileScanner(
        controller: MobileScannerController(
            detectionSpeed: DetectionSpeed.noDuplicates,
            returnImage: true),

        onDetect: (capture) {
          final List<Barcode> barcode=capture.barcodes;
          
        },
      ),
    );
  }
}
