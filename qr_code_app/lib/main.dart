import 'package:flutter/material.dart';
import 'package:scan_and_barcode_app/screens/create_qr.dart';
import 'package:scan_and_barcode_app/screens/scan_qr.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: QrCode(),
  ));
}

class QrCode extends StatefulWidget {
  const QrCode({Key? key}) : super(key: key);

  @override
  _QrCodeState createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Create and Scan QR Code"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.grey.shade700),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (builder) => CreateQr()));
                },
                child: Text("Create QR Code")),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.grey.shade700),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (builder) => ScanScreen()));
                },
                child: Text("Scan QR Code"))
          ],
        ),
      ),
    );
  }
}
