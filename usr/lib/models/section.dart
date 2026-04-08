class ReportSection {
  final int id;
  final String title;
  final String hintText;
  String content;
  bool isCompleted;

  ReportSection({
    required this.id,
    required this.title,
    required this.hintText,
    this.content = '',
    this.isCompleted = false,
  });
}
