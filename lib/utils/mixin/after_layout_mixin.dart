import 'dart:async';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

mixin AfterLayoutMixin<T extends StatefulWidget> on State<T> {
  void afterLayout();

  @override
  void initState() {
    super.initState();
    unawaited(afterActionFrameCompletes());
  }

  Future<void> afterActionFrameCompletes() async {
    await SchedulerBinding.instance.endOfFrame;
    afterLayout();
  }
}
