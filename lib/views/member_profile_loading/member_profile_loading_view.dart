import 'package:adiza_exchange/extensions/text.dart';
import 'package:adiza_exchange/extensions/widget_list.dart';
import 'package:adiza_exchange/widgets/gray_bar/gray_bar.dart';
import 'package:adiza_exchange/widgets/gray_avatar/gray_avatar.dart';
import 'package:adiza_exchange/widgets/gray_social/gray_social.dart';
import 'package:flutter/material.dart';

class MemberProfileLoadingView extends StatelessWidget {
  const MemberProfileLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const GrayAvatar(),
              Column(
                children: [
                  const GrayBar.sm(),
                  const GrayBar.sm(),
                ].spacing(16),
              ),
            ].spacing(16),
          ),

          Row(
            children: [
              const GraySocial(),
              const GraySocial(),
            ].spacing(16),
          ),

          const GrayBar.lg(),
          const GrayBar.lg(),
          const GrayBar.lg(),
        ].spacing(32),
      ),
    );
  }
}
