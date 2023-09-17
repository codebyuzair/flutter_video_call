import 'package:flutter/material.dart';
import 'package:flutter_video_call/login_page.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

import 'constants.dart';


class Call extends StatelessWidget {
  const Call({Key? key, required this.callID}) : super(key: key);
  final String callID;


  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: MyConst.appId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: MyConst.appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: LoginPage.userId,
      userName: LoginPage.name,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );
  }
}