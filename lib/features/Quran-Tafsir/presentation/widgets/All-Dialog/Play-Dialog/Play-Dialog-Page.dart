import 'package:flutter/material.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/All-Dialog/Play-Dialog/Daownlod-Sora-To-Listen.dart';


playAlert(BuildContext context) {
  Widget cancelButton = TextButton(
    child:
        Text("لا", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
    onPressed: () => Navigator.pop(context),
  );
  Widget continueButton = TextButton(
    child: Text(
      "نعم",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
    onPressed: () =>showDialog(context: context, builder: (context)=>DownloadSurahToListen())
  );

  AlertDialog alert = AlertDialog(
    title: Text(
      "!تنبيه",
      style: TextStyle(color: Colors.black),
      textAlign: TextAlign.center,
    ),
    content: Text(
      "لم يتم تنزيل السور المراد الاستماع إلى اّياتها مسبقا. هل تريد تنزيل الصور؟",
      textAlign: TextAlign.right,
    ),
    actions: [
      Column(
        children: [
          Divider(color: Colors.black),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [cancelButton, continueButton],
          )
        ],
      )
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
