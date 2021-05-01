import 'package:flutter/material.dart';
import 'package:http8/models/movie.dart';

class MovieDesc extends StatelessWidget {
  final Movie movie;
  final String imgPath = 'https://image.tmdb.org/t/p/w500/';
  MovieDesc(this.movie);
  @override
  Widget build(BuildContext context) {
    String path;
    if (movie.posterPath != null) {
      path = imgPath + movie.posterPath;
    } else {
      path =
          'https://image.freeimages.com/images/large-previews/5eb/movie-clipboard-1184339.jpg';
    }
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(16),
                  height: height / 1.5,
                  child: Image.network(path)),
              Container(
                child: Text(movie.overview),
                padding: EdgeInsets.only(left: 16, right: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
