import 'package:adiza_exchange/data_models/user.dart';
import 'package:adiza_exchange/res/app_assets.dart';
import 'package:adiza_exchange/res/app_strings.dart';

class Users {
  Users._();

  static const larry = User(
    photo: AppAssets.larry,
    fullName: "Bill Palmer",
    title: "Head of IT Operations",
    phone: "+233 (245) 234 123",
    email: "bill@partsunlimited.llc",
    address: "Alamaba, USA",
  );

  static const joan = User(
    photo: AppAssets.joan,
    fullName: "Joan Dewith",
    title: "Head of Marketing",
    phone: "+233 (245) 234 123",
    email: "Joan@adizaexchangellc.co",
    address: "Ohio, USA",
  );
}
