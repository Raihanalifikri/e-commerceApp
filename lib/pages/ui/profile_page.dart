part of '../pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget menuItem(String title) {
      return Container(
        margin: EdgeInsets.only(top: 12),
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          color: backgroundColor4,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Text(
              title,
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.white,
            )
          ],
        ),
      );
    }

    Widget Content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/image_profile.png'),
                  ),
                  SizedBox(width: 12,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Raihan Alifikir', style: primaryTextStyle.copyWith(fontWeight: semiBold, fontSize: 20),),
                        Text('m.raihanalifikri@gmail.com', style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: regular),)
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed((context), '/sign-in');
                    },
                    child: Icon(Icons.exit_to_app, size: 28, color: primaryTextColor,),
                  )
                ],
              ),
              SizedBox(height: 12,),
              Divider(
                thickness: 1,
                color: primaryTextColor,
              ),
              SizedBox(height: 15,),
              Text(
                'Account',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: menuItem('See The Profile'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed((context), '/edit-profile');
                },
                child: menuItem('Edit Profile'),
              ),
              GestureDetector(
                onTap: () {},
                child: menuItem('Help!'),
              ),
              SizedBox(height: 12,),
              Text(
                'General',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: menuItem('Police & Privacy'),
              ),
              GestureDetector(
                onTap: () {},
                child: menuItem('Term of Service'),
              ),
              GestureDetector(
                onTap: () {},
                child: menuItem('Rate Data'),
              ),
              GestureDetector(
                onTap: () {},
                child: menuItem('Help Center'),
              ),
            ],
          ),
        ),
      );
    }

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        title: Text(
          'Profile',
          style: primaryTextStyle,
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    return ListView(
      children: [
        header(),
        Content(),
      ],
    );
  }
}
