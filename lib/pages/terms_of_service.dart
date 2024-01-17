import 'package:flutter/material.dart';

class TermsOfServicesPage extends StatefulWidget {
  const TermsOfServicesPage({Key? key}) : super(key: key);

  @override
  State<TermsOfServicesPage> createState() => _TermsOfServicesPageState();
}

class _TermsOfServicesPageState extends State<TermsOfServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms of Services Page'),
      ),
      body: const Center(
        child: Column(
          children: [Text("This is Terms of Services Page Screen")],
        ),
      ),
    );
  }
}
