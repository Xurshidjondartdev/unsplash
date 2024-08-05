import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unsplash/src/core/constants/context_extansion.dart';
import 'package:unsplash/src/core/widget/app_material_context.dart';
import 'package:unsplash/src/feature/main/view_model/vm/main_vm.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unsplash App'),
        centerTitle: true,
        actions: [
          CupertinoSwitch(
            value: themeController.isDark,
            onChanged: (value) {
              themeController.switchTheme();
            },
          ),
        ],
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              width: double.infinity,
              child: ListView.builder(
                controller: ref.read(mainVM).scrollController,
                itemCount: ref.read(mainVM).getAllImagesModel.length,
                itemBuilder: (_,index){
                  return Card(
                    color: context.theme.colorScheme.surfaceContainerHighest,
                    child: SizedBox(
                      height: 400,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Image.network(
                              ref.read(mainVM).getAllImagesModel[index].urls?.small??"https://ralfvanveen.com/wp-content/uploads/2021/06/Placeholder-_-Glossary.svg",
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
