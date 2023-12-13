import 'dart:async';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

mixin AfterLayoutMixin<T extends StatefulWidget> on State<T> {
  @protected
  void afterLayout();

  @override
  void initState() {
    super.initState();
    unawaited(afterActionFrameCompletes());
  }

  @protected
  Future<void> afterActionFrameCompletes() async {
    await SchedulerBinding.instance.endOfFrame;
    afterLayout();
  }
}
