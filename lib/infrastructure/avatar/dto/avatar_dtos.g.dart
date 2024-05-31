// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvatarDtoImpl _$$AvatarDtoImplFromJson(Map<String, dynamic> json) =>
    _$AvatarDtoImpl(
      avatarName: json['avatarName'] as String,
      avatarClub: json['avatarClub'] as String,
      avatarScore: (json['avatarScore'] as num).toInt(),
    );

Map<String, dynamic> _$$AvatarDtoImplToJson(_$AvatarDtoImpl instance) =>
    <String, dynamic>{
      'avatarName': instance.avatarName,
      'avatarClub': instance.avatarClub,
      'avatarScore': instance.avatarScore,
    };
