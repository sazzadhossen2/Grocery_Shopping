import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pizza/models/models.dart';
import 'package:pizza/utils/utils.dart';

class IteamsDetails extends StatefulWidget {
  const IteamsDetails({super.key, required this.food});

  final FoodDetail food;

  @override
  State<IteamsDetails> createState() => _IteamsDetailsState();
}

class _IteamsDetailsState extends State<IteamsDetails> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColors,
      body: ListView(
        children: [
          SizedBox(
            height: 25,
          ),
          detailsIteamsHeader(),
          SizedBox(height: 30,),
          detailImage(),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.food.name,
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 34,
                                color: Colors.black),
                          ),
                          Text(
                            '\$${widget.food.price}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: primaryColors),
                          ),
                        ],
                      ),
                    ),
                    Material(
                      color: primaryColors,
                      borderRadius: BorderRadius.circular(30),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                if (quantity > 1) {
                                  quantity -= 1;
                                }
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                              )),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '$quantity',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          IconButton(
                              onPressed: () {
                                quantity += 1;
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 27,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      widget.food.rate.toString(),
                      style: TextStyle(color: Colors.black38, fontSize: 18),
                    ),
                    Spacer(),
                    Icon(
                      Icons.fiber_manual_record,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '${widget.food.kcal}Kcal',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Spacer(),
                    Icon(
                      Icons.access_time_filled,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      widget.food.cookingTime,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.food.description,
                  style: const TextStyle(fontSize: 16, color: Colors.black54),
                ),
                SizedBox(
                  height: 25,
                ),
                Material(
                  color: primaryColors,
                  borderRadius: BorderRadius.circular(15),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 21),
                      child: Text(
                        'Add to Cart',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height:70,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  SizedBox detailImage() {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
              )),
          Center(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.green[400]!,
                      blurRadius: 15,
                      offset: Offset(0, 8))
                ],
                borderRadius: BorderRadius.circular(250),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(250),
                child: Image.network(
                  widget.food.image,
                  height: 250,
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding detailsIteamsHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Material(
            color: Colors.white.withOpacity(0.21),
            borderRadius: BorderRadius.circular(10),
            child: BackButton(
              color: Colors.white,
            ),
          ),
          Spacer(),
          Text(
            'Details Food',
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Material(
            color: Colors.white.withOpacity(0.21),
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {},
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
