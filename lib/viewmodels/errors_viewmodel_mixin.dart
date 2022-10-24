import 'package:stacked/stacked.dart';

mixin ErrorsViewModelMixin on BaseViewModel {
  String get errorMessage {
    return error.toString();
  }
}
