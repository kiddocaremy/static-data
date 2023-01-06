import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
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
  CarerIntroQuizzes({required this.id, required this.type, required this.isRequired, required this.question});

  // {
  //        "id":1,
  //        "type":"radio",
  //        "isRequired":true,
  //        "question":{
  //           "ms":"Berapa lama tempoh yang diberikan untuk seorang Carer menyempurnakan latihan CPR dan First Aid?",
  //           "en":"When should a Carer complete the CPR and First Aid Training?"
  //        },
  //        "answerList":{
  //           "ms":{
  //              "1":"Tiga (3) bulan dalam tempoh latihan",
  //              "2":"Satu (1) bulan selepas onboarding",
  //              "3":"Dalam masa tiga (3) bulan selepas onboarding"
  //           },
  //           "en":{
  //              "1":"Three (3) months in training duration",
  //              "2":"One (1) month after onboarding",
  //              "3":"Within three (3) months after onboarding"
  //           }
  //        }
  //     },
  factory CarerIntroQuizzes.fromJson(Map<String, dynamic> json) => _$CarerIntroQuizzesFromJson(json);

  Map<String, dynamic> toJson() => _$CarerIntroQuizzesToJson(this);
}
