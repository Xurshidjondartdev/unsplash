import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainPage  extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context,ref) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('Unsplash App'),
        centerTitle: true,
        actions: [
          
        ],
      ),
    );
  }
}