import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MinhasEspecialidadesRecord extends FirestoreRecord {
  MinhasEspecialidadesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  bool hasTag() => _tag != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "id_tag" field.
  double? _idTag;
  double get idTag => _idTag ?? 0.0;
  bool hasIdTag() => _idTag != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "creat_data" field.
  DateTime? _creatData;
  DateTime? get creatData => _creatData;
  bool hasCreatData() => _creatData != null;

  void _initializeFields() {
    _nome = snapshotData['Nome'] as String?;
    _tag = snapshotData['tag'] as String?;
    _id = castToType<int>(snapshotData['id']);
    _idTag = castToType<double>(snapshotData['id_tag']);
    _userId = snapshotData['user_id'] as String?;
    _creatData = snapshotData['creat_data'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MinhasEspecialidades');

  static Stream<MinhasEspecialidadesRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => MinhasEspecialidadesRecord.fromSnapshot(s));

  static Future<MinhasEspecialidadesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => MinhasEspecialidadesRecord.fromSnapshot(s));

  static MinhasEspecialidadesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MinhasEspecialidadesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MinhasEspecialidadesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MinhasEspecialidadesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MinhasEspecialidadesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MinhasEspecialidadesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMinhasEspecialidadesRecordData({
  String? nome,
  String? tag,
  int? id,
  double? idTag,
  String? userId,
  DateTime? creatData,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nome': nome,
      'tag': tag,
      'id': id,
      'id_tag': idTag,
      'user_id': userId,
      'creat_data': creatData,
    }.withoutNulls,
  );

  return firestoreData;
}

class MinhasEspecialidadesRecordDocumentEquality
    implements Equality<MinhasEspecialidadesRecord> {
  const MinhasEspecialidadesRecordDocumentEquality();

  @override
  bool equals(MinhasEspecialidadesRecord? e1, MinhasEspecialidadesRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.tag == e2?.tag &&
        e1?.id == e2?.id &&
        e1?.idTag == e2?.idTag &&
        e1?.userId == e2?.userId &&
        e1?.creatData == e2?.creatData;
  }

  @override
  int hash(MinhasEspecialidadesRecord? e) => const ListEquality()
      .hash([e?.nome, e?.tag, e?.id, e?.idTag, e?.userId, e?.creatData]);

  @override
  bool isValidKey(Object? o) => o is MinhasEspecialidadesRecord;
}
