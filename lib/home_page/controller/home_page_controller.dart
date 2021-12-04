// ignore_for_file: unused_local_variable

import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/models/person.dart';
import 'package:instagram_clone/repositories/person_repository.dart';
import 'package:instagram_clone/rest_client/rest_client.dart';

RestClient rClient = RestClient();

class HomePageController extends GetxController {
  var personRepository = PersonRepository(restClient: rClient);

  List<Person?>? listPerson;
  List<String> listPost = [
    "https://th.bing.com/th/id/OIP.NehUZXjhgutqjx_P7wwjbwHaEo?pid=ImgDet&rs=1",
    "https://3.bp.blogspot.com/-jDZnqGusXMA/T7gjJrPqrCI/AAAAAAAAEz8/wrd0MlVW_s4/s1600/AndromedaGalex_2048.jpg",
    "https://i0.wp.com/www.fatosdesconhecidos.com.br/wp-content/uploads/2014/11/wpid-galaxia.jpg?resize=900,420",
    "https://lh6.googleusercontent.com/proxy/55ndoWIt305qnfmHFYY3vhEgAOQgHrBKdH5TwfR_uoAWPYY3fcLTJHASxw2iJusVgvXlDdX9Z0cLEf6rv6MOtLME2XU=w1200-h630-p-k-no-nu",
    "https://mobimg.b-cdn.net/pic/v2/gallery/preview/kosmos-pejzazh-zvezdy-37494.jpg",
    "https://th.bing.com/th/id/OIP.UWYSr0VojMxkd4j6OgtkIAHaFj?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.afIhmPazxB9bhsytfavkgQHaGD?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/R.230973984db6e89d5a0516e6e864cc1a?rik=rqGWqfE1N4dvfQ&riu=http%3a%2f%2fwww.mashreghnews.ir%2ffiles%2ffa%2fnews%2f1390%2f9%2f16%2f115455_413.jpg&ehk=USjzNAEGOef7IreF4Uom60JqCZZZhzfwdI5hAwPOIQk%3d&risl=&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/OIP.K7pCAtwD_pnPDPv0ftFKVgHaFj?pid=ImgDet&w=1066&h=800&rs=1",
    "https://th.bing.com/th/id/OIP.J4-LI_5nDcNz_L8pZfmSMgHaHa?pid=ImgDet&rs=1"
  ];

  final _totalLista = 0.obs;
  int get totalLista => _totalLista.value;
  set totalLista(int newValue) => _totalLista(newValue);

  @override
  void onReady() async {
    super.onReady();
    listPerson = await getPerson();
  }

  @override
  void onInit() async {
    super.onInit();
  }

  Future<List<Person?>?> getPerson() async {
    List<Person?>? person = [];
    try {
      person = await personRepository.findPerson();

      if (person != null) {
        for (var element in person) {
          print(element!.name);
        }
      }

      return person;
    } catch (e, s) {
      debugPrint('$e $s');
    }
    return null;
  }

  String nome = 'lucas';
}
