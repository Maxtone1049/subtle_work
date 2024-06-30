// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String BvnValueKey = 'bvn';
const String NinValueKey = 'nin';
const String FirstNameValueKey = 'firstName';
const String LastNameValueKey = 'lastName';
const String GenderValueKey = 'gender';
const String DobValueKey = 'dob';
const String HomeAddressValueKey = 'homeAddress';
const String EmailAddressValueKey = 'emailAddress';
const String PasswordValueKey = 'password';
const String ConfPasswordValueKey = 'confPassword';

final Map<String, TextEditingController> _BioDataFormTextEditingControllers =
    {};

final Map<String, FocusNode> _BioDataFormFocusNodes = {};

final Map<String, String? Function(String?)?> _BioDataFormTextValidations = {
  BvnValueKey: null,
  NinValueKey: null,
  FirstNameValueKey: null,
  LastNameValueKey: null,
  GenderValueKey: null,
  DobValueKey: null,
  HomeAddressValueKey: null,
  EmailAddressValueKey: null,
  PasswordValueKey: null,
  ConfPasswordValueKey: null,
};

mixin $BioDataForm {
  TextEditingController get bvnController =>
      _getFormTextEditingController(BvnValueKey);
  TextEditingController get ninController =>
      _getFormTextEditingController(NinValueKey);
  TextEditingController get firstNameController =>
      _getFormTextEditingController(FirstNameValueKey);
  TextEditingController get lastNameController =>
      _getFormTextEditingController(LastNameValueKey);
  TextEditingController get genderController =>
      _getFormTextEditingController(GenderValueKey);
  TextEditingController get dobController =>
      _getFormTextEditingController(DobValueKey);
  TextEditingController get homeAddressController =>
      _getFormTextEditingController(HomeAddressValueKey);
  TextEditingController get emailAddressController =>
      _getFormTextEditingController(EmailAddressValueKey);
  TextEditingController get passwordController =>
      _getFormTextEditingController(PasswordValueKey);
  TextEditingController get confPasswordController =>
      _getFormTextEditingController(ConfPasswordValueKey);

  FocusNode get bvnFocusNode => _getFormFocusNode(BvnValueKey);
  FocusNode get ninFocusNode => _getFormFocusNode(NinValueKey);
  FocusNode get firstNameFocusNode => _getFormFocusNode(FirstNameValueKey);
  FocusNode get lastNameFocusNode => _getFormFocusNode(LastNameValueKey);
  FocusNode get genderFocusNode => _getFormFocusNode(GenderValueKey);
  FocusNode get dobFocusNode => _getFormFocusNode(DobValueKey);
  FocusNode get homeAddressFocusNode => _getFormFocusNode(HomeAddressValueKey);
  FocusNode get emailAddressFocusNode =>
      _getFormFocusNode(EmailAddressValueKey);
  FocusNode get passwordFocusNode => _getFormFocusNode(PasswordValueKey);
  FocusNode get confPasswordFocusNode =>
      _getFormFocusNode(ConfPasswordValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_BioDataFormTextEditingControllers.containsKey(key)) {
      return _BioDataFormTextEditingControllers[key]!;
    }

    _BioDataFormTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _BioDataFormTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_BioDataFormFocusNodes.containsKey(key)) {
      return _BioDataFormFocusNodes[key]!;
    }
    _BioDataFormFocusNodes[key] = FocusNode();
    return _BioDataFormFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    bvnController.addListener(() => _updateFormData(model));
    ninController.addListener(() => _updateFormData(model));
    firstNameController.addListener(() => _updateFormData(model));
    lastNameController.addListener(() => _updateFormData(model));
    genderController.addListener(() => _updateFormData(model));
    dobController.addListener(() => _updateFormData(model));
    homeAddressController.addListener(() => _updateFormData(model));
    emailAddressController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
    confPasswordController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    bvnController.addListener(() => _updateFormData(model));
    ninController.addListener(() => _updateFormData(model));
    firstNameController.addListener(() => _updateFormData(model));
    lastNameController.addListener(() => _updateFormData(model));
    genderController.addListener(() => _updateFormData(model));
    dobController.addListener(() => _updateFormData(model));
    homeAddressController.addListener(() => _updateFormData(model));
    emailAddressController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
    confPasswordController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          BvnValueKey: bvnController.text,
          NinValueKey: ninController.text,
          FirstNameValueKey: firstNameController.text,
          LastNameValueKey: lastNameController.text,
          GenderValueKey: genderController.text,
          DobValueKey: dobController.text,
          HomeAddressValueKey: homeAddressController.text,
          EmailAddressValueKey: emailAddressController.text,
          PasswordValueKey: passwordController.text,
          ConfPasswordValueKey: confPasswordController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _BioDataFormTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _BioDataFormFocusNodes.values) {
      focusNode.dispose();
    }

    _BioDataFormTextEditingControllers.clear();
    _BioDataFormFocusNodes.clear();
  }
}

extension ValueProperties on FormStateHelper {
  bool get hasAnyValidationMessage => this
      .fieldsValidationMessages
      .values
      .any((validation) => validation != null);

