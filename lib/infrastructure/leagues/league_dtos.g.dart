// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeagueDtoImpl _$$LeagueDtoImplFromJson(Map<String, dynamic> json) =>
    _$LeagueDtoImpl(
      name: json['name'] as String,
      members:
          (json['members'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$LeagueDtoImplToJson(_$LeagueDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'members': instance.members,
    };
