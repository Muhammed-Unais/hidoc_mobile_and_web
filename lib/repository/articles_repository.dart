import 'package:hidoc_app/data/network/base_api_service.dart';
import 'package:hidoc_app/data/network/network_api_service.dart';
import 'package:hidoc_app/model/article_model.dart';
import 'package:hidoc_app/res/app_url.dart';

class ArticlesRepository {
  BaseApiService apiService = NetWorkApiService();

  Future<Articles> getArticle() async {
    try {
      final response =
          await apiService.getPostApiResponse(AppUrl.getArticlesByUid);
      return articlesFromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
