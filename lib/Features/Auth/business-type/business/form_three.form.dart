// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String FirstNameValueKey = 'firstName';
const String LastNameValueKey = 'lastName';
const String DobValueKey = 'dob';
const String BusinessNameValueKey = 'businessName';
const String BusinessAddressValueKey = 'businessAddress';
const String BusinessSectorValueKey = 'businessSector';
const String BusinessURLValueKey = 'businessURL';
const String BusinessSocialValueKey = 'businessSocial';
const String EmployeeSizeValueKey = 'employeeSize';
const String CountryofOpsValueKey = 'countryofOps';

final Map<String, TextEditingController>
    _BusinessDescriptionTextEditingControllers = {};

final Map<String, FocusNode> _BusinessDescriptionFocusNodes = {};

final Map<String, String? Function(String?)?>
    _BusinessDescriptionTextValidations = {
  FirstNameValueKey: null,
  LastNameValueKey: null,
  DobValueKey: null,
  BusinessNameValueKey: null,
  BusinessAddressValueKey: null,
  BusinessSectorValueKey: null,
  BusinessURLValueKey: null,
  BusinessSocialValueKey: null,
  EmployeeSizeValueKey: null,
  CountryofOpsValueKey: null,
};

mixin $BusinessDescription {
  TextEditingController get firstNameController =>
      _getFormTextEditingController(FirstNameValueKey);
  TextEditingController get lastNameController =>
      _getFormTextEditingController(LastNameValueKey);
  TextEditingController get dobController =>
      _getFormTextEditingController(DobValueKey);
  TextEditingController get businessNameController =>
      _getFormTextEditingController(BusinessNameValueKey);
  TextEditingController get businessAddressController =>
      _getFormTextEditingController(BusinessAddressValueKey);
  TextEditingController get businessSectorController =>
      _getFormTextEditingController(BusinessSectorValueKey);
  TextEditingController get businessURLController =>
      _getFormTextEditingController(BusinessURLValueKey);
  TextEditingController get businessSocialController =>
      _getFormTextEditingController(BusinessSocialValueKey);
  TextEditingController get employeeSizeController =>
      _getFormTextEditingController(EmployeeSizeValueKey);
  TextEditingController get countryofOpsController =>
      _getFormTextEditingController(CountryofOpsValueKey);

  FocusNode get firstNameFocusNode => _getFormFocusNode(FirstNameValueKey);
  FocusNode get lastNameFocusNode => _getFormFocusNode(LastNameValueKey);
  FocusNode get dobFocusNode => _getFormFocusNode(DobValueKey);
  FocusNode get businessNameFocusNode =>
      _getFormFocusNode(BusinessNameValueKey);
  FocusNode get businessAddressFocusNode =>
      _getFormFocusNode(BusinessAddressValueKey);
  FocusNode get businessSectorFocusNode =>
      _getFormFocusNode(BusinessSectorValueKey);
  FocusNode get businessURLFocusNode => _getFormFocusNode(BusinessURLValueKey);
  FocusNode get businessSocialFocusNode =>
      _getFormFocusNode(BusinessSocialValueKey);
  FocusNode get employeeSizeFocusNode =>
      _getFormFocusNode(EmployeeSizeValueKey);
  FocusNode get countryofOpsFocusNode =>
      _getFormFocusNode(CountryofOpsValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_BusinessDescriptionTextEditingControllers.containsKey(key)) {
      return _BusinessDescriptionTextEditingControllers[key]!;
    }

    _BusinessDescriptionTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _BusinessDescriptionTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_BusinessDescriptionFocusNodes.containsKey(key)) {
      return _BusinessDescriptionFocusNodes[key]!;
    }
    _BusinessDescriptionFocusNodes[key] = FocusNode();
    return _BusinessDescriptionFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    firstNameController.addListener(() => _updateFormData(model));
    lastNameController.addListener(() => _updateFormData(model));
    dobController.addListener(() => _updateFormData(model));
    businessNameController.addListener(() => _updateFormData(model));
    businessAddressController.addListener(() => _updateFormData(model));
    businessSectorController.addListener(() => _updateFormData(model));
    businessURLController.addListener(() => _updateFormData(model));
    businessSocialController.addListener(() => _updateFormData(model));
    employeeSizeController.addListener(() => _updateFormData(model));
    countryofOpsController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    firstNameController.addListener(() => _updateFormData(model));
    lastNameController.addListener(() => _updateFormData(model));
    dobController.addListener(() => _updateFormData(model));
    businessNameController.addListener(() => _updateFormData(model));
    businessAddressController.addListener(() => _updateFormData(model));
    businessSectorController.addListener(() => _updateFormData(model));
    businessURLController.addListener(() => _updateFormData(model));
    businessSocialController.addListener(() => _updateFormData(model));
    employeeSizeController.addListener(() => _updateFormData(model));
    countryofOpsController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          FirstNameValueKey: firstNameController.text,
          LastNameValueKey: lastNameController.text,
          DobValueKey: dobController.text,
          BusinessNameValueKey: businessNameController.text,
          BusinessAddressValueKey: businessAddressController.text,
          BusinessSectorValueKey: businessSectorController.text,
          BusinessURLValueKey: businessURLController.text,
          BusinessSocialValueKey: businessSocialController.text,
          EmployeeSizeValueKey: employeeSizeController.text,
          CountryofOpsValueKey: countryofOpsController.text,
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

    for (var controller in _BusinessDescriptionTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _BusinessDescriptionFocusNodes.values) {
      focusNode.dispose();
    }

    _BusinessDescriptionTextEditingControllers.clear();
    _BusinessDescriptionFocusNodes.clear();
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

  String? get firstNameValue => this.formValueMap[FirstNameValueKey] as String?;
  String? get lastNameValue => this.formValueMap[LastNameValueKey] as String?;
  String? get dobValue => this.formValueMap[DobValueKey] as String?;
  String? get businessNameValue =>
      this.formValueMap[BusinessNameValueKey] as String?;
  String? get businessAddressValue =>
      this.formValueMap[BusinessAddressValueKey] as String?;
  String? get businessSectorValue =>
      this.formValueMap[BusinessSectorValueKey] as String?;
  String? get businessURLValue =>
      this.formValueMap[BusinessURLValueKey] as String?;
  String? get businessSocialValue =>
      this.formValueMap[BusinessSocialValueKey] as String?;
  String? get employeeSizeValue =>
      this.formValueMap[EmployeeSizeValueKey] as String?;
  String? get countryofOpsValue =>
      this.formValueMap[CountryofOpsValueKey] as String?;

  set firstNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({FirstNameValueKey: value}),
    );

    if (_BusinessDescriptionTextEditingControllers.containsKey(
        FirstNameValueKey)) {
      _BusinessDescriptionTextEditingControllers[FirstNameValueKey]?.text =
          value ?? '';
    }
  }

  set lastNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({LastNameValueKey: value}),
    );

    if (_BusinessDescriptionTextEditingControllers.containsKey(
        LastNameValueKey)) {
      _BusinessDescriptionTextEditingControllers[LastNameValueKey]?.text =
          value ?? '';
    }
  }

  set dobValue(String? value) {
    this.setData(
      this.formValueMap..addAll({DobValueKey: value}),
    );

    if (_BusinessDescriptionTextEditingControllers.containsKey(DobValueKey)) {
      _BusinessDescriptionTextEditingControllers[DobValueKey]?.text =
          value ?? '';
    }
  }

  set businessNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({BusinessNameValueKey: value}),
    );

    if (_BusinessDescriptionTextEditingControllers.containsKey(
        BusinessNameValueKey)) {
      _BusinessDescriptionTextEditingControllers[BusinessNameValueKey]?.text =
          value ?? '';
    }
  }

  set businessAddressValue(String? value) {
    this.setData(
      this.formValueMap..addAll({BusinessAddressValueKey: value}),
    );

    if (_BusinessDescriptionTextEditingControllers.containsKey(
        BusinessAddressValueKey)) {
      _BusinessDescriptionTextEditingControllers[BusinessAddressValueKey]
          ?.text = value ?? '';
    }
  }

  set businessSectorValue(String? value) {
    this.setData(
      this.formValueMap..addAll({BusinessSectorValueKey: value}),
    );

    if (_BusinessDescriptionTextEditingControllers.containsKey(
        BusinessSectorValueKey)) {
      _BusinessDescriptionTextEditingControllers[BusinessSectorValueKey]?.text =
          value ?? '';
    }
  }

  set businessURLValue(String? value) {
    this.setData(
      this.formValueMap..addAll({BusinessURLValueKey: value}),
    );

    if (_BusinessDescriptionTextEditingControllers.containsKey(
        BusinessURLValueKey)) {
      _BusinessDescriptionTextEditingControllers[BusinessURLValueKey]?.text =
          value ?? '';
    }
  }

  set businessSocialValue(String? value) {
    this.setData(
      this.formValueMap..addAll({BusinessSocialValueKey: value}),
    );

    if (_BusinessDescriptionTextEditingControllers.containsKey(
        BusinessSocialValueKey)) {
      _BusinessDescriptionTextEditingControllers[BusinessSocialValueKey]?.text =
          value ?? '';
    }
  }

  set employeeSizeValue(String? value) {
    this.setData(
      this.formValueMap..addAll({EmployeeSizeValueKey: value}),
    );

    if (_BusinessDescriptionTextEditingControllers.containsKey(
        EmployeeSizeValueKey)) {
      _BusinessDescriptionTextEditingControllers[EmployeeSizeValueKey]?.text =
          value ?? '';
    }
  }

  set countryofOpsValue(String? value) {
    this.setData(
      this.formValueMap..addAll({CountryofOpsValueKey: value}),
    );

    if (_BusinessDescriptionTextEditingControllers.containsKey(
        CountryofOpsValueKey)) {
      _BusinessDescriptionTextEditingControllers[CountryofOpsValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasFirstName =>
      this.formValueMap.containsKey(FirstNameValueKey) &&
      (firstNameValue?.isNotEmpty ?? false);
  bool get hasLastName =>
      this.formValueMap.containsKey(LastNameValueKey) &&
      (lastNameValue?.isNotEmpty ?? false);
  bool get hasDob =>
      this.formValueMap.containsKey(DobValueKey) &&
      (dobValue?.isNotEmpty ?? false);
  bool get hasBusinessName =>
      this.formValueMap.containsKey(BusinessNameValueKey) &&
      (businessNameValue?.isNotEmpty ?? false);
  bool get hasBusinessAddress =>
      this.formValueMap.containsKey(BusinessAddressValueKey) &&
      (businessAddressValue?.isNotEmpty ?? false);
  bool get hasBusinessSector =>
      this.formValueMap.containsKey(BusinessSectorValueKey) &&
      (businessSectorValue?.isNotEmpty ?? false);
  bool get hasBusinessURL =>
      this.formValueMap.containsKey(BusinessURLValueKey) &&
      (businessURLValue?.isNotEmpty ?? false);
  bool get hasBusinessSocial =>
      this.formValueMap.containsKey(BusinessSocialValueKey) &&
      (businessSocialValue?.isNotEmpty ?? false);
  bool get hasEmployeeSize =>
      this.formValueMap.containsKey(EmployeeSizeValueKey) &&
      (employeeSizeValue?.isNotEmpty ?? false);
  bool get hasCountryofOps =>
      this.formValueMap.containsKey(CountryofOpsValueKey) &&
      (countryofOpsValue?.isNotEmpty ?? false);

  bool get hasFirstNameValidationMessage =>
      this.fieldsValidationMessages[FirstNameValueKey]?.isNotEmpty ?? false;
  bool get hasLastNameValidationMessage =>
      this.fieldsValidationMessages[LastNameValueKey]?.isNotEmpty ?? false;
  bool get hasDobValidationMessage =>
      this.fieldsValidationMessages[DobValueKey]?.isNotEmpty ?? false;
  bool get hasBusinessNameValidationMessage =>
      this.fieldsValidationMessages[BusinessNameValueKey]?.isNotEmpty ?? false;
  bool get hasBusinessAddressValidationMessage =>
      this.fieldsValidationMessages[BusinessAddressValueKey]?.isNotEmpty ??
      false;
  bool get hasBusinessSectorValidationMessage =>
      this.fieldsValidationMessages[BusinessSectorValueKey]?.isNotEmpty ??
      false;
  bool get hasBusinessURLValidationMessage =>
      this.fieldsValidationMessages[BusinessURLValueKey]?.isNotEmpty ?? false;
  bool get hasBusinessSocialValidationMessage =>
      this.fieldsValidationMessages[BusinessSocialValueKey]?.isNotEmpty ??
      false;
  bool get hasEmployeeSizeValidationMessage =>
      this.fieldsValidationMessages[EmployeeSizeValueKey]?.isNotEmpty ?? false;
  bool get hasCountryofOpsValidationMessage =>
      this.fieldsValidationMessages[CountryofOpsValueKey]?.isNotEmpty ?? false;

  String? get firstNameValidationMessage =>
      this.fieldsValidationMessages[FirstNameValueKey];
  String? get lastNameValidationMessage =>
      this.fieldsValidationMessages[LastNameValueKey];
  String? get dobValidationMessage =>
      this.fieldsValidationMessages[DobValueKey];
  String? get businessNameValidationMessage =>
      this.fieldsValidationMessages[BusinessNameValueKey];
  String? get businessAddressValidationMessage =>
      this.fieldsValidationMessages[BusinessAddressValueKey];
  String? get businessSectorValidationMessage =>
      this.fieldsValidationMessages[BusinessSectorValueKey];
  String? get businessURLValidationMessage =>
      this.fieldsValidationMessages[BusinessURLValueKey];
  String? get businessSocialValidationMessage =>
      this.fieldsValidationMessages[BusinessSocialValueKey];
  String? get employeeSizeValidationMessage =>
      this.fieldsValidationMessages[EmployeeSizeValueKey];
  String? get countryofOpsValidationMessage =>
      this.fieldsValidationMessages[CountryofOpsValueKey];
}

extension Methods on FormStateHelper {
  setFirstNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[FirstNameValueKey] = validationMessage;
  setLastNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[LastNameValueKey] = validationMessage;
  setDobValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[DobValueKey] = validationMessage;
  setBusinessNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[BusinessNameValueKey] = validationMessage;
  setBusinessAddressValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[BusinessAddressValueKey] =
          validationMessage;
  setBusinessSectorValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[BusinessSectorValueKey] = validationMessage;
  setBusinessURLValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[BusinessURLValueKey] = validationMessage;
  setBusinessSocialValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[BusinessSocialValueKey] = validationMessage;
  setEmployeeSizeValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[EmployeeSizeValueKey] = validationMessage;
  setCountryofOpsValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[CountryofOpsValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    firstNameValue = '';
    lastNameValue = '';
    dobValue = '';
    businessNameValue = '';
    businessAddressValue = '';
    businessSectorValue = '';
    businessURLValue = '';
    businessSocialValue = '';
    employeeSizeValue = '';
    countryofOpsValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      FirstNameValueKey: getValidationMessage(FirstNameValueKey),
      LastNameValueKey: getValidationMessage(LastNameValueKey),
      DobValueKey: getValidationMessage(DobValueKey),
      BusinessNameValueKey: getValidationMessage(BusinessNameValueKey),
      BusinessAddressValueKey: getValidationMessage(BusinessAddressValueKey),
      BusinessSectorValueKey: getValidationMessage(BusinessSectorValueKey),
      BusinessURLValueKey: getValidationMessage(BusinessURLValueKey),
      BusinessSocialValueKey: getValidationMessage(BusinessSocialValueKey),
      EmployeeSizeValueKey: getValidationMessage(EmployeeSizeValueKey),
      CountryofOpsValueKey: getValidationMessage(CountryofOpsValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _BusinessDescriptionTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _BusinessDescriptionTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      FirstNameValueKey: getValidationMessage(FirstNameValueKey),
      LastNameValueKey: getValidationMessage(LastNameValueKey),
      DobValueKey: getValidationMessage(DobValueKey),
      BusinessNameValueKey: getValidationMessage(BusinessNameValueKey),
      BusinessAddressValueKey: getValidationMessage(BusinessAddressValueKey),
      BusinessSectorValueKey: getValidationMessage(BusinessSectorValueKey),
      BusinessURLValueKey: getValidationMessage(BusinessURLValueKey),
      BusinessSocialValueKey: getValidationMessage(BusinessSocialValueKey),
      EmployeeSizeValueKey: getValidationMessage(EmployeeSizeValueKey),
      CountryofOpsValueKey: getValidationMessage(CountryofOpsValueKey),
    });
