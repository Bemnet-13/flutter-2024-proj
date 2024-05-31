// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvatarDtoImpl _$$AvatarDtoImplFromJson(Map<String, dynamic> json) =>
    _$AvatarDtoImpl(
      name: json['name'] as String,
      club: json['club'] as String,
      score: (json['score'] as num).toInt(),
    );

Map<String, dynamic> _$$AvatarDtoImplToJson(_$AvatarDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'club': instance.club,
      'score': instance.score,
    };
