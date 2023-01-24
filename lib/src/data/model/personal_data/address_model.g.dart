// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressModel _$$_AddressModelFromJson(Map<String, dynamic> json) =>
    _$_AddressModel(
      address: json['address'] as String,
      rt: json['address_rt'] as String,
      rw: json['address_rw'] as String,
      provinsi: json['address_provinsi'] as String,
      kota: json['address_kota'] as String,
      kecamatan: json['address_kecamatan'] as String,
      kelurahan: json['address_kelurahan'] as String,
      kodePos: json['address_kodepos'] as String,
    );

Map<String, dynamic> _$$_AddressModelToJson(_$_AddressModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'address_rt': instance.rt,
      'address_rw': instance.rw,
      'address_provinsi': instance.provinsi,
      'address_kota': instance.kota,
      'address_kecamatan': instance.kecamatan,
      'address_kelurahan': instance.kelurahan,
      'address_kodepos': instance.kodePos,
    };
