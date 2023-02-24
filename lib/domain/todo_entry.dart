class TodoEntry {
  final String description;
  bool done;

  TodoEntry(this.description, {this.done = false});

  @override
  String toString() {
    return 'TodoEntry{description: $description, done: $done}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoEntry &&
          runtimeType == other.runtimeType &&
          description == other.description &&
          done == other.done;

  @override
  int get hashCode => description.hashCode ^ done.hashCode;
}
