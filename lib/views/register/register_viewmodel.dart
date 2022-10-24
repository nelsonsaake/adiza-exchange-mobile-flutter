import 'package:adiza_exchange/viewmodels/context_viewmodel.dart';
import 'package:image_picker/image_picker.dart';

class RegisterViewModel extends ContextViewModel {
  // photo selection

  // selected photo cache
  XFile? selectedPhoto;

  // photo availability checker
  bool get showSelectPhotoPrompt => selectedPhoto == null;

  // selector
  final ImagePicker _picker = ImagePicker();

  // after selecting photo, if process doesn't have enough memory it is
  // cleaned up and restarted, this is to catch selected image after that restart
  // [selectPhoto] get the selected photo if everything goes well
  Future<void> getLostData() async {
    final LostDataResponse response = await _picker.retrieveLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.files != null) {
      for (final XFile file in response.files!) {
        selectedPhoto = file;
      }
    } else {
      // _handleError(response.exception);
    }
    notifyListeners();
  }

  // select photo
  void selectPhoto() async {
    selectedPhoto = await _picker.pickImage(source: ImageSource.gallery);
    notifyListeners();
  }

  // register user with server

  Future? register() {
    return runBusyFuture(
      Future.delayed(const Duration(seconds: 1)),
    ).then(
      (value) => navigateToHomeQRView(),
    );
  }

  // init

  @override
  Future init() async {
    return getLostData();
  }
}
