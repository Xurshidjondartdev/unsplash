import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unsplash/src/feature/main/view_model/data/entity/get_all_images_model.dart';
import '../../../../../core/api/api.dart';
import '../../../../../core/api/api_constants.dart';
import '../../vm/main_vm.dart';

final mainFetchData = FutureProvider((ref) async {
  final getResult = ref.read(mainVM);
  return getResult.getImages();
});

final class MainRepo {
  Future<List<GetAllImageModel>?> getAllImages({required int page}) async {
    String? result = await Api.GET(ApiConstants.apiGetAllImages, ApiConstants.paramsGetAllImages(page: page));
    if (result != null) {
      List<GetAllImageModel> getAllImageModel = getAllImageModelFromJson(result);
      return getAllImageModel;
    } else {
      return null;
    }
  }
}
