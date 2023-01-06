import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'question.g.dart';

@HiveType(typeId: 27)
@JsonSerializable()
class Question extends HiveObject {
  @HiveField(0)
  @JsonKey(name: 'ms')
  String ms;

  @HiveField(1)
  @JsonKey(name: 'en')
  String en;

  Question({required this.ms, required this.en});

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
  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionToJson(this);
}
