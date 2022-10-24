import 'package:adiza_exchange/archtypes/users.dart';
import 'package:adiza_exchange/data_models/user.dart';
import 'package:adiza_exchange/viewmodels/context_viewmodel.dart';

class MemberProfileViewModel extends ContextViewModel {
  User user = Users.larry;

  void onToggle() {
    if (user == Users.larry) {
      user = Users.joan;
    } else {
      user = Users.larry;
    }
    notifyListeners();
  }
}
