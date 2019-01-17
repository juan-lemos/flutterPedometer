class AppState {
  final int count;
  final bool isLoading;

  AppState({
    this.count = 0,
    this.isLoading = false,
  });

  factory AppState.loading() => new AppState(isLoading: true);

  AppState copyWith({int count, bool isLoading}) {
    return new AppState(
      count: count ?? this.count,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  int get hashCode => isLoading.hashCode ^ count.hashCode;

  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          isLoading == other.isLoading &&
          count == other.count;

  @override
  String toString() {
    return 'AppState{isLoading: $isLoading, count: $count}';
  }
}
