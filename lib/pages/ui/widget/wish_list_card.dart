part of 'widget.dart';

class WishListCard extends StatelessWidget {
  const WishListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: backgroundColor3,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/image_shoes.png',
                width: 65,
              )),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Arei Shoes v.3 - black',
                  style: primaryTextStyle.copyWith(
                      fontSize: 20, fontWeight: medium),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  NumberFormat.currency(
                          locale: 'id_ID', decimalDigits: 0, symbol: 'IDR')
                      .format(750000),
                  style: priceTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          GestureDetector(
            onTap: (){},
              child: Image.asset(
            'assets/button_wishlist_blue.png',
            width: 36,
          ))
        ],
      ),
    );
  }
}
