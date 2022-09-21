import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/sign_up_screen/signup_promote1.dart';
import 'package:circle_app_project/widgets/custom_button.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';

import 'components/reuseable_text_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String? countryValue = "";
  String? stateValue = "";
  String? cityValue = "";

  String? _experienceValue;
  List<String> listOfExperience = [
    'Online networking only',
    'Attending events',
    'Making business connections',
    'Business opportunities',
    'Making new friends',
    'Finding a job'
  ];

  String? _previousValue;
  List<String> listOfPrevious = [
    'Online networking only',
    'Attending events',
    'Making business connections',
    'Business opportunities',
    'Making new friends',
    'Finding a job',
    'Others'
  ];

  String? _hireForValue;
  List<String> listOfHireFor = [
    'Falling in love.',
    'The birth of a child',
    'The birth of a grandchild',
    'A reconciliation with a loved one',
    'New culture or way of life',
    "I think there's a gap"
  ];

  String? _promoteValue;
  List<String> listOfPromote = [
    'My biggest work achievement is',
    'An epic work fail i had was',
    'My Ideal business mentor would be',
    'When i was younger i wanted to be',
    'At work im most known for',
    "I think there's a gap in the market for"
  ];

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final ageController = TextEditingController();
    final ethnicityController = TextEditingController();

    final industryController = TextEditingController();
    final employeeController = TextEditingController();

    final jobTitleController = TextEditingController();
    final interestedController = TextEditingController();
    final bioController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.arrow_back,
                  color: kSecounderyColor,
                ),
                SizedBox(height: kDefaultPadding),
                Text(
                  "Let’s create your account",
                  style: kHeadingTextStyle,
                ),
                SizedBox(height: kDefaultPadding),
                ReuseableTextField(
                  textHint: "Enter Your Email",
                  textEditingController: emailController,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: kDefaultPadding),
                ReuseableTextField(
                  textHint: "Enter Your Age",
                  textEditingController: ageController,
                  textInputType: TextInputType.number,
                ),
                SizedBox(height: kDefaultPadding),
                TextField(
                  controller: ethnicityController,
                  decoration: InputDecoration(
                    hintText: "Enter Your Ethnicity",
                    suffixIcon: PopupMenuButton(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        iconSize: 18,
                        icon: const Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        itemBuilder: (context) => [
                              PopupMenuItem(
                                  value: 1,
                                  child: Row(
                                    children: const [
                                      Icon(Icons.public),
                                      Text(
                                        "Public",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )),
                              PopupMenuItem(
                                  value: 2,
                                  child: Row(
                                    children: const [
                                      Icon(Icons.lock),
                                      Text(
                                        "Only me",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )),
                            ]),
                    hintStyle: kTitleTextstyle.copyWith(
                        fontWeight: FontWeight.w400,
                        color: kHeaderColor.withAlpha(0xFFF44336)),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: kHeaderColor.withAlpha(0xFFF44336)),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: kSecounderyColor)),
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: kHeaderColor.withAlpha(0xFFF44336))),
                  ),
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(height: kDefaultPadding),
                CSCPicker(
                  ///Enable disable state dropdown [OPTIONAL PARAMETER]
                  showStates: true,
                  showCities: true,
                  flagState: CountryFlag.ENABLE,

                  ///placeholders for dropdown search field
                  countrySearchPlaceholder: "Select your location",
                  stateSearchPlaceholder: "Select your state",
                  citySearchPlaceholder: "Select your city",

                  ///triggers once country selected in dropdown
                  onCountryChanged: (value) {
                    setState(() {
                      ///store value in country variable
                      countryValue = value;
                    });
                  },

                  ///triggers once state selected in dropdown
                  onStateChanged: (value) {
                    setState(() {
                      ///store value in state variable
                      stateValue = value;
                    });
                  },

                  ///triggers once city selected in dropdown
                  onCityChanged: (value) {
                    setState(() {
                      ///store value in city variable
                      cityValue = value;
                    });
                  },
                ),
                SizedBox(height: kDefaultPadding),
                ReuseableTextField(
                  textHint: "Enter your industry",
                  textEditingController: industryController,
                  textInputType: TextInputType.text,
                ),
                SizedBox(height: kDefaultPadding),
                ReuseableTextField(
                  textHint: "Enter your employer",
                  textEditingController: employeeController,
                  textInputType: TextInputType.text,
                ),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: kHeaderColor.withAlpha(0xFFF44336)),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: kSecounderyColor)),
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: kHeaderColor.withAlpha(0xFFF44336))),
                  ),
                  isDense: false,
                  value: _experienceValue,
                  hint: const Text('Select an experience'),
                  onChanged: (value) {
                    setState(() {
                      _experienceValue = _experienceValue;
                    });
                  },
                  onSaved: (value) {
                    setState(() {
                      _experienceValue = _experienceValue;
                    });
                  },
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "can't empty";
                    } else {
                      return null;
                    }
                  },
                  items: listOfExperience.map((String val) {
                    return DropdownMenuItem(
                      value: val,
                      child: Text(val),
                    );
                  }).toList(),
                ),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: kHeaderColor.withAlpha(0xFFF44336)),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: kSecounderyColor)),
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: kHeaderColor.withAlpha(0xFFF44336))),
                  ),
                  isDense: false,
                  value: _previousValue,
                  hint: const Text('Select an previous'),
                  onChanged: (value) {
                    setState(() {
                      _previousValue = _previousValue;
                    });
                  },
                  onSaved: (value) {
                    setState(() {
                      _previousValue = _previousValue;
                    });
                  },
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "can't empty";
                    } else {
                      return null;
                    }
                  },
                  items: listOfPrevious.map((String val) {
                    return DropdownMenuItem(
                      value: val,
                      child: Text(val),
                    );
                  }).toList(),
                ),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: kHeaderColor.withAlpha(0xFFF44336)),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: kSecounderyColor)),
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: kHeaderColor.withAlpha(0xFFF44336))),
                  ),
                  isDense: false,
                  value: _hireForValue,
                  hint: const Text("I'm Here For"),
                  onChanged: (value) {
                    setState(() {
                      _hireForValue = _hireForValue;
                    });
                  },
                  onSaved: (value) {
                    setState(() {
                      _hireForValue = _hireForValue;
                    });
                  },
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "can't empty";
                    } else {
                      return null;
                    }
                  },
                  items: listOfHireFor.map((String val) {
                    return DropdownMenuItem(
                      value: val,
                      child: Text(val),
                    );
                  }).toList(),
                ),
                SizedBox(height: kDefaultPadding),
                ReuseableTextField(
                    textHint: "Enter your job title",
                    textEditingController: jobTitleController,
                    textInputType: TextInputType.text),
                SizedBox(height: kDefaultPadding),
                SizedBox(height: kDefaultPadding),
                TextField(
                  controller: interestedController,
                  decoration: InputDecoration(
                    hintText: "Enter your Interested In",
                    suffixText: "0/1",
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: kHeaderColor.withAlpha(0xFFF44336)),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: kSecounderyColor)),
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: kHeaderColor.withAlpha(0xFFF44336))),
                  ),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: kDefaultPadding),
                TextField(
                  controller: bioController,
                  decoration: InputDecoration(
                    hintText: "Enter your Bio",
                    suffixText: "0/500",
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: kHeaderColor.withAlpha(0xFFF44336)),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: kSecounderyColor)),
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: kHeaderColor.withAlpha(0xFFF44336))),
                  ),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  minLines: 1,
                  maxLines: 5,
                ),
                SizedBox(height: kDefaultPadding),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: kHeaderColor.withAlpha(0xFFF44336)),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: kSecounderyColor)),
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: kHeaderColor.withAlpha(0xFFF44336))),
                  ),
                  isDense: false,
                  value: _promoteValue,
                  hint: const Text('Select an experience'),
                  onChanged: (value) {
                    setState(() {
                      _promoteValue = _promoteValue;
                    });
                  },
                  onSaved: (value) {
                    setState(() {
                      _promoteValue = _promoteValue;
                    });
                  },
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "can't empty";
                    } else {
                      return null;
                    }
                  },
                  items: listOfPromote.map((String val) {
                    return DropdownMenuItem(
                      value: val,
                      child: Text(val),
                    );
                  }).toList(),
                ),
                SizedBox(height: kDefaultPadding),
                CheckboxListTile(
                  value: isChecked,
                  onChanged: (val) {
                    setState(() => isChecked = val!);
                  },
                  subtitle: !isChecked
                      ? const Text(
                          'Required.',
                          style: TextStyle(color: Colors.red),
                        )
                      : null,
                  title: const Text(
                    'I have read and agreed the Terms and Conditions.',
                    style: TextStyle(fontSize: 14.0),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Colors.green,
                ),
                SizedBox(height: kDefaultPadding),
                CustomButton(
                    text: "Next",
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignUpPromoteScreen1()));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
