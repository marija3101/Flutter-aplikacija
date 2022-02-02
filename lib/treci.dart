
import 'package:flutter/material.dart';

class TreciWidget extends StatefulWidget{
  const TreciWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}
 class _MyAppState extends State<TreciWidget>{   
// ignore: non_constant_identifier_names, unnecessary_new



final allChecked =  CheckBoxModal(title: 'Koje su Vam se drzave najvise dopale? Ako je odgovor sve selektujte dugme pored.');
final checkedBoxList = [
  CheckBoxModal(title:"Turska" ),
  CheckBoxModal(title:"Italija" ),
  CheckBoxModal(title:"Spanija" ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Blog post"),
          backgroundColor: Colors.brown.shade400,
          
        ),
      body: 
 

      ListView(
  children:[
ListTile(
  onTap: () => onAllClicked(allChecked),
  leading: Checkbox(
value: allChecked.value,
onChanged: (value) => onAllClicked(allChecked),
  ),
  title: Text(allChecked.title, style: const TextStyle(
    fontSize: 20, fontWeight: FontWeight.bold
  )),
),
const Divider(),
...checkedBoxList.map((item)=>
ListTile(
  onTap: () => onItemClicked(item),
  leading: Checkbox(
value: item.value,
onChanged: (value) => onItemClicked(item),
  ),
  title: Text(item.title, style: const TextStyle(
    fontSize: 20, fontStyle: FontStyle.italic
  )),
),
).toList()
  ]

),
      );
  }


  onAllClicked(CheckBoxModal ckb) {
  final newValue = !ckb.value;
  setState(() {
  ckb.value = newValue;
  // ignore: avoid_function_literals_in_foreach_calls
  checkedBoxList.forEach((element) {
    element.value = newValue;
  });
});
}

onItemClicked(CheckBoxModal ckb) { 
  final newValue = !ckb.value;
setState(() {
  ckb.value = newValue;

  if(!newValue) {
    allChecked.value = false;
  } else {
    final allListChecked = checkedBoxList.every((element) => element.value);
    allChecked.value = allListChecked ;
  }
});
}

}
class CheckBoxModal {
  String title;
  bool value;
CheckBoxModal({required this.title, this.value = false});
}
  
