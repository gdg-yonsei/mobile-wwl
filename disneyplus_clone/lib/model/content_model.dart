import 'dart:collection';

class ContentsModel {
  /// Internal, private state of the cart.
  final List<String> _contents = [];

  /// An unmodifiable view of the items in the cart.
  UnmodifiableListView<String> get contents => UnmodifiableListView(_contents);

  /// Adds [item] to cart. This and [removeAll] are the only ways to modify the
  /// cart from the outside.
  void add(String contentId) {
    _contents.add(contentId);
    // This call tells the widgets that are listening to this model to rebuild.
  }

  void remove(String contentId) {
    _contents.remove(contentId);
    // This call tells the widgets that are listening to this model to rebuild.
  }

  bool contains(String contentId) {
    return _contents.contains(contentId);
  }
}
