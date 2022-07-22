import 'package:get/get.dart';

class CountryController extends GetxController {
  var selected_country = {
    "flag": 'assets/images/flags/CM.png',
    "country_name": 'Type here...',
  }.obs;
//available countries list
  final List<Map<String, String>> available_countries_list = [
    {
      "flag": 'assets/images/flags/CM.png',
      "country_name": 'Cameroon',
    },
    {
      "flag": 'assets/images/flags/RW.png',
      "country_name": 'Rwanda',
    },

    {
      "flag": 'assets/images/flags/BF.png',
      "country_name": 'Burkina Faso',
    },
    {
      "flag": 'assets/images/flags/CI.png',
      "country_name": 'Yvory Coast',
    },
    {
      "flag": 'assets/images/flags/GH.png',
      "country_name": 'Ghana',
    },
    {
      "flag": 'assets/images/flags/TD.png',
      "country_name": 'Tchad',
    },
    {
      "flag": 'assets/images/flags/TG.png',
      "country_name": 'Togo',
    },
    {
      "flag": 'assets/images/flags/UG.png',
      "country_name": 'Uganda',
    },

  ];

  Rx<List<Map<String, String>>> foundCountries =
      Rx<List<Map<String, String>>>([]);

  @override
  void onInit() {
    super.onInit();
    foundCountries.value = available_countries_list;
  }

  //this  is to filter the list
  void filterCountries(String countryName) {
    List<Map<String, String>> results = [];

    if (countryName.isEmpty) {
      results = available_countries_list;
    } else {
      results = available_countries_list
          .where((element) => element["country_name"]
              .toString()
              .toLowerCase()
              .contains(countryName.toLowerCase()))
          .toList();
    }

    foundCountries.value = results;
  }
}
