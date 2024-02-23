import 'package:flutter/material.dart';

class ScreenWithoutIntercom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(title: Text("Screen without Intercom"));
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: TextButton(
        child: Text("Go to Screen with Intercom"),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
