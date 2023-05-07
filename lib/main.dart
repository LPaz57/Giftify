import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/pages/start_page.dart';
import 'package:graphql_flutter/graphql_flutter.dart';


void main() async{
  // Habilitar la opción de experimento "records"
  // para usar características experimentales de Dart
  // como las clases de "record".

  await initHiveForFlutter();

  final HttpLink httpLink = HttpLink(
    'https://giftify-api.up.railway.app/graphql',
  );

  final ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      // The default store is the InMemoryStore, which does NOT persist to disk
      cache: GraphQLCache(store: HiveStore()),
    ),
  );

  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(client));
}

class MyApp extends StatelessWidget {

  final ValueNotifier<GraphQLClient> client;
  const MyApp(this.client, {super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.backgroundColor,
          //primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Start(),
        )
      ),
    );
  }
}



