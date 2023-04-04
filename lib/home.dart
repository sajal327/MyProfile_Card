import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const name = "Sajal Laha";
const phone = "+91 9679159502";
const mail = "sajallaha16@gmail.com";
const location = "West Bengal, India";


class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  TextEditingController recipientController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA30240),
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage('assets/images/myimage.jpg'),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Text(name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Pacifico",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('FLUTTER DEVELOPER',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Source Sans Pro",
                letterSpacing: 2.0,
              ),
            ),
            Container(
              height: 1.0,
              margin: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
              color: Colors.white,
            ),
            GestureDetector(
              onTap: ()async{
                final Uri call = Uri(
                  scheme: 'tel',
                  path: phone,
                );
                if (await canLaunchUrl(call)){
                  await launchUrl(call);
                }
                else {
                  print('cannot launch this url');
                }
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 7.0),
                child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color : Color(0xFFca1b53),
                        size: 40.0,
                      ),
                      title: Text(phone,
                        style: TextStyle(
                          color : Color(0xFFca1b53),
                          fontSize: 20.0,
                          fontFamily: 'SourceSansPro-Regular.ttf',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
              ),
            ),
            GestureDetector(
              onTap: ()async{

                final Uri email = Uri(
                  scheme: 'mailto',
                  path: mail,
                );

                if(await canLaunchUrl(email)) {
                  await launchUrl(email);
                } else {
                  debugPrint('error');
                }
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 7.0),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color : Color(0xFFca1b53),
                      size: 40.0,
                    ),
                    title: Text(mail,
                      style: TextStyle(
                        color : Color(0xFFca1b53),
                        fontSize: 18.0,
                        fontFamily: 'SourceSansPro-Regular.ttf',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: ()async{

              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 7.0),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.location_city_sharp,
                      color : Color(0xFFca1b53),
                      size: 40.0,
                    ),
                    title: Text(location,
                      style: TextStyle(
                        color : Color(0xFFca1b53),
                        fontSize: 18.0,
                        fontFamily: 'SourceSansPro-Regular.ttf',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
