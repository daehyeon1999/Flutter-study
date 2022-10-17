import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study/common/model/cursor_pagination_model.dart';
import 'package:flutter_study/repository/restaurant_repo.dart';

final restaurantProvider = StateNotifierProvider<RestaurantNotifier, CursorPaginationBase>((ref) {
  // provider에 있는 repo 가져오기
  final repository = ref.watch(restaurantRepositoryProvider);

  // stateNotifier 생성
  return RestaurantNotifier(repository: repository);
});

// CursorPagination을 제너릭으로 넣으면 CursoPagination의 상태만 관리할수 있으므로,
// CursoPaginationBase으로 제너릭을 변경하여 모든 상태를 관리 할수 있게 바꾼다.
class RestaurantNotifier extends StateNotifier<CursorPaginationBase> {
  final RestaurantRepo repository;

  // super(){} 안에 함수를 넣으면, class가 생성될때 바로 실행할수 있게 할수 있다.
  // StateNotifier가 생성되자마자 paginate() 함수를 실행하므로, CursorPagination의 상태를 Loading으로 init한다.
  RestaurantNotifier({required this.repository}) : super(CursorPaginationLoading()) {
    // 이 안에 함수를 넣으면 class Instance가 생성되는 즉시 실행된다.
    paginate();
  }

  // 데이터 가져오기
  paginate({
    int fetchCount = 20,

    // true - 데이터 추가로 가져오기
    // false - 새로고침 (현재 상태를 덮어씌움)
    bool fetchMore = false,

    // 강제로 다시 로딩하기
    // true - CursorPaginationLoading()
    bool forceRetch = false,
  }) async {

    // 5 가지 가능성
    // State의 상태

    // 1. CursorPagination - 정상적으로 데이터가 있는 상태
    // 2. CursorPaginationLoading - 데이터가 로딩중인 상태 (현재 캐리 없음)
    // 3. CursorPaginationError - 에러가 발생한 상태
    // 4. CursorPaginationRefetching - 다시 첫번째부터 데이터를 가져올때
    // 5. CursorPaginationFetchMore - 추가 데이터를 요청할때
  }
}
