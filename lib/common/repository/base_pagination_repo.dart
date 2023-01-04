import 'package:flutter_study/common/model/model_with_id.dart';

import '../model/cursor_pagination_model.dart';
import '../model/pagination_params.dart';

// class를 interface처럼 사용
// 제너릭을 이용해서 외부에서 타입을 정해준다.
// 제너릭 T는 IModelWithId를 상속받아야 한다.
abstract class IBasePaginationRepo<T extends IModelWithId> {
  // 제너릭에 들어온 타입으로 반환
  Future<CursorPagination<T>> paginate({
    PaginationParams? paginationParams = const PaginationParams(),
  });
}