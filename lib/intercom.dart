@JS()
library javascript_bundler;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:js/js.dart';
import 'package:visibility_detector/visibility_detector.dart';

@JS('showHideIntercom')
external void showHideIntercom(bool show);

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