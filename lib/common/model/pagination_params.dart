import 'package:json_annotation/json_annotation.dart';

part 'pagination_params.g.dart';

@JsonSerializable()
class PaginationParams {
  // 이미 가져온 restaurant product의 아이디
  final String? after;

  // 몇개 가져올건지
  final int? count;

  const PaginationParams({this.after, this.count});

  Map<String, dynamic> toJson() => _$PaginationParamsToJson(this);
}
