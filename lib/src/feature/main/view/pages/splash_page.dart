import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../view_model/vm/main_vm.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    ref.read(mainVM).getImages().then((value) {
      if (mounted) {
        // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomePage()), (r) => false);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: SizedBox(
          height: 150,
          width: 150,
          child: Image.network(
            "https://pressbooks.cuny.edu/app/uploads/sites/93/2022/08/thanuj-mathew-8CSTVoDMEXg-unsplash-scaled.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
