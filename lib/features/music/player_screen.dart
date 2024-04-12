import 'package:flutter_animate/flutter_animate.dart';
import 'package:red_dot_ent/features/music/models/song_model.dart';
import 'package:red_dot_ent/utils/constants/exports.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final playlistController = PlaylistController.instance;

    double height = EDeviceUtils.getScreenHeight();
    double width = EDeviceUtils.getScreenWidth();

//     return Padding(
//       padding: const EdgeInsets.only(top: 25),
//       child: Column(
//         children: [
//           /// --- Playlist --- ///
//           Expanded(
//             child: Card(
//               elevation: 2,
//               color: Colors.transparent,
//               clipBehavior: Clip.antiAlias,
//               margin: EdgeInsets.zero,
//               shape: RoundedRectangleBorder(
//                 side: const BorderSide(
//                   color: EColors.secondary,
//                   width: 2.0,
//                 ),
//                 borderRadius: BorderRadius.circular(30.0),
//               ),
//               child: ListView.builder(
//                 padding: EdgeInsets.zero,
//                 itemCount: playlistController.playlist.length,
//                 itemBuilder: (context, index) {
//                   final songModel = playlistController.playlist[index];
//                   return ListTile(
//                     /// --- Artist Name --- ///
//                     title: Text(
//                       songModel.songName,
//                       style: Theme.of(context).textTheme.bodyMedium!.copyWith(
//                             color: EColors.secondary,
//                             fontWeight: FontWeight.w300,
//                             fontSize: 14,
//                           ),
//                     ),

//                     /// --- Song Name --- ///
//                     subtitle: Text(songModel.artistName,
//                         style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                               color: EColors.secondary,
//                               fontWeight: FontWeight.w100,
//                               fontSize: 10,
//                             )),

//                     /// --- Album Art --- ///
//                     // leading: CircleAvatar(
//                     //   radius: 25,
//                     //   foregroundColor: Colors.transparent,
//                     //   backgroundColor: Colors.transparent,
//                     //   backgroundImage: AssetImage(songModel.albumArt),
//                     // ),

//                     leading: ClipRRect(
//                       borderRadius: BorderRadius.circular(80),
//                       child: Image.asset(
//                         songModel.albumArt,
//                         height: 100,
//                         width: 80,
//                         fit: BoxFit.cover,
//                         alignment: Alignment.topCenter,
//                       ),
//                     ),

//                     /// --- On Tap --- ///
//                     onTap: () {
//                       playlistController.changeSong(index);

//                       // Get.toNamed(ERoutes.home);
//                     },
//                   );
//                 },
//               ),
//             ),
//           ),
//           // Expanded(
//           //   child: Container(
//           //     decoration: BoxDecoration(
//           //       borderRadius: BorderRadius.circular(30),
//           //       border: Border.all(
//           //         color: EColors.secondary,
//           //         width: 2.0,
//           //       ),
//           //     ),
//           //     child: ClipRRect(
//           //       borderRadius: BorderRadius.circular(30),
//           //       child: ListView.builder(
//           //         itemCount: playlistController.playlist.length,
//           //         itemBuilder: (context, index) {
//           //           final SongModel = playlistController.playlist[index];
//           //           return ListTile(
//           //             /// --- Artist Name --- ///
//           //             title: Text(
//           //               SongModel.songName,
//           //               style: Theme.of(context).textTheme.bodyMedium!.copyWith(
//           //                     color: EColors.secondary,
//           //                     fontWeight: FontWeight.w300,
//           //                     fontSize: 14,
//           //                   ),
//           //             ),

//           //             /// --- Song Name --- ///
//           //             subtitle: Text(SongModel.artistName,
//           //                 style:
//           //                     Theme.of(context).textTheme.bodySmall!.copyWith(
//           //                           color: EColors.secondary,
//           //                           fontWeight: FontWeight.w100,
//           //                           fontSize: 10,
//           //                         )),

