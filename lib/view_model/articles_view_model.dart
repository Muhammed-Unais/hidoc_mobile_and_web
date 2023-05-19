import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:hidoc_app/data/response/response.dart';
import 'package:hidoc_app/model/article_model.dart';
import 'package:hidoc_app/repository/articles_repository.dart';

class ArticlesViewModel extends ChangeNotifier {
  final _myRepo = ArticlesRepository();

  ApiResponse<Articles> apiResponse = ApiResponse.loading();

  setArticlesData(ApiResponse<Articles> articles) {
    apiResponse = articles;
    notifyListeners();
  }

  Future getArticles() async {
    setArticlesData(ApiResponse.loading());
    _myRepo.getArticle().then(
      (value) {
        log(value.data?.news.toString() ??"");
        setArticlesData(ApiResponse.completed(value));
      },
    ).onError(
      (error, stackTrace) {
        log(error.toString());
        setArticlesData(
          ApiResponse.error(error.toString()),
        );
      },
    );
  }
}
