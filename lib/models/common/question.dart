import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'question.g.dart';

@HiveType(typeId: 28)
@JsonSerializable()
class Question extends HiveObject {
  @HiveField(0)
  @JsonKey(name: 'ms')
  String? ms;

  @HiveField(1)
  @JsonKey(name: 'en')
  String? en;

  Question({required this.ms, required this.en});

  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionToJson(this);
}