  bool get isFormValid {
    if (!_autoTextFieldValidation) this.validateForm();

    return !hasAnyValidationMessage;
  }

  String? get bvnValue => this.formValueMap[BvnValueKey] as String?;
  String? get ninValue => this.formValueMap[NinValueKey] as String?;
  String? get firstNameValue => this.formValueMap[FirstNameValueKey] as String?;
  String? get lastNameValue => this.formValueMap[LastNameValueKey] as String?;
  String? get genderValue => this.formValueMap[GenderValueKey] as String?;
  String? get dobValue => this.formValueMap[DobValueKey] as String?;
  String? get homeAddressValue =>
      this.formValueMap[HomeAddressValueKey] as String?;
  String? get emailAddressValue =>
      this.formValueMap[EmailAddressValueKey] as String?;
  String? get passwordValue => this.formValueMap[PasswordValueKey] as String?;
  String? get confPasswordValue =>
      this.formValueMap[ConfPasswordValueKey] as String?;

  set bvnValue(String? value) {
    this.setData(
      this.formValueMap..addAll({BvnValueKey: value}),
    );

    if (_BioDataFormTextEditingControllers.containsKey(BvnValueKey)) {
      _BioDataFormTextEditingControllers[BvnValueKey]?.text = value ?? '';
    }
  }

  set ninValue(String? value) {
    this.setData(
      this.formValueMap..addAll({NinValueKey: value}),
    );

    if (_BioDataFormTextEditingControllers.containsKey(NinValueKey)) {
      _BioDataFormTextEditingControllers[NinValueKey]?.text = value ?? '';
    }
  }

  set firstNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({FirstNameValueKey: value}),
    );

    if (_BioDataFormTextEditingControllers.containsKey(FirstNameValueKey)) {
      _BioDataFormTextEditingControllers[FirstNameValueKey]?.text = value ?? '';
    }
  }

  set lastNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({LastNameValueKey: value}),
    );

    if (_BioDataFormTextEditingControllers.containsKey(LastNameValueKey)) {
      _BioDataFormTextEditingControllers[LastNameValueKey]?.text = value ?? '';
    }
  }

  set genderValue(String? value) {
    this.setData(
      this.formValueMap..addAll({GenderValueKey: value}),
    );

    if (_BioDataFormTextEditingControllers.containsKey(GenderValueKey)) {
      _BioDataFormTextEditingControllers[GenderValueKey]?.text = value ?? '';
    }
  }

  set dobValue(String? value) {
    this.setData(
      this.formValueMap..addAll({DobValueKey: value}),
    );

    if (_BioDataFormTextEditingControllers.containsKey(DobValueKey)) {
      _BioDataFormTextEditingControllers[DobValueKey]?.text = value ?? '';
    }
  }

  set homeAddressValue(String? value) {
    this.setData(
      this.formValueMap..addAll({HomeAddressValueKey: value}),
    );

    if (_BioDataFormTextEditingControllers.containsKey(HomeAddressValueKey)) {
      _BioDataFormTextEditingControllers[HomeAddressValueKey]?.text =
          value ?? '';
    }
  }

  set emailAddressValue(String? value) {
    this.setData(
      this.formValueMap..addAll({EmailAddressValueKey: value}),
    );

    if (_BioDataFormTextEditingControllers.containsKey(EmailAddressValueKey)) {
      _BioDataFormTextEditingControllers[EmailAddressValueKey]?.text =
          value ?? '';
    }
  }

  set passwordValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PasswordValueKey: value}),
    );

    if (_BioDataFormTextEditingControllers.containsKey(PasswordValueKey)) {
      _BioDataFormTextEditingControllers[PasswordValueKey]?.text = value ?? '';
    }
  }

  set confPasswordValue(String? value) {
    this.setData(
      this.formValueMap..addAll({ConfPasswordValueKey: value}),
    );

    if (_BioDataFormTextEditingControllers.containsKey(ConfPasswordValueKey)) {
      _BioDataFormTextEditingControllers[ConfPasswordValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasBvn =>
      this.formValueMap.containsKey(BvnValueKey) &&
      (bvnValue?.isNotEmpty ?? false);
  bool get hasNin =>
      this.formValueMap.containsKey(NinValueKey) &&
      (ninValue?.isNotEmpty ?? false);
  bool get hasFirstName =>
      this.formValueMap.containsKey(FirstNameValueKey) &&
      (firstNameValue?.isNotEmpty ?? false);
  bool get hasLastName =>
      this.formValueMap.containsKey(LastNameValueKey) &&
      (lastNameValue?.isNotEmpty ?? false);
  bool get hasGender =>
      this.formValueMap.containsKey(GenderValueKey) &&
      (genderValue?.isNotEmpty ?? false);
  bool get hasDob =>
      this.formValueMap.containsKey(DobValueKey) &&
      (dobValue?.isNotEmpty ?? false);
  bool get hasHomeAddress =>
      this.formValueMap.containsKey(HomeAddressValueKey) &&
      (homeAddressValue?.isNotEmpty ?? false);
  bool get hasEmailAddress =>
      this.formValueMap.containsKey(EmailAddressValueKey) &&
      (emailAddressValue?.isNotEmpty ?? false);
  bool get hasPassword =>
      this.formValueMap.containsKey(PasswordValueKey) &&
      (passwordValue?.isNotEmpty ?? false);
  bool get hasConfPassword =>
      this.formValueMap.containsKey(ConfPasswordValueKey) &&
      (confPasswordValue?.isNotEmpty ?? false);

  bool get hasBvnValidationMessage =>
      this.fieldsValidationMessages[BvnValueKey]?.isNotEmpty ?? false;
  bool get hasNinValidationMessage =>
      this.fieldsValidationMessages[NinValueKey]?.isNotEmpty ?? false;
  bool get hasFirstNameValidationMessage =>
      this.fieldsValidationMessages[FirstNameValueKey]?.isNotEmpty ?? false;
  bool get hasLastNameValidationMessage =>
      this.fieldsValidationMessages[LastNameValueKey]?.isNotEmpty ?? false;
  bool get hasGenderValidationMessage =>
      this.fieldsValidationMessages[GenderValueKey]?.isNotEmpty ?? false;
  bool get hasDobValidationMessage =>
      this.fieldsValidationMessages[DobValueKey]?.isNotEmpty ?? false;
  bool get hasHomeAddressValidationMessage =>
      this.fieldsValidationMessages[HomeAddressValueKey]?.isNotEmpty ?? false;
  bool get hasEmailAddressValidationMessage =>
      this.fieldsValidationMessages[EmailAddressValueKey]?.isNotEmpty ?? false;
  bool get hasPasswordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey]?.isNotEmpty ?? false;
  bool get hasConfPasswordValidationMessage =>
      this.fieldsValidationMessages[ConfPasswordValueKey]?.isNotEmpty ?? false;

  String? get bvnValidationMessage =>
      this.fieldsValidationMessages[BvnValueKey];
  String? get ninValidationMessage =>
      this.fieldsValidationMessages[NinValueKey];
  String? get firstNameValidationMessage =>
      this.fieldsValidationMessages[FirstNameValueKey];
  String? get lastNameValidationMessage =>
      this.fieldsValidationMessages[LastNameValueKey];
  String? get genderValidationMessage =>
      this.fieldsValidationMessages[GenderValueKey];
  String? get dobValidationMessage =>
      this.fieldsValidationMessages[DobValueKey];
  String? get homeAddressValidationMessage =>
      this.fieldsValidationMessages[HomeAddressValueKey];
  String? get emailAddressValidationMessage =>
      this.fieldsValidationMessages[EmailAddressValueKey];
  String? get passwordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey];
  String? get confPasswordValidationMessage =>
      this.fieldsValidationMessages[ConfPasswordValueKey];
}

