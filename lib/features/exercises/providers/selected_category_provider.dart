import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_category_provider.g.dart';

@riverpod
class SelectedCategory extends _$SelectedCategory {
  @override
  String build() => 'Todos';

  void select(String category) {
    state = category;
  }
}
