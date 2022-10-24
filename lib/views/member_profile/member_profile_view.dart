import 'package:adiza_exchange/extensions/text.dart';
import 'package:adiza_exchange/extensions/widget_list.dart';
import 'package:adiza_exchange/res/app_assets.dart';
import 'package:adiza_exchange/views/member_profile/member_profile_viewmodel.dart';
import 'package:adiza_exchange/widgets/div/div.dart';
import 'package:adiza_exchange/widgets/gray_avatar/gray_avatar.dart';
import 'package:adiza_exchange/widgets/gray_bar/gray_bar.dart';
import 'package:adiza_exchange/widgets/icon_text/icon_text.dart';
import 'package:adiza_exchange/widgets/social/social.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:stacked/stacked.dart';

class MemberProfileView extends StatelessWidget {
  const MemberProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MemberProfileViewModel>.reactive(
      viewModelBuilder: () => MemberProfileViewModel(),
      onModelReady: (model) => model.init(),
      builder: (_, model, __) {
        return GestureDetector(
          onTap: model.onToggle,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              centerTitle: true,
              title: const Text("Member Profile").white(),
            ),
            body: ListView(
              padding: const EdgeInsets.symmetric(
                vertical: 64,
                horizontal: 32,
              ),
              children: [
                //
                Row(
                  children: [
                    Image.asset(model.user.photo),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(model.user.fullName).size(18),
                        Div(model.user.title).size(16),
                      ].spacing(4),
                    ),
                  ].spacing(16),
                ),

                Row(
                  children: [
                    const Social.twitter(),
                    const Social.linkedIn(),
                  ].spacing(16),
                ),

                IconText(icon: PhosphorIcons.phone, text: model.user.phone),
                IconText(icon: PhosphorIcons.envelope, text: model.user.email),
                IconText(icon: PhosphorIcons.mapPin, text: model.user.email),
              ].spacing(32),
            ),
          ),
        );
      },
    );
  }
}
