import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study/common/dio.dart';
import 'package:flutter_study/common/repository/base_pagination_repo.dart';
import 'package:flutter_study/model/restaurant/rating_model.dart';
import 'package:retrofit/http.dart';

import '../api/api_list.dart';

part 'restaurant_rating_repo.g.dart';

final restaurantRatingRepoProvider = Provider.family<RestaurantRatingRepo, String>((ref, id) {
  final dio = ref.watch(dioProvider);

  return RestaurantRatingRepo(dio, baseUrl: '$api/restaurant/$id/rating');
});

// http://api/restaurant/:rid/rating
@RestApi()
abstract class RestaurantRatingRepo implements IBasePaginationRepo<RatingModel> {
  factory RestaurantRatingRepo(Dio dio, {String baseUrl}) = _RestaurantRatingRepo;
}
