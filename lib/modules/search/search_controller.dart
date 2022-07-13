import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  var latestSearch = <String>[].obs;
  final movieList = <Map<String, String>>[
    {
      'title': 'The Shawshank Redemption',
      'poster':
          'https://m.media-amazon.com/images/M/MV5BODU4MjU4NjI0Nl5BMl5BanBnXkFtZTgwMDU2MjEyMTE@._V1_UX182_CR0,0,182,268_AL_.jpg',
      'rating': '4.3',
      'year': '1994',
      'genre': 'Drama',
    },
    {
      'title': 'The Godfather',
      'poster':
          'https://m.media-amazon.com/images/M/MV5BM2M1MjEzN2QtYzc5NS00NjQyLWEwYzItZTc5ZGFiZjYwZDUyXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UX182_CR0,0,182,268_AL_.jpg',
      'rating': '4.5',
      'year': '1972',
      'genre': 'Drama',
    },
    {
      'title': 'The Godfather: Part II',
      'poster':
          'https://m.media-amazon.com/images/M/MV5BNDNhNTYyMzk0Nl5BMl5BanBnXkFtZTgwMjQ4NjQ5NzE@._V1_UX182_CR0,0,182,268_AL_.jpg',
      'rating': '4.5',
      'year': '1974',
      'genre': 'Drama',
    },
    {
      'title': 'The Dark Knight',
      'poster':
          'https://m.media-amazon.com/images/M/MV5BMTMxNTIwNjYzNF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg',
      'rating': '4.5',
      'year': '2008',
      'genre': 'Drama',
    },
    {
      'title': '12 Angry Monkeys',
      'poster':
          'https://m.media-amazon.com/images/M/MV5BMTQ0MjQ3MzY0MF5BMl5BanBnXkFtZTcwNzU4MzEwMw@@._V1_UX182_CR0,0,182,268_AL_.jpg',
      'rating': '4.5',
      'year': '1999',
      'genre': 'Drama',
    },
    {
      'title': 'Pulp Fiction',
      'poster':
          'https://m.media-amazon.com/images/M/MV5BNGNhNWM2ZjAtZGE3ZS00YWZmLWJiMjktMDIxYzI0YjU1NjZmXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg',
      'rating': '4.5',
      'year': '1994',
      'genre': 'Drama',
    },
    {
      'title': 'The Matrix',
      'poster':
          'https://m.media-amazon.com/images/M/MV5BMjEzNjg1NTg1M15BMl5BanBnXkFtZTgwNTM3NTYxMTE@._V1_UX182_CR0,0,182,268_AL_.jpg',
      'rating': '4.5',
      'year': '1999',
      'genre': 'Drama',
    },
    {
      'title': 'The Matrix Reloaded',
      'poster':
          'https://m.media-amazon.com/images/M/MV5BMTYzMjA1NzA3Nl5BMl5BanBnXkFtZTcwNzIyNjA1Nw@@._V1_UX182_CR0,0,182,268_AL_.jpg',
      'rating': '4.5',
      'year': '2003',
      'genre': 'Drama',
    },
    {
      'title': 'The Matrix Revolutions',
      'poster':
          'https://m.media-amazon.com/images/M/MV5BNzQzOTY0NzYxMF5BMl5BanBnXkFtZTcwNzIyNjA1Nw@@._V1_UX182_CR0,0,182,268_AL_.jpg',
      'rating': '4.5',
      'year': '2003',
      'genre': 'Drama',
    },
  ];

  var searchResult = <Map<String, String>>[].obs;

  @override
  void onInit() {
    searchResult.value = movieList;
    super.onInit();
  }

  void searchMovie(String text) {
    if (text.isNotEmpty) {
      latestSearch.insert(0, text);
      latestSearch.value = latestSearch.toSet().toList();
    }
    searchResult.value = movieList.where((movie) => (movie['title'] ?? '')
        .toLowerCase()
        .contains(text.toLowerCase())).toList();
  }

  void setSearchController(String text) {
    searchController.text = text;
  }
}
