import 'package:flutter/material.dart';
import 'package:sportify/screen/select_country/loginwith_social_account.dart';
import 'package:sportify/widget/app_button.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import '../../utils/app_styles.dart';
import '../../widget/shape_widget.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class SelectCountryScreen extends StatefulWidget {
  const SelectCountryScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SelectCountryScreenState createState() => _SelectCountryScreenState();
}

class _SelectCountryScreenState extends State<SelectCountryScreen> {
  BankListDataModel? _bankChoose;

  List<BankListDataModel> bankDataList = [
    BankListDataModel("Afghanistan"),
    BankListDataModel("Albania"),
    BankListDataModel("Algeria"),
    BankListDataModel("Andorra"),
    BankListDataModel("Angola"),
    BankListDataModel("Antigua and Barbuda"),
    BankListDataModel("Argentina"),
    BankListDataModel("Armenia"),
    BankListDataModel("Australia"),
    BankListDataModel("Austria"),
    BankListDataModel("Azerbaijan"),
    BankListDataModel("Bahamas"),
    BankListDataModel("Bahrain"),
    BankListDataModel("Bangladesh"),
    BankListDataModel("Barbados"),
    BankListDataModel("Belarus"),
    BankListDataModel("Belgium"),
    BankListDataModel("Belize"),
    BankListDataModel("Benin"),
    BankListDataModel("Bhutan"),
    BankListDataModel("Bolivia"),
    BankListDataModel("Bosnia and Herzegovina"),
    BankListDataModel("Botswana"),
    BankListDataModel("Brazil"),
    BankListDataModel("Brunei"),
    BankListDataModel("Bulgaria"),
    BankListDataModel("Burkina Faso"),
    BankListDataModel("Burundi"),
    BankListDataModel("Côte d'Ivoire"),
    BankListDataModel("Cabo Verde"),
    BankListDataModel("Cambodia"),
    BankListDataModel("Cameroon"),
    BankListDataModel("Canada"),
    BankListDataModel("Central African Republic"),
    BankListDataModel("Chad"),
    BankListDataModel("Chile"),
    BankListDataModel("China"),
    BankListDataModel("Colombia"),
    BankListDataModel("Comoros"),
    BankListDataModel("Congo (Congo-Brazzaville)"),
    BankListDataModel("Costa Rica"),
    BankListDataModel("Croatia"),
    BankListDataModel("Cuba"),
    BankListDataModel("Cyprus"),
    BankListDataModel("Democratic Republic of the Congo"),
    BankListDataModel("Denmark"),
    BankListDataModel("Djibouti"),
    BankListDataModel("Dominica"),
    BankListDataModel("Dominican Republic"),
    BankListDataModel("Ecuador"),
    BankListDataModel("Egypt"),
    BankListDataModel("El Salvador"),
    BankListDataModel("Equatorial Guinea"),
    BankListDataModel("Eritrea"),
    BankListDataModel("Estonia"),
    BankListDataModel("Eswatini"),
    BankListDataModel("Ethiopia"),
    BankListDataModel("Fiji"),
    BankListDataModel("Finland"),
    BankListDataModel("France"),
    BankListDataModel("Gabon"),
    BankListDataModel("Gambia"),
    BankListDataModel("Georgia"),
    BankListDataModel("Germany"),
    BankListDataModel("Ghana"),
    BankListDataModel("Greece"),
    BankListDataModel("Grenada"),
    BankListDataModel("Guatemala"),
    BankListDataModel("Guinea"),
    BankListDataModel("Guinea-Bissau"),
    BankListDataModel("Guyana"),
    BankListDataModel("Haiti"),
    BankListDataModel("Holy See"),
    BankListDataModel("Honduras"),
    BankListDataModel("Hungary"),
    BankListDataModel("Iceland"),
    BankListDataModel("India"),
    BankListDataModel("Indonesia"),
    BankListDataModel("Iran"),
    BankListDataModel("Iraq"),
    BankListDataModel("Ireland"),
    BankListDataModel("Israel"),
    BankListDataModel("Italy"),
    BankListDataModel("Jamaica"),
    BankListDataModel("Japan"),
    BankListDataModel("Jordan"),
    BankListDataModel("Kazakhstan"),
    BankListDataModel("Kenya"),
    BankListDataModel("Kiribati"),
    BankListDataModel("Kuwait"),
    BankListDataModel("Kyrgyzstan"),
    BankListDataModel("Laos"),
    BankListDataModel("Latvia"),
    BankListDataModel("Lebanon"),
    BankListDataModel("Lesotho"),
    BankListDataModel("Liberia"),
    BankListDataModel("Libya"),
    BankListDataModel("Liechtenstein"),
    BankListDataModel("Lithuania"),
    BankListDataModel("Luxembourg"),
    BankListDataModel("Madagascar"),
    BankListDataModel("Malawi"),
    BankListDataModel("Malaysia"),
    BankListDataModel("Maldives"),
    BankListDataModel("Mali"),
    BankListDataModel("Malta"),
    BankListDataModel("Marshall Islands"),
    BankListDataModel("Mauritania"),
    BankListDataModel("Mauritius"),
    BankListDataModel("Mexico"),
    BankListDataModel("Micronesia"),
    BankListDataModel("Moldova"),
    BankListDataModel("Monaco"),
    BankListDataModel(" Mongolia"),
    BankListDataModel("Montenegro"),
    BankListDataModel("Morocco"),
    BankListDataModel("Mozambique"),
    BankListDataModel("Myanmar (formerly Burma)"),
    BankListDataModel("Namibia"),
    BankListDataModel("Nauru"),
    BankListDataModel("Nepal"),
    BankListDataModel("Netherlands"),
    BankListDataModel("New Zealand"),
    BankListDataModel("Nicaragua"),
    BankListDataModel("Niger"),
    BankListDataModel("Nigeria"),
    BankListDataModel("North Korea"),
    BankListDataModel("North Macedonia"),
    BankListDataModel("Norway"),
    BankListDataModel("Oman"),
    BankListDataModel("Pakistan"),
    BankListDataModel("Palau"),
    BankListDataModel("Palestine State"),
    BankListDataModel("Panama"),
    BankListDataModel("Papua New Guinea"),
    BankListDataModel("Paraguay"),
    BankListDataModel("Peru"),
    BankListDataModel("Philippines"),
    BankListDataModel("Poland"),
    BankListDataModel("Portugal"),
    BankListDataModel("Qatar"),
    BankListDataModel("Romania"),
    BankListDataModel("Russia"),
    BankListDataModel("Rwanda"),
    BankListDataModel("Saint Kitts and Nevis"),
    BankListDataModel("Saint Lucia"),
    BankListDataModel("Saint Vincent and the Grenadines"),
    BankListDataModel("Samoa"),
    BankListDataModel("San Marino"),
    BankListDataModel("Sao Tome and Principe"),
    BankListDataModel("Saudi Arabia"),
    BankListDataModel("Senegal"),
    BankListDataModel(" Serbia"),
    BankListDataModel("Seychelles"),
    BankListDataModel("Sierra Leone"),
    BankListDataModel("Singapore"),
    BankListDataModel("Slovakia"),
    BankListDataModel("Slovenia"),
    BankListDataModel(" Solomon Islands"),
    BankListDataModel("Somalia"),
    BankListDataModel("South Africa"),
    BankListDataModel("South Korea"),
    BankListDataModel("South Sudan"),
    BankListDataModel("Spain"),
    BankListDataModel("Sri Lanka"),
    BankListDataModel("Sudan"),
    BankListDataModel("Suriname"),
    BankListDataModel("Sweden"),
    BankListDataModel("Switzerland"),
    BankListDataModel("Syria"),
    BankListDataModel("Tajikistan"),
    BankListDataModel("Tanzania"),
    BankListDataModel("Thailand"),
    BankListDataModel("Timor-Leste"),
    BankListDataModel("Togo"),
    BankListDataModel("Tonga"),
    BankListDataModel("Trinidad and Tobago"),
    BankListDataModel("Tunisia"),
    BankListDataModel("Turkey"),
    BankListDataModel("Turkmenistan"),
    BankListDataModel("Tuvalu"),
    BankListDataModel("Uganda"),
    BankListDataModel("Ukraine"),
    BankListDataModel("United Arab Emirates"),
    BankListDataModel("United Kingdom"),
    BankListDataModel("United States of America"),
    BankListDataModel("Uruguay"),
    BankListDataModel("Uzbekistan"),
    BankListDataModel("Vanuatu"),
    BankListDataModel("Venezuela"),
    BankListDataModel("Vietnam"),
    BankListDataModel("Yemen"),
    BankListDataModel("Zambia"),
    BankListDataModel("Zimbabwe"),

    //BankListDataModel("Canara","https://bankforms.org/wp-content/uploads/2019/10/Canara-Bank.png")
  ];

