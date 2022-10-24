import 'package:stacked/stacked.dart';

import 'errors_viewmodel_mixin.dart';
import 'navigator_viewmodel_mixin.dart';

abstract class ContextViewModel extends BaseViewModel
    with NavigatorViewModelMixin, ErrorsViewModelMixin {

  // is not busy
  bool get isNotBusy => !isBusy;

  // init
  void init() {}
}
