import 'package:flutter/material.dart';
import 'package:flutter_web_intercom_sample/screens/without_intercom.dart';
import 'package:flutter_web_intercom_sample/widgets/intercom.dart';

class ScreenWithIntercom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(title: Text("Screen with Intercom"));
  }

  Widget _buildBody(BuildContext context) {
    return Intercom(
      tag: "intercom-101",
      child: Center(
        child: TextButton(
          child: Text("Go to screen without Intercom"),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ScreenWithoutIntercom()),
          ),
        ),
      ),
    );
  }
}
