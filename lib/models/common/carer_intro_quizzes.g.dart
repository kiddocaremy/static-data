// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carer_intro_quizzes.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CarerIntroQuizzesAdapter extends TypeAdapter<CarerIntroQuizzes> {
  @override
  final int typeId = 27;

  @override
  CarerIntroQuizzes read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CarerIntroQuizzes(
      id: fields[0] as int,
      type: fields[1] as String,
      isRequired: fields[2] as bool,
      question: fields[3] as Question,
    );
  }

  @override
  void write(BinaryWriter writer, CarerIntroQuizzes obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.isRequired)
      ..writeByte(3)
      ..write(obj.question);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CarerIntroQuizzesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarerIntroQuizzes _$CarerIntroQuizzesFromJson(Map<String, dynamic> json) =>
    CarerIntroQuizzes(
      id: json['id'] as int,
      type: json['type'] as String,
      isRequired: json['isRequired'] as bool,
      question: Question.fromJson(json['question'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CarerIntroQuizzesToJson(CarerIntroQuizzes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'isRequired': instance.isRequired,
      'question': instance.question,
    };
