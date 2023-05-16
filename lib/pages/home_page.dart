import 'package:flutter/material.dart';
import 'package:giftify/pages/profile_page.dart';
import 'package:giftify/widgets/app_text.dart';
import 'package:giftify/widgets/category_button_list.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/icon_cart.dart';
import 'package:giftify/widgets/cards/product_card.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/cards/promo_card.dart';
import 'package:graphql_flutter/graphql_flutter.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  
  @override
  Widget build(BuildContext context) {

    String readGifts = """
              query { gifts {
                id
                name
                rating
                price
                image
                description
                } 
              }""";

    return Scaffold(
      resizeToAvoidBottomInset: true,

      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.location_pin),
              color: AppColors.mainColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 14, right: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(text: "Ubicacion de entrega", size: 12,),
                AppLargeText(text: 'Morelia', size: 12,)
              ]
            ),
          ),

          IconCart(),

          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile()
                )
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/profile_picture.png', 
                  width: 36,
                ),
              ),
            ),
          ),
            // const SizedBox(
            //   width: 10,
            // )
          ],
      ),

      body: Container(
        //color: Colors.amber,
        margin: const EdgeInsets.only(top: 12, left: 24, right: 24),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const PromoCard(pathImage: 'assets/images/card1.png'),
            
            const CategorieButtonList(),

            Row(
              children: [
                AppLargeText(
                  text: "Mas populares", size: 16,
                ),
              ],
            ),

            Expanded(

              child: Query(
                options: QueryOptions(
                document: gql(readGifts), // this is the query string you just created
                ),

                builder: (QueryResult result, { VoidCallback? refetch, FetchMore? fetchMore }) {
                  if (result.hasException) {
                      return Text(result.exception.toString());
                  }

                  if (result.isLoading) {
                    return const Text('Loading');
                  }

                  List? gifts = result.data?['gifts'];
                  
                  if (gifts == null) {
                    return const Text('No repositories');
                  }
                
                return ListView.builder(
                  itemCount: gifts.length,
                  itemBuilder: (BuildContext context, int index) {
                    final gift = gifts[index];
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ProductCard(pathImage: gift['image'], name: gift['name'], price: gift['price'], rating: gift['rating'], description: gift ['description'],),
                        SizedBox(width: 12,),
                        ProductCard(pathImage: gift['image'], name: gift['name'], price: gift['price'], rating: gift['rating'], description: gift ['description'],),
                      ],
                    );
                  },
                );
                }
              ),
            ),
          ]
        ),
      ),
    );
  }
}