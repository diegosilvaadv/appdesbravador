import '../database.dart';

class ClubesTable extends SupabaseTable<ClubesRow> {
  @override
  String get tableName => 'clubes';

  @override
  ClubesRow createRow(Map<String, dynamic> data) => ClubesRow(data);
}

class ClubesRow extends SupabaseDataRow {
  ClubesRow(super.data);

  @override
  SupabaseTable get table => ClubesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get sobre => getField<String>('sobre');
  set sobre(String? value) => setField<String>('sobre', value);

  String? get brazao => getField<String>('brazao');
  set brazao(String? value) => setField<String>('brazao', value);

  DateTime? get criadoEm => getField<DateTime>('criadoEm');
  set criadoEm(DateTime? value) => setField<DateTime>('criadoEm', value);

  String? get diretor => getField<String>('diretor');
  set diretor(String? value) => setField<String>('diretor', value);

  String? get diretoresAssociados => getField<String>('diretores_associados');
  set diretoresAssociados(String? value) =>
      setField<String>('diretores_associados', value);

  String? get secretario => getField<String>('secretario');
  set secretario(String? value) => setField<String>('secretario', value);

  String? get tesoreiro => getField<String>('tesoreiro');
  set tesoreiro(String? value) => setField<String>('tesoreiro', value);

  String? get capelao => getField<String>('capelao');
  set capelao(String? value) => setField<String>('capelao', value);

  String? get instrutores => getField<String>('instrutores');
  set instrutores(String? value) => setField<String>('instrutores', value);

  String? get conselheiros => getField<String>('conselheiros');
  set conselheiros(String? value) => setField<String>('conselheiros', value);

  String? get capitaoUnidade => getField<String>('capitao_unidade');
  set capitaoUnidade(String? value) =>
      setField<String>('capitao_unidade', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);
}
