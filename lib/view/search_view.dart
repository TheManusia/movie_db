import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:movie_db/viewmodel/search_viewmodel.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  Widget latestSearchCard(
      BuildContext context, String text, SearchViewModel controller) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          controller.setSearchController(text);
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchViewModel>(
      initState: (_) {
        Get.put(SearchViewModel());
      },
      builder: (controller) {
        return Scaffold(
          body: SingleChildScrollView(
            primary: false,
            child: Container(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: controller.searchController,
                    onSubmitted: (value) {
                      controller.addLatestSearch(value);
                    },
                    decoration: const InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(LineIcons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      isDense: true,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text('Latest search'),
                  const SizedBox(height: 8),
                  SingleChildScrollView(
                    primary: false,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: controller.latestSearch.map((text) {
                        return latestSearchCard(context, text, controller);
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: controller.movieList
                        .where((element) => (element['title'] ?? '')
                            .toLowerCase()
                            .contains(
                                controller.searchController.text.toLowerCase()))
                        .length,
                    itemBuilder: (context, index) {
                      var movie = controller.movieList
                          .where((element) => (element['title'] ?? '')
                              .toLowerCase()
                              .contains(controller.searchController.text
                                  .toLowerCase()))
                          .toList()[index];
                      return Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: CachedNetworkImage(
                                imageUrl:
                                    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wJOLiZIDvtmNbOaaHxQrRGzCAEu.jpg',
                                width: 80,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          movie['title'] ?? '',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        '(${movie['year'] ?? ''})',
                                        style: const TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Icon(
                                        LineIcons.starAlt,
                                        size: 14,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        movie['rating'] ?? '',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    movie['genre'] ?? '',
                                    style: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
