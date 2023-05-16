import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/pages/start_page.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart' as redux;
import 'package:giftify/store/reducer.dart';
import 'package:giftify/store/initial_state.dart';
import 'package:giftify/types/user_response.dart';

void main() async {
  await initHiveForFlutter();

  final redux.Store<UserResponse> store =
      redux.Store<UserResponse>(reducer, initialState: initialState);
  final HttpLink httpLink =
      HttpLink('https://giftify-api.up.railway.app/graphql');

  print("recoveryToken: ${store.state.recoveryToken}");

  final ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(store: HiveStore()),
    ),
  );

  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(client, store));
}

class MyApp extends StatelessWidget {
  final ValueNotifier<GraphQLClient> client;
  final redux.Store<UserResponse> store;
  const MyApp(this.client, this.store, {super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: GraphQLProvider(
          client: client,
          child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Giftify',
              theme: ThemeData(
                scaffoldBackgroundColor: AppColors.backgroundColor,
              ),
              home: const Scaffold(
                body: Start(),
              )),
        ));
  }
}
