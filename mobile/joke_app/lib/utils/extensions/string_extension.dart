extension StringX on String? {
  bool get isNullOrEmpty => this == null || this!.trim().isEmpty;

  String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

  int get toNumber => int.parse(this!.trim().replaceAll(',', ''));

  DateTime get toDateTime => DateTime.parse(this!);

  // Add more..
}
