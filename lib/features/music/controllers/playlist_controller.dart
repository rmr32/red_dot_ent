import 'package:audioplayers/audioplayers.dart';

import 'package:red_dot_ent/features/music/models/song_model.dart';
import 'package:red_dot_ent/utils/constants/audio.dart';
import 'package:red_dot_ent/utils/constants/exports.dart';

class PlaylistController extends GetxController {
  static PlaylistController get instance => Get.find();
  final AudioPlayer _audioPlayer = AudioPlayer();
  final RxBool _isPlaying = false.obs;
  final RxBool _isLoopMode = false.obs;
  final Rx<Duration> _currentDuration = Duration.zero.obs;
  final Rx<Duration> _totalDuration = Duration.zero.obs;

  /// --- Initial Current Song --- ///
  final RxInt _currentSong = 0.obs;

  /// --- Getters --- ///
  List<SongModel> get playlist => _playlist;
  RxInt get currentSong => _currentSong;
  RxBool get isPlaying => _isPlaying;
  RxBool get isLoopMode => _isLoopMode;
  Rx<Duration> get currentDuration => _currentDuration;
  Rx<Duration> get totalDuration => _totalDuration;

  // PlaylistController({ listenToDuration();});

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _audioPlayer.setSourceAsset(_playlist[_currentSong.toInt()].audio);

    listenToDuration();
  }

  void listenToDuration() {
    _audioPlayer.onDurationChanged.listen((Duration newDuration) {
      _totalDuration.value = newDuration;
    });

    _audioPlayer.onPositionChanged.listen((Duration newPosition) {
      _currentDuration.value = newPosition;
    });

    _audioPlayer.onPlayerComplete.listen((event) {
      if (_isLoopMode.value) {
        play();
      } else {
        playNextSong();
      }
    });
  }

  /// --- Playlist --- ///
  final List<SongModel> _playlist = [
    SongModel(
      songName: EText.audioBlocBoy,
      artistName: EText.audioJD,
      albumArt: EImages.playlistBlocBoy,
      audio: EAudio.blockBoy,
    ),
    SongModel(
      songName: EText.audioLilDurkLilBaby,
      artistName: EText.audioJD,
      albumArt: EImages.playlistLilDurkLilBaby,
      audio: EAudio.lilDurkLilBaby,
    ),
    SongModel(
      songName: EText.audioRoddyRicch,
      artistName: EText.audioJD,
      albumArt: EImages.playlistRoddyRicch,
      audio: EAudio.roddyRicch,
    ),
    SongModel(
      songName: EText.audioFuture,
      artistName: EText.audioJD,
      albumArt: EImages.playlistFuture,
      audio: EAudio.future,
    ),
    SongModel(
      songName: EText.audioCeo,
      artistName: EText.audioJD,
      albumArt: EImages.playlistCeo,
      audio: EAudio.ceo,
    ),
    SongModel(
      songName: EText.audioSir,
      artistName: EText.audioJD,
      albumArt: EImages.playlistSir,
      audio: EAudio.sir,
    )
  ];

  /// --- Change Song --- ///
  void changeSong(int index) {
    _currentSong.value = index;
    play();
  }

  /// --- Play Song --- ///
  Future<void> play() async {
    // await player.setSource(AssetSource('sounds/coin.wav'));
    // await player.setVolume(0.5);
    // await player.setPlaybackRate(0.5); // half speed
    await _audioPlayer.stop();

    final String path = _playlist[_currentSong.toInt()].audio;
    await _audioPlayer.play(AssetSource(path));
    _isPlaying.value = true;
  }

  /// --- Stop Song --- ///
  void stop() async {
    await _audioPlayer.stop();
    _currentDuration.value = Duration.zero;
    _isPlaying.value = false;
  }

  /// --- Pause Song --- ///
  void pause() async {
    await _audioPlayer.pause();

    _isPlaying.value = false;
  }

  /// --- Resume Song --- ///
  void resume() async {
    await _audioPlayer.resume();

    _isPlaying.value = true;
  }

  /// --- Calls Pause or Resume --- ///
  void pauseOrResume() async {
    if (_isPlaying.value) {
      pause();
    } else {
      resume();
    }
  }

  /// --- Seek Position --- ///
  void seek(Duration position) async {
    await _audioPlayer.seek(position);
  }

  /// --- Play Next Song --- ///
  void playNextSong() {
    if (_currentSong < _playlist.length - 1) {
      _currentSong.value = _currentSong.value + 1;
    } else {
      _currentSong.value = 0;
    }
    play();
  }

  /// --- Play Previous Song --- ///
  void playPreviousSong() {
    if (_currentDuration.value.inSeconds > 3) {
    } else {
      if (_currentSong > 0) {
        _currentSong.value = _currentSong.value - 1;
      } else {
        _currentSong.value = _playlist.length - 1;
      }
    }
    play();
  }

  /// --- Shuffle --- ///
  void shuffle() async {
    // await _audioPlayer.
  }

  /// --- Repeat --- ///
  void loop() {
    if (_isLoopMode.value) {
      _isLoopMode.value = false;
    } else {
      _isLoopMode.value = true;
    }
  }

  @override
  void onClose() {
    _audioPlayer.dispose();
    super.onClose();
  }
}
