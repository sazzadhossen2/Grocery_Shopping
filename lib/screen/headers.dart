import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pizza/utils/utils.dart';

class HeaderParts extends StatefulWidget {
  const HeaderParts({super.key});

  @override
  State<HeaderParts> createState() => _HeaderPartsState();
}

int indexCategory = 0;

class _HeaderPartsState extends State<HeaderParts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        topHeader(),
        const SizedBox(
          height: 30,
        ),
        title(),
        const SizedBox(
          height: 21,
        ),
        searchBar(),
        const SizedBox(
          height: 30,
        ),
        categorySelectScreen()
      ],
    );
  }

  Padding categorySelectScreen() {
    List list = ['All', 'Fruits', 'vegetable', 'Grocery'];
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SizedBox(
        height: 35,
        child: ListView.builder(
            itemCount: list.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    indexCategory = index;
                  });
                },
                child: Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        list[index],
                        style: TextStyle(
                            color: indexCategory == index
                                ? primaryColors
                                : Colors.black45,
                            fontWeight:
                                indexCategory == index ? FontWeight.bold : null,
                            fontSize: 20),
                      ),
                    )),
              );
            }),
      ),
    );
  }

  Container searchBar() {
    return Container(
      height: 55,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.green[50], borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
            decoration: const InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Iconsax.search_normal,
                  color: primaryColors,
                ),
                hintText: "Search Food",
                hintStyle: TextStyle(color: Colors.black26)),
          )),
          Material(
            color: primaryColors,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                child: Icon(
                  Icons.insert_emoticon_sharp,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding title() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi Sazzad',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: primaryColors,
                fontSize: 18),
          ),
          Text(
            'Find your food',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 34),
          )
        ],
      ),
    );
  }

  Padding topHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Material(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.menu_open,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            Iconsax.location,
            color: primaryColors,
            size: 18,
          ),
          SizedBox(
            width: 2,
          ),
          const Text(
            'SKT Dhaka',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black38),
          ),
          const Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/user.jpg',
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
