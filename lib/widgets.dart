import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

//profile card
class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage(
              'https://pbs.twimg.com/profile_images/1529989818683478031/HLx87VL4_400x400.jpg',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Text('Howdy,',
                  style: GoogleFonts.mulish(
                      fontSize: 14, fontWeight: FontWeight.normal)),
              Text(
                "Oluwatobiloba Akinnusi",
                style: GoogleFonts.mulish(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

// welcome card
class WelcomeCard extends StatelessWidget {
  const WelcomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      // height: 150,
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to the Zuri Team!',
                  style: GoogleFonts.mulish(
                      fontSize: 24,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  'We are delighted to have you on board.',
                  style: GoogleFonts.mulish(
                      fontSize: 14, fontWeight: FontWeight.normal),
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              flex: 1,
              child: Image.network(
                'https://ouch-cdn2.icons8.com/nTzxbeb1vR6AifTQUB018dOOaIl6QMVS8TjhrUw0Q6M/rs:fit:368:421/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvOC83/Zjk3NzM1NC1jMjgx/LTQ2MTMtYWIxZS00/YTI1OWIwMWJkNjUu/c3Zn.png',
                height: 130,
              ))
        ],
      ),
    );
  }
}

//profile details

class ProfileDetails extends StatelessWidget {
  // const ProfileDetails({super.key});

  List mylist = [
    ProfileItems(
        listTitle: 'Email',
        listSubtitle: 'akinnusioluwatobiloba@gmail.com',
        listIcon: Icons.email_rounded),
    ProfileItems(
        listTitle: 'Phone number',
        listSubtitle: '+2349152804752',
        listIcon: Icons.phone),
    ProfileItems(
        listTitle: 'Track',
        listSubtitle: 'Mobile',
        listIcon: Icons.track_changes_rounded),
    ProfileItems(
        listTitle: 'Programming Language used',
        listSubtitle: 'Dart/Flutter',
        listIcon: Icons.code_off_rounded)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Profile details',
            style: GoogleFonts.mulish(
                fontSize: 16,
                color: Colors.blue[900],
                fontWeight: FontWeight.bold),
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: mylist.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(
                        mylist[index].listIcon,
                        color: Colors.blue[900],
                        size: 25,
                      ),
                      title: Text(
                        mylist[index].listTitle,
                        style: GoogleFonts.mulish(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(mylist[index].listSubtitle,
                          style: GoogleFonts.mulish(
                              fontSize: 14, fontWeight: FontWeight.normal)),
                    );
                  })),
        ],
      ),
    );
  }
}

//github button

class GithubButton extends StatelessWidget {
  // const GithubButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: MaterialButton(
          elevation: 0,
          padding: EdgeInsets.all(20),
          color: Colors.blue[900],
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://img.icons8.com/?size=2x&id=16318&format=png',
                color: Colors.white,
                width: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Open Github',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileItems {
  String listTitle;
  String listSubtitle;
  IconData listIcon;

  ProfileItems(
      {required this.listTitle,
      required this.listSubtitle,
      required this.listIcon});
}