//           //             /// --- Album Art --- ///
//           //             leading: ClipRRect(
//           //               borderRadius: BorderRadius.circular(80),
//           //               child: Image.asset(
//           //                 SongModel.albumArt,
//           //                 height: 100,
//           //                 width: 80,
//           //                 fit: BoxFit.cover,
//           //               ),
//           //             ),

//           //             /// --- On Tap --- ///
//           //             onTap: () {
//           //               playlistController.changeSong(index);

//           //               // Get.toNamed(ERoutes.home);
//           //             },
//           //           );
//           //         },
//           //       ),
//           //     ),
//           //   ),
//           // ),
//           const SizedBox(height: ESizes.spaceBtwItems),

    //       /// --- Song Player --- ///
    //       Padding(
    //         padding: const EdgeInsets.only(bottom: 30),
    //         child: Card(
    //           elevation: 2,
    //           color: Colors.transparent,
    //           clipBehavior: Clip.antiAlias,
    //           shape: RoundedRectangleBorder(
    //             side: const BorderSide(
    //               color: EColors.secondary,
    //               width: 2.0,
    //             ),
    //             borderRadius: BorderRadius.circular(30.0),
    //           ),
    //           child: Row(
    //             children: [
    //               /// --- Artwork --- ///

    //               width < ESizes.mobile
    //                   ? const SizedBox.shrink()
    //                   : ClipRRect(
    //                       borderRadius: BorderRadius.circular(30),
    //                       child: Obx(
    //                         () => Image.asset(
    //                           playlistController
    //                               .playlist[
    //                                   playlistController.currentSong.value]
    //                               .albumArt,
    //                           height: width < ESizes.tablet ? 70 : 120,
    //                           width: width < ESizes.tablet ? 70 : 150,
    //                           fit: BoxFit.cover,
    //                         ),
    //                       ),
    //                     ),

    // // / --- Song Information and Controls --- ///
    // Expanded(
    //   child: Padding(
    //     padding: width < ESizes.mobile
    //         ? const EdgeInsets.only(
    //             left: 2, right: 2, top: 12, bottom: 0)
    //         : const EdgeInsets.symmetric(horizontal: 25.0),
    //     child: Column(
    //       children: [
    //         Padding(
    //           padding:
    //               const EdgeInsets.symmetric(horizontal: 15.0),
    //           child: Row(
    //               mainAxisAlignment:
    //                   MainAxisAlignment.spaceBetween,
    //               children: [
    //                 /// --- Artist Name --- ///
    //                 Obx(
    //                   () => Text(
    //                     playlistController
    //                         .playlist[playlistController
    //                             .currentSong.value]
    //                         .artistName,
    //                     style: Theme.of(context)
    //                         .textTheme
    //                         .titleSmall!
    //                         .copyWith(
    //                           color: EColors.secondary,
    //                           fontWeight: FontWeight.w300,
    //                           fontSize: 9,
    //                         ),
    //                   ),
    //                 ),

    //                 /// --- Song Title --- ///
    //                 Obx(
    //                   () => Text(
    //                     playlistController
    //                         .playlist[playlistController
    //                             .currentSong.value]
    //                         .songName,
    //                     style: Theme.of(context)
    //                         .textTheme
    //                         .bodySmall!
    //                         .copyWith(
    //                           color: EColors.secondary,
    //                           fontWeight: FontWeight.bold,
    //                           fontSize: 10,
    //                         ),
    //                   ),
    //                 ),
    //               ]),
    //         ),

    //         /// --- Duration Section --- ///
    //         Padding(
    //           padding: width < ESizes.mobile
    //               ? const EdgeInsets.only(
    //                   left: 15, right: 15, top: 10, bottom: 0)
    //               : const EdgeInsets.symmetric(horizontal: 25.0),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Obx(() => Text(
    //                   EHelperFunctions.getFormattedTime(
    //                           playlistController
    //                               .currentDuration.value)
    //                       .toString(),
    //                   style: Theme.of(context)
    //                       .textTheme
    //                       .bodySmall!
    //                       .copyWith(
    //                         color: EColors.secondary,
    //                         fontWeight: FontWeight.bold,
    //                         fontSize: 10,
    //                       ))),

    //               /// --- Slider --- ///
    //               Obx(
    //                 () => Slider(
    //                   min: 0,
    //                   max: playlistController
    //                       .totalDuration.value.inSeconds
    //                       .toDouble(),
    //                   value: playlistController
    //                       .currentDuration.value.inSeconds
    //                       .toDouble(),
    //                   activeColor: EColors.accent,
    //                   onChanged: (double value) {
    //                     playlistController.seek(
    //                         Duration(seconds: value.toInt()));
    //                   },
    //                   onChangeEnd: (double value) {
    //                     playlistController.seek(
    //                         Duration(seconds: value.toInt()));
    //                   },
    //                 ),
    //               ),
    //               Obx(() => Text(
    //                   EHelperFunctions.getFormattedTime(
    //                           playlistController
    //                               .totalDuration.value)
    //                       .toString(),
    //                   // For Time Left use:
    //                   // duration - position
    //                   style: Theme.of(context)
    //                       .textTheme
    //                       .bodySmall!
    //                       .copyWith(
    //                         color: EColors.secondary,
    //                         fontWeight: FontWeight.bold,
    //                         fontSize: 10,
    //                       ))),
    //             ],
    //           ),
    //         ),

    //         /// --- Playlist Controls --- ///
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             OnHoverIcon(
    //               icon: EIcons.previous,
    //               controllerKey: '2',
    //               onPressed: () {
    //                 playlistController.playPreviousSong();
    //               },
    //             ),
    //             Obx(
    //               () => OnHoverIcon(
    //                 icon: playlistController.isPlaying.value
    //                     ? EIcons.pause
    //                     : EIcons.play,
    //                 controllerKey: '3',
    //                 onPressed: () {
    //                   print(playlistController
    //                       .playlist[playlistController
    //                           .currentSong.value]
    //                       .songName);
    //                   playlistController.pauseOrResume();
    //                 },
    //               ),
    //             ),
    //             OnHoverIcon(
    //               icon: EIcons.next,
    //               controllerKey: '4',
    //               onPressed: () {
    //                 playlistController.playNextSong();
    //               },
    //             ),
    //             Obx(
    //               () => OnHoverIcon(
    //                 color: playlistController.isLoopMode.value
    //                     ? EColors.accent
    //                     : null,
    //                 icon: EIcons.loop,
    //                 controllerKey: '5',
    //                 onPressed: () {
    //                   playlistController.loop();
    //                 },
    //               ),
    //             ),
    //             OnHoverIcon(
    //               icon: EIcons.shuffle,
    //               controllerKey: '6',
    //               onPressed: () {
    //                 playlistController.stop();
    //               },
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // )
    //         ],
    //       ),
    //     ),
    //   ),
    // ],
//       ),
//     ).animate().fadeIn(duration: 750.ms, curve: Curves.easeIn);
//   }
// }

    return Expanded(
      child: Center(
        child: Column(
          children: [
            /// --- Headline --- ///
            Text(
              textAlign: TextAlign.center,
              EText.beats.toUpperCase(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            /// --- Playlist --- ///
            Expanded(
              child: ECard(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: playlistController.playlist.length,
                  itemBuilder: (context, index) {
                    final songModel = playlistController.playlist[index];
                    return ListTile(
                      /// --- Album Art  --- ///
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Image.asset(
                          songModel.albumArt,
                          height: 100,
                          width: 80,
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),

                      /// --- Artist Name --- ///
                      title: Text(
                        songModel.songName,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: EColors.secondary,
                            ),
                      ),

                      /// --- Song Name --- ///
                      subtitle: Text(
                        songModel.artistName,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: EColors.secondary,
                            ),
                      ),

                      /// --- On Tap --- ///
                      onTap: () {
                        playlistController.changeSong(index);
                      },
                    );
                  },
                ),
              ),
            ),

            /// --- Song Player --- ///
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: ECard(
                child: Row(
                  children: [
                    /// --- Artwork --- ///
                    width < ESizes.mobile
                        ? const SizedBox.shrink()
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Obx(
                              () => Image.asset(
                                playlistController
                                    .playlist[
                                        playlistController.currentSong.value]
                                    .albumArt,
                                height: width < ESizes.tablet ? 70 : 120,
                                width: width < ESizes.tablet ? 70 : 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                    // / --- Song Information and Controls --- ///
                    Expanded(
                      child: Padding(
                        padding: width < ESizes.mobile
                            ? const EdgeInsets.only(
                                left: 2, right: 2, top: 12, bottom: 0)
                            : const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    /// --- Artist Name --- ///
                                    Obx(
                                      () => Text(
                                        playlistController
                                            .playlist[playlistController
                                                .currentSong.value]
                                            .artistName,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(
                                              color: EColors.secondary,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 9,
                                            ),
                                      ),
                                    ),

                                    /// --- Song Title --- ///
                                    Obx(
                                      () => Text(
                                        playlistController
                                            .playlist[playlistController
                                                .currentSong.value]
                                            .songName,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              color: EColors.secondary,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                            ),
                                      ),
                                    ),
                                  ]),
                            ),

                            /// --- Duration Section --- ///
                            Padding(
                              padding: width < ESizes.mobile
                                  ? const EdgeInsets.only(
                                      left: 15, right: 15, top: 10, bottom: 0)
                                  : const EdgeInsets.symmetric(
                                      horizontal: 25.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Obx(() => Text(
                                      EHelperFunctions.getFormattedTime(
                                              playlistController
                                                  .currentDuration.value)
                                          .toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            color: EColors.secondary,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                          ))),

                                  /// --- Slider --- ///
                                  Obx(
                                    () => Slider(
                                      min: 0,
                                      max: playlistController
                                          .totalDuration.value.inSeconds
                                          .toDouble(),
                                      value: playlistController
                                          .currentDuration.value.inSeconds
                                          .toDouble(),
                                      activeColor: EColors.accent,
                                      onChanged: (double value) {
                                        playlistController.seek(
                                            Duration(seconds: value.toInt()));
                                      },
                                      onChangeEnd: (double value) {
                                        playlistController.seek(
                                            Duration(seconds: value.toInt()));
                                      },
                                    ),
                                  ),
                                  Obx(() => Text(
                                      EHelperFunctions.getFormattedTime(
                                              playlistController
                                                  .totalDuration.value)
                                          .toString(),
                                      // For Time Left use:
                                      // duration - position
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            color: EColors.secondary,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                          ))),
                                ],
                              ),
                            ),

                            /// --- Playlist Controls --- ///
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                OnHoverIcon(
                                  icon: EIcons.previous,
                                  controllerKey: '2',
                                  onPressed: () {
                                    playlistController.playPreviousSong();
                                  },
                                ),
                                Obx(
                                  () => OnHoverIcon(
                                    icon: playlistController.isPlaying.value
                                        ? EIcons.pause
                                        : EIcons.play,
                                    controllerKey: '3',
                                    onPressed: () {
                                      print(playlistController
                                          .playlist[playlistController
                                              .currentSong.value]
                                          .songName);
                                      playlistController.pauseOrResume();
                                    },
                                  ),
                                ),
                                OnHoverIcon(
                                  icon: EIcons.next,
                                  controllerKey: '4',
                                  onPressed: () {
                                    playlistController.playNextSong();
                                  },
                                ),
                                Obx(
                                  () => OnHoverIcon(
                                    color: playlistController.isLoopMode.value
                                        ? EColors.accent
                                        : null,
                                    icon: EIcons.loop,
                                    controllerKey: '5',
                                    onPressed: () {
                                      playlistController.loop();
                                    },
                                  ),
                                ),
                                OnHoverIcon(
                                  icon: EIcons.shuffle,
                                  controllerKey: '6',
                                  onPressed: () {
                                    playlistController.stop();
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ).animate().fadeIn(duration: 750.ms, curve: Curves.easeIn);
  }
}
