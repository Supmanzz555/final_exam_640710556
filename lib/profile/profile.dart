import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatelessWidget {
  final String name;
  final String position;
  final String email;
  final String phone;
  final String url;
  final String github;

  const Profile(
      {super.key,
      required this.name,
      required this.position,
      required this.email,
      required this.phone,
      required this.url,
      required this.github});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 189, 185, 185),
      //add background image
      body: Center(
        //padding: const EdgeInsets.all(50),
        child: Container(
          height: 350,
          width: 500,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black, width: 1.5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ]
          ),
          child: Column(
            children: [
              const SizedBox(height: 16),
              CircleAvatar(
                radius: 65,
                backgroundImage: NetworkImage(url),),
                const SizedBox(height: 16),
                Text(name, style: const TextStyle(fontSize: 24 ,fontWeight: FontWeight.bold),),
                const SizedBox(height: 8),
                  
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.email_outlined),
                    const SizedBox(width: 5),
                    Text(email, style: const TextStyle(fontSize: 18),),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.phone_android_outlined),
                    const SizedBox(width: 5),
                    Text(phone, style: const TextStyle(fontSize: 18),),
                  ],
                ),
                const SizedBox(height: 15,),
                TextButton.icon(
                  label: const Text('Go to Github', style: TextStyle(color: Colors.black , fontSize: 18),),
                  icon: Image.network("https://github.githubassets.com/assets/GitHub-Mark-ea2971cee799.png", height: 30 , width: 30,),   
                  onPressed: () async{
                    final Uri guthib = Uri.parse(github);
                    if (await canLaunchUrl(guthib)) {
                      await launchUrl(guthib, mode: LaunchMode.externalApplication);
                    }else{
                      throw "Cant open the github";
                    }
                  }
                  
                )
            ],
          ),
        ),
      ),
    );
  }
}
