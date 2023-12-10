import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ClubesRecord extends FirestoreRecord {
  ClubesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "criadoEm" field.
  DateTime? _criadoEm;
  DateTime? get criadoEm => _criadoEm;
  bool hasCriadoEm() => _criadoEm != null;

  // "sobre" field.
  String? _sobre;
  String get sobre => _sobre ?? '';
  bool hasSobre() => _sobre != null;

  // "brazao" field.
  String? _brazao;
  String get brazao => _brazao ?? '';
  bool hasBrazao() => _brazao != null;

  // "diretor" field.
  String? _diretor;
  String get diretor => _diretor ?? '';
  bool hasDiretor() => _diretor != null;

  // "diretores_associados" field.
  List<String>? _diretoresAssociados;
  List<String> get diretoresAssociados => _diretoresAssociados ?? const [];
  bool hasDiretoresAssociados() => _diretoresAssociados != null;

  // "conselheiros" field.
  List<String>? _conselheiros;
  List<String> get conselheiros => _conselheiros ?? const [];
  bool hasConselheiros() => _conselheiros != null;

  // "capelao" field.
  String? _capelao;
  String get capelao => _capelao ?? '';
  bool hasCapelao() => _capelao != null;

  // "secretario" field.
  String? _secretario;
  String get secretario => _secretario ?? '';
  bool hasSecretario() => _secretario != null;

  // "instrutores" field.
  List<String>? _instrutores;
  List<String> get instrutores => _instrutores ?? const [];
  bool hasInstrutores() => _instrutores != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _criadoEm = snapshotData['criadoEm'] as DateTime?;
    _sobre = snapshotData['sobre'] as String?;
    _brazao = snapshotData['brazao'] as String?;
    _diretor = snapshotData['diretor'] as String?;
    _diretoresAssociados = getDataList(snapshotData['diretores_associados']);
    _conselheiros = getDataList(snapshotData['conselheiros']);
    _capelao = snapshotData['capelao'] as String?;
    _secretario = snapshotData['secretario'] as String?;
    _instrutores = getDataList(snapshotData['instrutores']);
    _endereco = snapshotData['endereco'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clubes');

  static Stream<ClubesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClubesRecord.fromSnapshot(s));

  static Future<ClubesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClubesRecord.fromSnapshot(s));

  static ClubesRecord fromSnapshot(DocumentSnapshot snapshot) => ClubesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClubesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClubesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClubesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClubesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClubesRecordData({
  String? nome,
  DateTime? criadoEm,
  String? sobre,
  String? brazao,
  String? diretor,
  String? capelao,
  String? secretario,
  String? endereco,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'criadoEm': criadoEm,
      'sobre': sobre,
      'brazao': brazao,
      'diretor': diretor,
      'capelao': capelao,
      'secretario': secretario,
      'endereco': endereco,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClubesRecordDocumentEquality implements Equality<ClubesRecord> {
  const ClubesRecordDocumentEquality();

  @override
  bool equals(ClubesRecord? e1, ClubesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nome == e2?.nome &&
        e1?.criadoEm == e2?.criadoEm &&
        e1?.sobre == e2?.sobre &&
        e1?.brazao == e2?.brazao &&
        e1?.diretor == e2?.diretor &&
        listEquality.equals(e1?.diretoresAssociados, e2?.diretoresAssociados) &&
        listEquality.equals(e1?.conselheiros, e2?.conselheiros) &&
        e1?.capelao == e2?.capelao &&
        e1?.secretario == e2?.secretario &&
        listEquality.equals(e1?.instrutores, e2?.instrutores) &&
        e1?.endereco == e2?.endereco;
  }

  @override
  int hash(ClubesRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.criadoEm,
        e?.sobre,
        e?.brazao,
        e?.diretor,
        e?.diretoresAssociados,
        e?.conselheiros,
        e?.capelao,
        e?.secretario,
        e?.instrutores,
        e?.endereco
      ]);

  @override
  bool isValidKey(Object? o) => o is ClubesRecord;
}