extension Methods on FormStateHelper {
  setBvnValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[BvnValueKey] = validationMessage;
  setNinValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NinValueKey] = validationMessage;
  setFirstNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[FirstNameValueKey] = validationMessage;
  setLastNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[LastNameValueKey] = validationMessage;
  setGenderValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[GenderValueKey] = validationMessage;
  setDobValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[DobValueKey] = validationMessage;
  setHomeAddressValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[HomeAddressValueKey] = validationMessage;
  setEmailAddressValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[EmailAddressValueKey] = validationMessage;
  setPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PasswordValueKey] = validationMessage;
  setConfPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[ConfPasswordValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    bvnValue = '';
    ninValue = '';
    firstNameValue = '';
    lastNameValue = '';
    genderValue = '';
    dobValue = '';
    homeAddressValue = '';
    emailAddressValue = '';
    passwordValue = '';
    confPasswordValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      BvnValueKey: getValidationMessage(BvnValueKey),
      NinValueKey: getValidationMessage(NinValueKey),
      FirstNameValueKey: getValidationMessage(FirstNameValueKey),
      LastNameValueKey: getValidationMessage(LastNameValueKey),
      GenderValueKey: getValidationMessage(GenderValueKey),
      DobValueKey: getValidationMessage(DobValueKey),
      HomeAddressValueKey: getValidationMessage(HomeAddressValueKey),
      EmailAddressValueKey: getValidationMessage(EmailAddressValueKey),
      PasswordValueKey: getValidationMessage(PasswordValueKey),
      ConfPasswordValueKey: getValidationMessage(ConfPasswordValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _BioDataFormTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _BioDataFormTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      BvnValueKey: getValidationMessage(BvnValueKey),
      NinValueKey: getValidationMessage(NinValueKey),
      FirstNameValueKey: getValidationMessage(FirstNameValueKey),
      LastNameValueKey: getValidationMessage(LastNameValueKey),
      GenderValueKey: getValidationMessage(GenderValueKey),
      DobValueKey: getValidationMessage(DobValueKey),
      HomeAddressValueKey: getValidationMessage(HomeAddressValueKey),
      EmailAddressValueKey: getValidationMessage(EmailAddressValueKey),
      PasswordValueKey: getValidationMessage(PasswordValueKey),
      ConfPasswordValueKey: getValidationMessage(ConfPasswordValueKey),
    });
