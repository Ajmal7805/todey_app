class Task {
  final String? name;
  bool? isdones;
  Task({this.name, this.isdones = false});

  void toggledone() {
    isdones = !isdones!;
  }
}
