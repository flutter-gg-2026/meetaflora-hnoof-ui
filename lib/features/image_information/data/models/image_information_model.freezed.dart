// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_information_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ImageInformationModel {

 String get mimeType; String? get name;
/// Create a copy of ImageInformationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageInformationModelCopyWith<ImageInformationModel> get copyWith => _$ImageInformationModelCopyWithImpl<ImageInformationModel>(this as ImageInformationModel, _$identity);

  /// Serializes this ImageInformationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageInformationModel&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mimeType,name);

@override
String toString() {
  return 'ImageInformationModel(mimeType: $mimeType, name: $name)';
}


}

/// @nodoc
abstract mixin class $ImageInformationModelCopyWith<$Res>  {
  factory $ImageInformationModelCopyWith(ImageInformationModel value, $Res Function(ImageInformationModel) _then) = _$ImageInformationModelCopyWithImpl;
@useResult
$Res call({
 String mimeType, String? name
});




}
/// @nodoc
class _$ImageInformationModelCopyWithImpl<$Res>
    implements $ImageInformationModelCopyWith<$Res> {
  _$ImageInformationModelCopyWithImpl(this._self, this._then);

  final ImageInformationModel _self;
  final $Res Function(ImageInformationModel) _then;

/// Create a copy of ImageInformationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mimeType = null,Object? name = freezed,}) {
  return _then(_self.copyWith(
mimeType: null == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageInformationModel].
extension ImageInformationModelPatterns on ImageInformationModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageInformationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageInformationModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageInformationModel value)  $default,){
final _that = this;
switch (_that) {
case _ImageInformationModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageInformationModel value)?  $default,){
final _that = this;
switch (_that) {
case _ImageInformationModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String mimeType,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageInformationModel() when $default != null:
return $default(_that.mimeType,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String mimeType,  String? name)  $default,) {final _that = this;
switch (_that) {
case _ImageInformationModel():
return $default(_that.mimeType,_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String mimeType,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _ImageInformationModel() when $default != null:
return $default(_that.mimeType,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ImageInformationModel implements ImageInformationModel {
  const _ImageInformationModel({required this.mimeType, required this.name});
  factory _ImageInformationModel.fromJson(Map<String, dynamic> json) => _$ImageInformationModelFromJson(json);

@override final  String mimeType;
@override final  String? name;

/// Create a copy of ImageInformationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageInformationModelCopyWith<_ImageInformationModel> get copyWith => __$ImageInformationModelCopyWithImpl<_ImageInformationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImageInformationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageInformationModel&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mimeType,name);

@override
String toString() {
  return 'ImageInformationModel(mimeType: $mimeType, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ImageInformationModelCopyWith<$Res> implements $ImageInformationModelCopyWith<$Res> {
  factory _$ImageInformationModelCopyWith(_ImageInformationModel value, $Res Function(_ImageInformationModel) _then) = __$ImageInformationModelCopyWithImpl;
@override @useResult
$Res call({
 String mimeType, String? name
});




}
/// @nodoc
class __$ImageInformationModelCopyWithImpl<$Res>
    implements _$ImageInformationModelCopyWith<$Res> {
  __$ImageInformationModelCopyWithImpl(this._self, this._then);

  final _ImageInformationModel _self;
  final $Res Function(_ImageInformationModel) _then;

/// Create a copy of ImageInformationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mimeType = null,Object? name = freezed,}) {
  return _then(_ImageInformationModel(
mimeType: null == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
