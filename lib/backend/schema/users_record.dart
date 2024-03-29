import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Espec_Concluidas" field.
  int? _especConcluidas;
  int get especConcluidas => _especConcluidas ?? 0;
  bool hasEspecConcluidas() => _especConcluidas != null;

  // "datadeInicio_lenco" field.
  DateTime? _datadeInicioLenco;
  DateTime? get datadeInicioLenco => _datadeInicioLenco;
  bool hasDatadeInicioLenco() => _datadeInicioLenco != null;

  // "meuClube" field.
  String? _meuClube;
  String get meuClube => _meuClube ?? '';
  bool hasMeuClube() => _meuClube != null;

  // "CreatPerfil" field.
  DateTime? _creatPerfil;
  DateTime? get creatPerfil => _creatPerfil;
  bool hasCreatPerfil() => _creatPerfil != null;

  // "sobrevoce" field.
  String? _sobrevoce;
  String get sobrevoce => _sobrevoce ?? '';
  bool hasSobrevoce() => _sobrevoce != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "diretorClube" field.
  bool? _diretorClube;
  bool get diretorClube => _diretorClube ?? false;
  bool hasDiretorClube() => _diretorClube != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _especConcluidas = castToType<int>(snapshotData['Espec_Concluidas']);
    _datadeInicioLenco = snapshotData['datadeInicio_lenco'] as DateTime?;
    _meuClube = snapshotData['meuClube'] as String?;
    _creatPerfil = snapshotData['CreatPerfil'] as DateTime?;
    _sobrevoce = snapshotData['sobrevoce'] as String?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _title = snapshotData['title'] as String?;
    _diretorClube = snapshotData['diretorClube'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? especConcluidas,
  DateTime? datadeInicioLenco,
  String? meuClube,
  DateTime? creatPerfil,
  String? sobrevoce,
  String? shortDescription,
  DateTime? lastActiveTime,
  String? role,
  String? title,
  bool? diretorClube,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'Espec_Concluidas': especConcluidas,
      'datadeInicio_lenco': datadeInicioLenco,
      'meuClube': meuClube,
      'CreatPerfil': creatPerfil,
      'sobrevoce': sobrevoce,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'role': role,
      'title': title,
      'diretorClube': diretorClube,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.especConcluidas == e2?.especConcluidas &&
        e1?.datadeInicioLenco == e2?.datadeInicioLenco &&
        e1?.meuClube == e2?.meuClube &&
        e1?.creatPerfil == e2?.creatPerfil &&
        e1?.sobrevoce == e2?.sobrevoce &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.role == e2?.role &&
        e1?.title == e2?.title &&
        e1?.diretorClube == e2?.diretorClube;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.especConcluidas,
        e?.datadeInicioLenco,
        e?.meuClube,
        e?.creatPerfil,
        e?.sobrevoce,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.role,
        e?.title,
        e?.diretorClube
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
