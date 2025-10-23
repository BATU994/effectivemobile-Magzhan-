// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_character_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoriteCharacterModelAdapter
    extends TypeAdapter<FavoriteCharacterModel> {
  @override
  final int typeId = 0;

  @override
  FavoriteCharacterModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoriteCharacterModel(
      id: fields[0] as int,
      image: fields[4] as String,
      name: fields[1] as String,
      species: fields[3] as String,
      status: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, FavoriteCharacterModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.species)
      ..writeByte(4)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteCharacterModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
