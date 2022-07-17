import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:movie_db/modules/moviedetail/moviedetail_controller.dart';

class MovieDetailView extends GetView<MovieDetailController> {
  const MovieDetailView({Key? key}) : super(key: key);

  Widget casterCard(String image, String name, String character) {
    return Container(
      width: Get.width * 0.3,
      padding: const EdgeInsets.all(4),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: image,
              fit: BoxFit.cover,
              height: 160,
              width: 90,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            name,
            maxLines: 1,
          ),
          Text(
            character,
            maxLines: 1,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Detail'),
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          color: Theme.of(context).textTheme.bodyText1?.color,
          fontSize: 18,
        ),
        iconTheme: IconThemeData(
          color: Theme.of(context).textTheme.bodyText1?.color,
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(LineIcons.play),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wJOLiZIDvtmNbOaaHxQrRGzCAEu.jpg',
                        height: 300,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      child: SizedBox(
                        height: 300,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        children: const [
                                          Expanded(
                                              child: Icon(LineIcons.video)),
                                          Text('Genre'),
                                          Text('Comedy',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 24),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        children: const [
                                          Expanded(
                                              child: Icon(LineIcons.clock)),
                                          Text('Duration'),
                                          Text('1h 20m',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 24),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        children: const [
                                          Expanded(
                                              child: Icon(LineIcons.starAlt)),
                                          Text('Rating'),
                                          Text('8.7/10',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                const Text(
                  'Spy x Family',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(height: 18),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Cast',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 8),
                    SingleChildScrollView(
                      primary: false,
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          casterCard(
                            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rL60UEA0FgLCyWi4rCErWswWFin.jpg',
                            'Takuya Eguchi',
                            'Loid Forger',
                          ),
                          casterCard(
                            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rL60UEA0FgLCyWi4rCErWswWFin.jpg',
                            'Takuya Eguchi',
                            'Loid Forger',
                          ),
                          casterCard(
                            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rL60UEA0FgLCyWi4rCErWswWFin.jpg',
                            'Takuya Eguchi',
                            'Loid Forger',
                          ),
                          casterCard(
                            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rL60UEA0FgLCyWi4rCErWswWFin.jpg',
                            'Takuya Eguchi',
                            'Loid Forger',
                          ),
                          casterCard(
                            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rL60UEA0FgLCyWi4rCErWswWFin.jpg',
                            'Takuya Eguchi',
                            'Loid Forger',
                          ),
                          casterCard(
                            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rL60UEA0FgLCyWi4rCErWswWFin.jpg',
                            'Takuya Eguchi',
                            'Loid Forger',
                          ),
                          casterCard(
                            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rL60UEA0FgLCyWi4rCErWswWFin.jpg',
                            'Takuya Eguchi',
                            'Loid Forger',
                          ),
                          casterCard(
                            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rL60UEA0FgLCyWi4rCErWswWFin.jpg',
                            'Takuya Eguchi',
                            'Loid Forger',
                          ),
                          casterCard(
                            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rL60UEA0FgLCyWi4rCErWswWFin.jpg',
                            'Takuya Eguchi',
                            'Loid Forger',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Synopsis',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Obx(() {
                      return Text(
                        '''Corrupt politicians, frenzied nationalists, and other warmongering forces constantly jeopardize the thin veneer of peace between neighboring countries Ostania and Westalis. In spite of their plots, renowned spy and master of disguise "Twilight" fulfills dangerous missions one after another in the hope that no child will have to experience the horrors of war.\n\nIn the bustling Ostanian city of Berlint, Twilight dons the alias of "Loid Forger," an esteemed psychiatrist. However, his true intention is to gather intelligence on prominent politician Donovan Desmond, who only appears rarely in public at his sons' school: the prestigious Eden Academy. Enlisting the help of unmarried city hall clerk Yor Briar to act as his wife and adopting the curious six-year-old orphan Anya as his daughter, Loid enacts his master plan. He will enroll Anya in Eden Academy, where Loid hopes she will excel and give him the opportunity to meet Donovan without arousing suspicion.\n\nUnfortunately for Loid, even a man of his talents has trouble playing the figure of a loving father and husband. And just like Loid is hiding his true identity, Yor—who is an underground assassin known as "Thorn Princess"—and Anya—an esper who can read people's minds—have no plans to disclose their own secrets either. Although this picture-perfect family is founded on deception, the Forgers gradually come to understand that the love they share for one another trumps all else.''',
                        maxLines: controller.showSynopsis.value ? null : 6,
                        overflow: TextOverflow.fade,
                      );
                    }),
                    const SizedBox(height: 8),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          controller.showSynopsis.value
                              ? controller.showSynopsis.value = false
                              : controller.showSynopsis.value = true;
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Obx(() {
                              return Text(
                                controller.showSynopsis.value
                                    ? 'Show Less'
                                    : 'Show More',
                              );
                            }),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
