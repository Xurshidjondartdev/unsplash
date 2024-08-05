import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/entity/get_all_images_model.dart';
import '../data/repository/main_repo.dart';

final mainVM = ChangeNotifierProvider((ref) {
  return MainVm();
});

class MainVm with ChangeNotifier {
  List<GetAllImageModel> getAllImagesModel = [];
  ScrollController scrollController = ScrollController();
  int page = 0;
  bool isLoading = false;

  MainVm() {
    scrollController.addListener(getScrollEnd);
  }

  void getScrollEnd() async {
    if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
      isLoading = true;
      notifyListeners();
      await getImages();
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getImages() async {
    List<GetAllImageModel> newImages = await MainRepo().getAllImages(page: page) ?? [];
    getAllImagesModel.addAll(newImages);
    page++;
  }

  @override
  void dispose() {
    scrollController.removeListener(getScrollEnd);
    scrollController.dispose();
    super.dispose();
  }
}
