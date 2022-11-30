import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:tdd_flutter_graphql/src/core/res/strings.dart';

Future<Client> getClient() async {
  var link = HttpLink(url);
  Client client = Client(link: link);
  return client;
}