  LanguageDataModel? _lanugeChoose;

  List<LanguageDataModel> languageList = [
    LanguageDataModel("Chinese"),
    LanguageDataModel("Spanish"),
    LanguageDataModel("English"),
    LanguageDataModel("Bengali"),
    LanguageDataModel("Hindi"),
    LanguageDataModel("Portuguese"),
    LanguageDataModel("Russian"),
    LanguageDataModel("Japanese"),
    LanguageDataModel("German"),
    LanguageDataModel("Chinese"),
    LanguageDataModel("Javanese"),
    LanguageDataModel("Korean"),
    LanguageDataModel("French"),
    LanguageDataModel("Vietnamese"),
    LanguageDataModel("Telugu"),
    LanguageDataModel("Chinese"),
    LanguageDataModel("Marathi"),
    LanguageDataModel("Tamil"),
    LanguageDataModel("Turkish"),
    LanguageDataModel("Urdu"),
    LanguageDataModel("Chinese"),
    LanguageDataModel("Chinese"),
    LanguageDataModel("Gujarati"),
    LanguageDataModel("Polish"),
    LanguageDataModel("Arabic"),
    LanguageDataModel("Ukrainian"),
    LanguageDataModel("Italian"),
    LanguageDataModel("Chinese"),
    LanguageDataModel("Malayalam"),
    LanguageDataModel("Chinese"),
    LanguageDataModel("Kannada"),
    LanguageDataModel("Oriya"),
    LanguageDataModel("Panjabi"),
    LanguageDataModel("Sunda"),
    LanguageDataModel("Panjabi"),
    LanguageDataModel("Romanian"),
    LanguageDataModel("Bhojpuri"),
    LanguageDataModel("Azerbaijani"),
    LanguageDataModel("Farsi"),
    LanguageDataModel("Maithili"),
    LanguageDataModel("Hausa"),
    LanguageDataModel("Arabic"),
    LanguageDataModel("Burmese"),
    LanguageDataModel("Serbo-Croatian"),
    LanguageDataModel("Chinese"),
    LanguageDataModel("Awadhi"),
    LanguageDataModel("Thai"),
    LanguageDataModel("Dutch"),
    LanguageDataModel("Yoruba"),
    LanguageDataModel("Sindhi"),
    LanguageDataModel("Arabic"),
    LanguageDataModel("Arabic"),
    LanguageDataModel("Uzbek"),
    LanguageDataModel("Malay"),
    LanguageDataModel("Amharic"),
    LanguageDataModel("Indonesian"),
    LanguageDataModel("Igbo"),
    LanguageDataModel("Tagalog"),
    LanguageDataModel("Nepali"),
    LanguageDataModel("Arabic"),
    LanguageDataModel("Saraiki"),
    LanguageDataModel("Cebuano"),
    LanguageDataModel("Arabic"),
    LanguageDataModel("Thai"),
    LanguageDataModel("Assamese"),
    LanguageDataModel("Hungarian"),
    LanguageDataModel("Chittagonian"),
    LanguageDataModel("Arabic"),
    LanguageDataModel("Madura"),
    LanguageDataModel("Sinhala"),
    LanguageDataModel("Haryanvi"),
    LanguageDataModel("Marwari"),
    LanguageDataModel("Czech"),
    LanguageDataModel("Greek"),
    LanguageDataModel("Magahi"),
    LanguageDataModel("Chhattisgarhi"),
    LanguageDataModel("Deccan "),
    LanguageDataModel("Chinese"),
    LanguageDataModel("Belarusan"),
    LanguageDataModel("Zhuang"),
    LanguageDataModel("Arabic"),
    LanguageDataModel("Pashto"),
    LanguageDataModel("Somali"),
    LanguageDataModel("Malagasy"),
    LanguageDataModel("Arabic"),
    LanguageDataModel("Rwanda"),
    LanguageDataModel("Zulu"),
    LanguageDataModel("Bulgarian"),
    LanguageDataModel("Swedish"),
    LanguageDataModel("Lombard"),
    LanguageDataModel("Oromo"),
    LanguageDataModel("Pashto"),
    LanguageDataModel("Kazakh"),
    LanguageDataModel("Ilocano"),
    LanguageDataModel("Tatar"),
    LanguageDataModel("Fulfude"),
    LanguageDataModel("Arabic"),
    LanguageDataModel("Uyghur"),
    LanguageDataModel("Haitian Creole French "),
    LanguageDataModel("Azerbaijani"),
    LanguageDataModel("Neapolitan-Calabrese"),
  ];
  @override
  void initState() {
    super.initState();
    // _bankChoose = bankDataList[0];
  }

