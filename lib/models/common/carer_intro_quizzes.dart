import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'answer.dart';
import 'question.dart';

part 'carer_intro_quizzes.g.dart';

@HiveType(typeId: 27)
@JsonSerializable()
class CarerIntroQuizzes extends HiveObject {
  @HiveField(0)
  @JsonKey(name: 'id')
  int id;

  @HiveField(1)
  @JsonKey(name: 'type')
  String type;

  @HiveField(2)
  @JsonKey(name: 'isRequired')
  bool isRequired;

  @HiveField(3)
  @JsonKey(name: 'question')
  Question question;
  @HiveField(4)
  @JsonKey(name: 'answerList')
  Answer answerList;
  CarerIntroQuizzes(
      {required this.id, required this.type, required this.isRequired, required this.question, required this.answerList});

  factory CarerIntroQuizzes.fromJson(Map<String, dynamic> json) => _$CarerIntroQuizzesFromJson(json);

  Map<String, dynamic> toJson() => _$CarerIntroQuizzesToJson(this);
}
