import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/modal_delete_address.dart';
import 'package:giftify/widgets/modal_delete_payment.dart';
import 'package:giftify/widgets/modal_filters.dart';
import 'package:giftify/widgets/modal_pay.dart';
import 'package:giftify/widgets/my_text_field.dart';


class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.tune, 
                      color: AppColors.maintextColor,
                    ),
                    onPressed: (){
                      
                      showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context, 
                        builder: (BuildContext context) {
                          return ModalFilters();
                        }
                      );
                    },
                  ),
        ),

        SizedBox(width: 10,),

        const MyTextField(
                  hintText: ' Que quieres regalar?', 
                  icon: Icons.search,
                  width: 262,
        ),
      ],
    );
  }
}