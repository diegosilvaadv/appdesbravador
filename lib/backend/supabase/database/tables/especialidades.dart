import '../database.dart';

class EspecialidadesTable extends SupabaseTable<EspecialidadesRow> {
  @override
  String get tableName => 'Especialidades';

  @override
  EspecialidadesRow createRow(Map<String, dynamic> data) =>
      EspecialidadesRow(data);
}

class EspecialidadesRow extends SupabaseDataRow {
  EspecialidadesRow(super.data);

  @override
  SupabaseTable get table => EspecialidadesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double? get idTag => getField<double>('Id_tag');
  set idTag(double? value) => setField<double>('Id_tag', value);

  String? get nomeEspecialidade => getField<String>('nome_especialidade');
  set nomeEspecialidade(String? value) =>
      setField<String>('nome_especialidade', value);

  String? get tag => getField<String>('tag');
  set tag(String? value) => setField<String>('tag', value);
}
