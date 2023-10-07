import 'package:flutter/material.dart';
import 'package:live_stream/utils.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

// Live Page Prebuilt UI from ZEGOCLOUD UIKits
class LiveScreenView extends StatelessWidget {
  final String liveID, userID;
  final bool isHost;

  const LiveScreenView(
      {super.key,
      required this.liveID,
      this.isHost = false,
      required this.userID});

  // Add your app id here and app sign in
  // Make sure you replace with your own

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltLiveStreaming(
        appID: Utils.appId,
        appSign: Utils.appSignin,
        userID: userID,
        userName: 'user_$userID',
        liveID: liveID,
        config: isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience()
          ..audioVideoViewConfig.showAvatarInAudioMode = true
          ..audioVideoViewConfig.showSoundWavesInAudioMode = true,
      ),
    );
  }
}
