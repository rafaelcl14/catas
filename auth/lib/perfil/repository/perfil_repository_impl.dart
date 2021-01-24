import 'package:auth/perfil/repository/perfil_repository.dart';
import 'package:auth/shared/constants.dart';
import 'package:hasura_connect/hasura_connect.dart';

class PerfilRepositoryImpl implements PerfilRepository{

  final _client = HasuraConnect(HASURA_URL);

  @override
  Future<List<Map>> getUsers() async {

        final response = await _client.query('''
        query {
          usuario {
            email
            name
            id_usuario
          }
        }''');
    return (response['data']['usuario'] as List)
        .map((e) => {"name": e['name'], "email": e['email']})
        .toList();
  }








}