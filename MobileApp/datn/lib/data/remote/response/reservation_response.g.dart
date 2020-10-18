// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReservationResponse> _$reservationResponseSerializer =
    new _$ReservationResponseSerializer();
Serializer<ProductAndCountResponse> _$productAndCountResponseSerializer =
    new _$ProductAndCountResponseSerializer();
Serializer<ShowTimeFullResponse> _$showTimeFullResponseSerializer =
    new _$ShowTimeFullResponseSerializer();

class _$ReservationResponseSerializer
    implements StructuredSerializer<ReservationResponse> {
  @override
  final Iterable<Type> types = const [
    ReservationResponse,
    _$ReservationResponse
  ];
  @override
  final String wireName = 'ReservationResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ReservationResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '_id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'original_price',
      serializers.serialize(object.original_price,
          specifiedType: const FullType(int)),
      'payment_intent_id',
      serializers.serialize(object.payment_intent_id,
          specifiedType: const FullType(String)),
      'phone_number',
      serializers.serialize(object.phone_number,
          specifiedType: const FullType(String)),
      'products',
      serializers.serialize(object.products,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ProductAndCountResponse)])),
      'show_time',
      serializers.serialize(object.show_time,
          specifiedType: const FullType(ShowTimeFullResponse)),
      'total_price',
      serializers.serialize(object.total_price,
          specifiedType: const FullType(int)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(DateTime)),
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(UserResponse)),
    ];
    if (object.is_active != null) {
      result
        ..add('is_active')
        ..add(serializers.serialize(object.is_active,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  ReservationResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReservationResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_active':
          result.is_active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'original_price':
          result.original_price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'payment_intent_id':
          result.payment_intent_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phone_number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'products':
          result.products.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ProductAndCountResponse)
              ])) as BuiltList<Object>);
          break;
        case 'show_time':
          result.show_time.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ShowTimeFullResponse))
              as ShowTimeFullResponse);
          break;
        case 'total_price':
          result.total_price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserResponse)) as UserResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$ProductAndCountResponseSerializer
    implements StructuredSerializer<ProductAndCountResponse> {
  @override
  final Iterable<Type> types = const [
    ProductAndCountResponse,
    _$ProductAndCountResponse
  ];
  @override
  final String wireName = 'ProductAndCountResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProductAndCountResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'quantity',
      serializers.serialize(object.quantity,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  ProductAndCountResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductAndCountResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ShowTimeFullResponseSerializer
    implements StructuredSerializer<ShowTimeFullResponse> {
  @override
  final Iterable<Type> types = const [
    ShowTimeFullResponse,
    _$ShowTimeFullResponse
  ];
  @override
  final String wireName = 'ShowTimeFullResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ShowTimeFullResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '_id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'movie',
      serializers.serialize(object.movie,
          specifiedType: const FullType(MovieResponse)),
      'theatre',
      serializers.serialize(object.theatre,
          specifiedType: const FullType(TheatreResponse)),
      'room',
      serializers.serialize(object.room, specifiedType: const FullType(String)),
      'end_time',
      serializers.serialize(object.end_time,
          specifiedType: const FullType(DateTime)),
      'start_time',
      serializers.serialize(object.start_time,
          specifiedType: const FullType(DateTime)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(DateTime)),
    ];
    if (object.is_active != null) {
      result
        ..add('is_active')
        ..add(serializers.serialize(object.is_active,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  ShowTimeFullResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShowTimeFullResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_active':
          result.is_active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'movie':
          result.movie.replace(serializers.deserialize(value,
              specifiedType: const FullType(MovieResponse)) as MovieResponse);
          break;
        case 'theatre':
          result.theatre.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TheatreResponse))
              as TheatreResponse);
          break;
        case 'room':
          result.room = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'end_time':
          result.end_time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'start_time':
          result.start_time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$ReservationResponse extends ReservationResponse {
  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final String email;
  @override
  final bool is_active;
  @override
  final int original_price;
  @override
  final String payment_intent_id;
  @override
  final String phone_number;
  @override
  final BuiltList<ProductAndCountResponse> products;
  @override
  final ShowTimeFullResponse show_time;
  @override
  final int total_price;
  @override
  final DateTime updatedAt;
  @override
  final UserResponse user;

  factory _$ReservationResponse(
          [void Function(ReservationResponseBuilder) updates]) =>
      (new ReservationResponseBuilder()..update(updates)).build();

  _$ReservationResponse._(
      {this.id,
      this.createdAt,
      this.email,
      this.is_active,
      this.original_price,
      this.payment_intent_id,
      this.phone_number,
      this.products,
      this.show_time,
      this.total_price,
      this.updatedAt,
      this.user})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ReservationResponse', 'id');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('ReservationResponse', 'createdAt');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('ReservationResponse', 'email');
    }
    if (original_price == null) {
      throw new BuiltValueNullFieldError(
          'ReservationResponse', 'original_price');
    }
    if (payment_intent_id == null) {
      throw new BuiltValueNullFieldError(
          'ReservationResponse', 'payment_intent_id');
    }
    if (phone_number == null) {
      throw new BuiltValueNullFieldError('ReservationResponse', 'phone_number');
    }
    if (products == null) {
      throw new BuiltValueNullFieldError('ReservationResponse', 'products');
    }
    if (show_time == null) {
      throw new BuiltValueNullFieldError('ReservationResponse', 'show_time');
    }
    if (total_price == null) {
      throw new BuiltValueNullFieldError('ReservationResponse', 'total_price');
    }
    if (updatedAt == null) {
      throw new BuiltValueNullFieldError('ReservationResponse', 'updatedAt');
    }
    if (user == null) {
      throw new BuiltValueNullFieldError('ReservationResponse', 'user');
    }
  }

  @override
  ReservationResponse rebuild(
          void Function(ReservationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReservationResponseBuilder toBuilder() =>
      new ReservationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReservationResponse &&
        id == other.id &&
        createdAt == other.createdAt &&
        email == other.email &&
        is_active == other.is_active &&
        original_price == other.original_price &&
        payment_intent_id == other.payment_intent_id &&
        phone_number == other.phone_number &&
        products == other.products &&
        show_time == other.show_time &&
        total_price == other.total_price &&
        updatedAt == other.updatedAt &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, id.hashCode),
                                                createdAt.hashCode),
                                            email.hashCode),
                                        is_active.hashCode),
                                    original_price.hashCode),
                                payment_intent_id.hashCode),
                            phone_number.hashCode),
                        products.hashCode),
                    show_time.hashCode),
                total_price.hashCode),
            updatedAt.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReservationResponse')
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('email', email)
          ..add('is_active', is_active)
          ..add('original_price', original_price)
          ..add('payment_intent_id', payment_intent_id)
          ..add('phone_number', phone_number)
          ..add('products', products)
          ..add('show_time', show_time)
          ..add('total_price', total_price)
          ..add('updatedAt', updatedAt)
          ..add('user', user))
        .toString();
  }
}

