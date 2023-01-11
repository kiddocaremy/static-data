import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'answer.g.dart';

@HiveType(typeId: 29)
@JsonSerializable()
class Answer extends HiveObject {
  @HiveField(0)
  @JsonKey(name: 'ms')
  Map<String, String> ms;
  @HiveField(1)
  @JsonKey(name: 'en')
  Map<String, String>? en;

  Answer({
    required this.ms,
    required this.en,
  });

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);

  Map<String, dynamic> toJson() => _$AnswerToJson(this);
}
