part of '../pages.dart';

class MainPages extends StatefulWidget {
  const MainPages({super.key});

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {

  int currentIndex = 0;

  Widget body(){
    switch (currentIndex){
      case 0: return HomePages();
      case 1: return ChatPage();
      case 2: return WishList();
      case 3: return ProfilePage();
      default: return HomePages();
    }
  }

  Widget customBottomBar() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      ),
      clipBehavior: Clip.antiAlias,
      child: BottomAppBar(
        height: 80,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        color: backgroundColor4,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          backgroundColor: backgroundColor4,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            onTap: (value) {
            setState(() {
              currentIndex = value;
            });
            },
            items: [
              BottomNavigationBarItem(icon: Image.asset('assets/icon_home.png', width: 21,),
              label: "Home",
              ),
              BottomNavigationBarItem(icon: Image.asset('assets/icon_chat.png', width: 20,),
                label: "Chat",
              ),
              BottomNavigationBarItem(icon: Image.asset('assets/icon_wishlist.png', width: 20,),
                label: "Wishlist",
              ),
              BottomNavigationBarItem(icon: Image.asset('assets/icon_profile.png', width: 18,),
                label: "Profile",
              ),
            ]
        ),
      ),
    );
  }

  Widget floatButton(){
    return FloatingActionButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50)
      ),
      backgroundColor: primaryColor,
      onPressed: (){},
    child: Image.asset('assets/icon_cart.png', width: 24,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentIndex == 0 ? backgroundColor1 : backgroundColor3,
      floatingActionButton: floatButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomBar(),
      body: body()
    );
  }
}
