import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza/models/models.dart';
import 'package:pizza/utils/utils.dart';

import 'item_details_page.dart';

class ItemCountDisplay extends StatefulWidget {
  const ItemCountDisplay({super.key});

  @override
  State<ItemCountDisplay> createState() => _ItemCountDisplayState();
}

class _ItemCountDisplayState extends State<ItemCountDisplay> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            mainAxisExtent: 265),
        itemCount: foodsItems.length,
        itemBuilder: (context, index) {
          FoodDetail food = foodsItems[index];
          return GestureDetector(
            onTap: (){
              Get.to(()=>IteamsDetails(food: food,));
            },
            child: Container(
              height: 265,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(125),
                          child: Image.network(
                            food.image,
                            fit: BoxFit.cover,
                            height: 120,
                            width: 120,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          food.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Text(
                              food.cookingTime,
                              style: const TextStyle(color: Colors.black38),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 18,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              food.rate.toString(),
                              style: const TextStyle(color: Colors.black38),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child:
                        Text(
                          '\$${food.price}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 150, top: 10),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.black45,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Material(
                      color: primaryColors,
                      borderRadius: const BorderRadius.only(
                        topLeft : Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.add,color: Colors.white,),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