class ReservationResponseBuilder
    implements Builder<ReservationResponse, ReservationResponseBuilder> {
  _$ReservationResponse _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  bool _is_active;
  bool get is_active => _$this._is_active;
  set is_active(bool is_active) => _$this._is_active = is_active;

  int _original_price;
  int get original_price => _$this._original_price;
  set original_price(int original_price) =>
      _$this._original_price = original_price;

  String _payment_intent_id;
  String get payment_intent_id => _$this._payment_intent_id;
  set payment_intent_id(String payment_intent_id) =>
      _$this._payment_intent_id = payment_intent_id;

  String _phone_number;
  String get phone_number => _$this._phone_number;
  set phone_number(String phone_number) => _$this._phone_number = phone_number;

  ListBuilder<ProductAndCountResponse> _products;
  ListBuilder<ProductAndCountResponse> get products =>
      _$this._products ??= new ListBuilder<ProductAndCountResponse>();
  set products(ListBuilder<ProductAndCountResponse> products) =>
      _$this._products = products;

  ShowTimeFullResponseBuilder _show_time;
  ShowTimeFullResponseBuilder get show_time =>
      _$this._show_time ??= new ShowTimeFullResponseBuilder();
  set show_time(ShowTimeFullResponseBuilder show_time) =>
      _$this._show_time = show_time;

  int _total_price;
  int get total_price => _$this._total_price;
  set total_price(int total_price) => _$this._total_price = total_price;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  UserResponseBuilder _user;
  UserResponseBuilder get user => _$this._user ??= new UserResponseBuilder();
  set user(UserResponseBuilder user) => _$this._user = user;

  ReservationResponseBuilder();

  ReservationResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _createdAt = _$v.createdAt;
      _email = _$v.email;
      _is_active = _$v.is_active;
      _original_price = _$v.original_price;
      _payment_intent_id = _$v.payment_intent_id;
      _phone_number = _$v.phone_number;
      _products = _$v.products?.toBuilder();
      _show_time = _$v.show_time?.toBuilder();
      _total_price = _$v.total_price;
      _updatedAt = _$v.updatedAt;
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReservationResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReservationResponse;
  }

  @override
  void update(void Function(ReservationResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReservationResponse build() {
    _$ReservationResponse _$result;
    try {
      _$result = _$v ??
          new _$ReservationResponse._(
              id: id,
              createdAt: createdAt,
              email: email,
              is_active: is_active,
              original_price: original_price,
              payment_intent_id: payment_intent_id,
              phone_number: phone_number,
              products: products.build(),
              show_time: show_time.build(),
              total_price: total_price,
              updatedAt: updatedAt,
              user: user.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'products';
        products.build();
        _$failedField = 'show_time';
        show_time.build();

        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReservationResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ProductAndCountResponse extends ProductAndCountResponse {
  @override
  final String id;
  @override
  final int quantity;

  factory _$ProductAndCountResponse(
          [void Function(ProductAndCountResponseBuilder) updates]) =>
      (new ProductAndCountResponseBuilder()..update(updates)).build();

  _$ProductAndCountResponse._({this.id, this.quantity}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ProductAndCountResponse', 'id');
    }
    if (quantity == null) {
      throw new BuiltValueNullFieldError('ProductAndCountResponse', 'quantity');
    }
  }

  @override
  ProductAndCountResponse rebuild(
          void Function(ProductAndCountResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductAndCountResponseBuilder toBuilder() =>
      new ProductAndCountResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductAndCountResponse &&
        id == other.id &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), quantity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductAndCountResponse')
          ..add('id', id)
          ..add('quantity', quantity))
        .toString();
  }
}

class ProductAndCountResponseBuilder
    implements
        Builder<ProductAndCountResponse, ProductAndCountResponseBuilder> {
  _$ProductAndCountResponse _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  ProductAndCountResponseBuilder();

  ProductAndCountResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _quantity = _$v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductAndCountResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductAndCountResponse;
  }

  @override
  void update(void Function(ProductAndCountResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductAndCountResponse build() {
    final _$result =
        _$v ?? new _$ProductAndCountResponse._(id: id, quantity: quantity);
    replace(_$result);
    return _$result;
  }
}

class _$ShowTimeFullResponse extends ShowTimeFullResponse {
  @override
  final String id;
  @override
  final bool is_active;
  @override
  final MovieResponse movie;
  @override
  final TheatreResponse theatre;
  @override
  final String room;
  @override
  final DateTime end_time;
  @override
  final DateTime start_time;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$ShowTimeFullResponse(
          [void Function(ShowTimeFullResponseBuilder) updates]) =>
      (new ShowTimeFullResponseBuilder()..update(updates)).build();

  _$ShowTimeFullResponse._(
      {this.id,
      this.is_active,
      this.movie,
      this.theatre,
      this.room,
      this.end_time,
      this.start_time,
      this.createdAt,
      this.updatedAt})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ShowTimeFullResponse', 'id');
    }
    if (movie == null) {
      throw new BuiltValueNullFieldError('ShowTimeFullResponse', 'movie');
    }
    if (theatre == null) {
      throw new BuiltValueNullFieldError('ShowTimeFullResponse', 'theatre');
    }
    if (room == null) {
      throw new BuiltValueNullFieldError('ShowTimeFullResponse', 'room');
    }
    if (end_time == null) {
      throw new BuiltValueNullFieldError('ShowTimeFullResponse', 'end_time');
    }
    if (start_time == null) {
      throw new BuiltValueNullFieldError('ShowTimeFullResponse', 'start_time');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('ShowTimeFullResponse', 'createdAt');
    }
    if (updatedAt == null) {
      throw new BuiltValueNullFieldError('ShowTimeFullResponse', 'updatedAt');
    }
  }

  @override
  ShowTimeFullResponse rebuild(
          void Function(ShowTimeFullResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShowTimeFullResponseBuilder toBuilder() =>
      new ShowTimeFullResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShowTimeFullResponse &&
        id == other.id &&
        is_active == other.is_active &&
        movie == other.movie &&
        theatre == other.theatre &&
        room == other.room &&
        end_time == other.end_time &&
        start_time == other.start_time &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), is_active.hashCode),
                                movie.hashCode),
                            theatre.hashCode),
                        room.hashCode),
                    end_time.hashCode),
                start_time.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ShowTimeFullResponse')
          ..add('id', id)
          ..add('is_active', is_active)
          ..add('movie', movie)
          ..add('theatre', theatre)
          ..add('room', room)
          ..add('end_time', end_time)
          ..add('start_time', start_time)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ShowTimeFullResponseBuilder
    implements Builder<ShowTimeFullResponse, ShowTimeFullResponseBuilder> {
  _$ShowTimeFullResponse _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  bool _is_active;
  bool get is_active => _$this._is_active;
  set is_active(bool is_active) => _$this._is_active = is_active;

  MovieResponseBuilder _movie;
  MovieResponseBuilder get movie =>
      _$this._movie ??= new MovieResponseBuilder();
  set movie(MovieResponseBuilder movie) => _$this._movie = movie;

  TheatreResponseBuilder _theatre;
  TheatreResponseBuilder get theatre =>
      _$this._theatre ??= new TheatreResponseBuilder();
  set theatre(TheatreResponseBuilder theatre) => _$this._theatre = theatre;

  String _room;
  String get room => _$this._room;
  set room(String room) => _$this._room = room;

  DateTime _end_time;
  DateTime get end_time => _$this._end_time;
  set end_time(DateTime end_time) => _$this._end_time = end_time;

  DateTime _start_time;
  DateTime get start_time => _$this._start_time;
  set start_time(DateTime start_time) => _$this._start_time = start_time;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  ShowTimeFullResponseBuilder();

  ShowTimeFullResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _is_active = _$v.is_active;
      _movie = _$v.movie?.toBuilder();
      _theatre = _$v.theatre?.toBuilder();
      _room = _$v.room;
      _end_time = _$v.end_time;
      _start_time = _$v.start_time;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShowTimeFullResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ShowTimeFullResponse;
  }

  @override
  void update(void Function(ShowTimeFullResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ShowTimeFullResponse build() {
    _$ShowTimeFullResponse _$result;
    try {
      _$result = _$v ??
          new _$ShowTimeFullResponse._(
              id: id,
              is_active: is_active,
              movie: movie.build(),
              theatre: theatre.build(),
              room: room,
              end_time: end_time,
              start_time: start_time,
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'movie';
        movie.build();
        _$failedField = 'theatre';
        theatre.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ShowTimeFullResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
