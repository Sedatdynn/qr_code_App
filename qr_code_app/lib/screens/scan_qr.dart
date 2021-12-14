import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  String qr = "Not Yet Scanned";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Scan your QR Code"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              qr,
              style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 32.0),
            ),
            SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.grey.shade700),
                onPressed: scanQR,
                child: Text("Scan Your QR Code"))
          ],
        ),
      ),
    );
  }

  Future<void> scanQR() async {
    try {
      FlutterBarcodeScanner.scanBarcode("#00FF00", "Cancel", true, ScanMode.QR)
          .then((value) {
        setState(() {
          qr = value;
        });
      });
    } catch (e) {
      setState(() {
        qr = "unable to read the QR Code";
      });
    }
  }
}
