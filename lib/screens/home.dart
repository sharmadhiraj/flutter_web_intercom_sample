import 'package:flutter/material.dart';
import 'package:flutter_web_intercom_sample/screens/with_intercom.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(title: Text("Home"));
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: TextButton(
        child: Text("Go to screen with Intercom"),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ScreenWithIntercom()),
        ),
      ),
    );
  }
}