  void _onDropDownItemSelected(BankListDataModel newSelectedBank) {
    setState(() {
      _bankChoose = newSelectedBank;
    });
  }

  void _onDropDownItemSelectedLanguage(LanguageDataModel newSelectedLang) {
    setState(() {
      _lanugeChoose = newSelectedLang;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.authScaffoldColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ShapeWidget(text: ''),
          Padding(
            padding: EdgeInsets.only(
                left: 15.sp, right: 15.sp, top: 30.sp, bottom: 15.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Welcome Onboard!',
                    style: AppStyles.sliderText.copyWith(
                      fontSize: 18.sp,
                    )),
                SizedBox(
                  height: 20.sp,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(0, 4),
                        blurRadius: 4.sp,
                      ),
                    ],
                  ),
                  child: FormField(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 17, vertical: 17),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: 'English',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color: AppStyles.white,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color: AppStyles.white,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color: AppStyles.white,
                            ),
                          ),
                          labelStyle: TextStyle(
                            color: AppStyles.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.normal,
                          ),
                          hintStyle: TextStyle(
                            color: AppStyles.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<BankListDataModel>(
                            style: const TextStyle(
                              fontSize: 16,
                              color: AppStyles.black,
                            ),
                            hint: _bankChoose != null
                                ? Text(
                                    _bankChoose!.bankName,
                                  )
                                : const Text(
                                    "Country",
                                    style: TextStyle(color: Colors.black),
                                  ),
                            items: bankDataList
                                .map<DropdownMenuItem<BankListDataModel>>(
                              (BankListDataModel value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value.bankName),
                                );
                              },
                            ).toList(),
                            isExpanded: true,
                            isDense: true,
                            onChanged: (BankListDataModel? newSelectedBank) {
                              _onDropDownItemSelected(newSelectedBank!);
                            },
                            value: _bankChoose,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: FormField(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 17, vertical: 17),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: 'English',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color: AppStyles.white,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color: AppStyles.white,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color: AppStyles.white,
                            ),
                          ),
                          labelStyle: const TextStyle(
                            color: AppStyles.black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                          hintStyle: const TextStyle(
                            color: AppStyles.black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<LanguageDataModel>(
                            style: const TextStyle(
                              fontSize: 16,
                              color: AppStyles.black,
                            ),
                            hint: _lanugeChoose != null
                                ? Text(
                                    _lanugeChoose!.languageName,
                                  )
                                : const Text(
                                    "Language",
                                    style: TextStyle(color: Colors.black),
                                  ),
                            items: languageList
                                .map<DropdownMenuItem<LanguageDataModel>>(
                              (LanguageDataModel value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value.languageName),
                                );
                              },
                            ).toList(),
                            isExpanded: true,
                            isDense: true,
                            onChanged: (LanguageDataModel? newSelectedLang) {
                              _onDropDownItemSelectedLanguage(newSelectedLang!);
                            },
                            value: _lanugeChoose,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                AppButton(
                  background: AppStyles.primary,
                  text: 'Next',
                  onClicked: () {
                    Get.to(() => const SingUpWithYourGoogle());
                    /* Get.to(const SingUpWithYourGoogle());*/
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BankListDataModel {
  // ignore: non_constant_identifier_names
  String bankName;

  BankListDataModel(this.bankName);
}

class LanguageDataModel {
  String languageName;

  LanguageDataModel(this.languageName);
}
