import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_intercom_sample/bundler/stud_bundler.dart'
    if (dart.library.js) 'package:flutter_web_intercom_sample/bundler/javascript_bundler.dart';
import 'package:visibility_detector/visibility_detector.dart';

class Intercom extends StatelessWidget {
  final String tag;
  final Widget child;

  Intercom({
    @required this.tag,
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? VisibilityDetector(
            key: Key(tag),
            onVisibilityChanged: (info) =>
                showHideIntercom(info.visibleFraction > 0),
            child: child,
          )
        : child;
  }
}
