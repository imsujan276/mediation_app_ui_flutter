import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:get/get.dart';

class MusicController extends GetxController {
  RxBool playing = false.obs;
  //create a new player
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  RxString musiclength = '00:00'.obs;
  RxDouble musicposition = 0.0.obs;
  double length = 0.0;

  @override
  void onInit() {
    super.onInit();
    loadAllmusic();
  }

  loadAllmusic() async {
    await assetsAudioPlayer.open(
      Audio("assets/audio/time.mp3"),
      showNotification: true,
      autoStart: false,
    );

    //Retrieve directly the current played asset
    final PlayingAudio p = assetsAudioPlayer.current.value!.audio;

    musiclength.value = p.duration.inMinutes.toStringAsFixed(0) +
        ':' +
        (p.duration.inSeconds - (p.duration.inMinutes * 60)).toStringAsFixed(0);
    length = p.duration.inSeconds.toDouble();
    // double val = 0;

    assetsAudioPlayer.playlistAudioFinished.listen((Playing pl) {
      playing.value = false;
    });
  }

  playorpause() async {
    if (!playing.value)
      assetsAudioPlayer.play();
    else
      assetsAudioPlayer.pause();

    playing.value = !playing.value;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
