class JokeModel {
  final int id;
  final String text;

  JokeModel({
    required this.id,
    required this.text,
  });

  factory JokeModel.fromJson(Map<String, dynamic> json) => JokeModel(
        id: json["id"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "text": text,
      };
}
