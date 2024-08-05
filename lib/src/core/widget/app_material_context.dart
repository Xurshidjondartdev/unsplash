import 'package:flutter/material.dart';
import 'package:unsplash/src/core/widget/bloc_page.dart';
import 'package:unsplash/src/feature/setting/inherited_remote_notifier.dart';
import 'package:unsplash/src/feature/setting/remote_controller.dart';

import '../../feature/main/view/pages/main_page.dart';

final RemoteController remoteController = RemoteController();

class AppMaterialContext extends StatelessWidget {
  const AppMaterialContext({super.key});

  @override
  Widget build(BuildContext context) {
    return InheritedRemoteNotifier(
      remoteController: remoteController,
      child: Builder(
        builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Builder(
            builder: (_) {
              if (InheritedRemoteNotifier.maybeOf(_)!.isBlocked) {
                return const BlockPage();
              } else {
                return MainPage();
              }
            },
          ),
        ),
      ),
    );
  }
}
