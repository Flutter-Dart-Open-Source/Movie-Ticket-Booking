import 'package:built_collection/built_collection.dart';

import '../../../../domain/model/comment.dart';
import '../../../../domain/model/comments.dart';
import 'state.dart';

abstract class Action {
  State reduce(State state);
}

//
// User's input actions
//

class LoadFirstPageAction implements Action {
  const LoadFirstPageAction();

  @override
  State reduce(State state) => state;
}

class LoadNextPageAction implements Action {
  const LoadNextPageAction();

  @override
  State reduce(State state) => state;
}

class RetryAction implements Action {
  const RetryAction();

  @override
  State reduce(State state) => state;
}

//
// Side effect actions
//

class LoadingAction implements Action {
  final int nextPage;

  LoadingAction(this.nextPage);

  @override
  State reduce(State state) {
    if (nextPage == 1) {
      return state.rebuild((b) => b
        ..page = 0
        ..isLoading = true
        ..error = null
        ..items = ListBuilder<Comment>());
    } else {
      return state.rebuild((b) => b
        ..isLoading = true
        ..error = null);
    }
  }
}

class SuccessAction implements Action {
  final Comments comments;

  SuccessAction(this.comments);

  @override
  State reduce(State state) {
    return state.rebuild(
      (b) {
        final items = comments.comments;

        final listBuilder = b.items
          ..update((ib) {
            if (state.isFirstPage) {
              ib.replace(items);
            } else {
              final urls = Set.of(state.items.map((item) => item.id));
              final distinctItems = items.where((item) => urls.add(item.id));
              ib.addAll(distinctItems);
            }
          });

        return b
          ..average = comments.average
          ..total = comments.total
          ..page = state.page + (items.isEmpty ? 0 : 1)
          ..items = listBuilder
          ..error = null
          ..isLoading = false;
      },
    );
  }
}

class FailureAction implements Action {
  final Object error;

  FailureAction(this.error);

  @override
  State reduce(State state) {
    return state.rebuild(
      (b) => b
        ..error = error
        ..isLoading = false,
    );
  }
}
