// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String BusinessTypeValueKey = 'businessType';
const String CACNumberValueKey = 'CACNumber';
const String BvnNumberValueKey = 'bvnNumber';
const String NinNumberValueKey = 'ninNumber';
const String BusinessEmailValueKey = 'businessEmail';
const String PasswordValueKey = 'password';
const String ConfPasswordValueKey = 'confPassword';

final Map<String, TextEditingController> _BusinesTypeTextEditingControllers =
    {};

final Map<String, FocusNode> _BusinesTypeFocusNodes = {};

final Map<String, String? Function(String?)?> _BusinesTypeTextValidations = {
  BusinessTypeValueKey: null,
  CACNumberValueKey: null,
  BvnNumberValueKey: null,
  NinNumberValueKey: null,
  BusinessEmailValueKey: null,
  PasswordValueKey: null,
  ConfPasswordValueKey: null,
};

mixin $BusinesType {
  TextEditingController get businessTypeController =>
      _getFormTextEditingController(BusinessTypeValueKey);
  TextEditingController get cACNumberController =>
      _getFormTextEditingController(CACNumberValueKey);
  TextEditingController get bvnNumberController =>
      _getFormTextEditingController(BvnNumberValueKey);
  TextEditingController get ninNumberController =>
      _getFormTextEditingController(NinNumberValueKey);
  TextEditingController get businessEmailController =>
      _getFormTextEditingController(BusinessEmailValueKey);
  TextEditingController get passwordController =>
      _getFormTextEditingController(PasswordValueKey);
  TextEditingController get confPasswordController =>
      _getFormTextEditingController(ConfPasswordValueKey);

  FocusNode get businessTypeFocusNode =>
      _getFormFocusNode(BusinessTypeValueKey);
  FocusNode get cACNumberFocusNode => _getFormFocusNode(CACNumberValueKey);
  FocusNode get bvnNumberFocusNode => _getFormFocusNode(BvnNumberValueKey);
  FocusNode get ninNumberFocusNode => _getFormFocusNode(NinNumberValueKey);
  FocusNode get businessEmailFocusNode =>
      _getFormFocusNode(BusinessEmailValueKey);
  FocusNode get passwordFocusNode => _getFormFocusNode(PasswordValueKey);
  FocusNode get confPasswordFocusNode =>
      _getFormFocusNode(ConfPasswordValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_BusinesTypeTextEditingControllers.containsKey(key)) {
      return _BusinesTypeTextEditingControllers[key]!;
    }

    _BusinesTypeTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _BusinesTypeTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_BusinesTypeFocusNodes.containsKey(key)) {
      return _BusinesTypeFocusNodes[key]!;
    }
    _BusinesTypeFocusNodes[key] = FocusNode();
    return _BusinesTypeFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    businessTypeController.addListener(() => _updateFormData(model));
    cACNumberController.addListener(() => _updateFormData(model));
    bvnNumberController.addListener(() => _updateFormData(model));
    ninNumberController.addListener(() => _updateFormData(model));
    businessEmailController.addListener(() => _updateFormData(model));
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
    businessTypeController.addListener(() => _updateFormData(model));
    cACNumberController.addListener(() => _updateFormData(model));
    bvnNumberController.addListener(() => _updateFormData(model));
    ninNumberController.addListener(() => _updateFormData(model));
    businessEmailController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
    confPasswordController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          BusinessTypeValueKey: businessTypeController.text,
          CACNumberValueKey: cACNumberController.text,
          BvnNumberValueKey: bvnNumberController.text,
          NinNumberValueKey: ninNumberController.text,
          BusinessEmailValueKey: businessEmailController.text,
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

    for (var controller in _BusinesTypeTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _BusinesTypeFocusNodes.values) {
      focusNode.dispose();
    }

    _BusinesTypeTextEditingControllers.clear();
    _BusinesTypeFocusNodes.clear();
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

  String? get businessTypeValue =>
      this.formValueMap[BusinessTypeValueKey] as String?;
  String? get cACNumberValue => this.formValueMap[CACNumberValueKey] as String?;
  String? get bvnNumberValue => this.formValueMap[BvnNumberValueKey] as String?;
  String? get ninNumberValue => this.formValueMap[NinNumberValueKey] as String?;
  String? get businessEmailValue =>
      this.formValueMap[BusinessEmailValueKey] as String?;
  String? get passwordValue => this.formValueMap[PasswordValueKey] as String?;
  String? get confPasswordValue =>
      this.formValueMap[ConfPasswordValueKey] as String?;

  set businessTypeValue(String? value) {
    this.setData(
      this.formValueMap..addAll({BusinessTypeValueKey: value}),
    );

    if (_BusinesTypeTextEditingControllers.containsKey(BusinessTypeValueKey)) {
      _BusinesTypeTextEditingControllers[BusinessTypeValueKey]?.text =
          value ?? '';
    }
  }

  set cACNumberValue(String? value) {
    this.setData(
      this.formValueMap..addAll({CACNumberValueKey: value}),
    );

    if (_BusinesTypeTextEditingControllers.containsKey(CACNumberValueKey)) {
      _BusinesTypeTextEditingControllers[CACNumberValueKey]?.text = value ?? '';
    }
  }

  set bvnNumberValue(String? value) {
    this.setData(
      this.formValueMap..addAll({BvnNumberValueKey: value}),
    );

    if (_BusinesTypeTextEditingControllers.containsKey(BvnNumberValueKey)) {
      _BusinesTypeTextEditingControllers[BvnNumberValueKey]?.text = value ?? '';
    }
  }

  set ninNumberValue(String? value) {
    this.setData(
      this.formValueMap..addAll({NinNumberValueKey: value}),
    );

    if (_BusinesTypeTextEditingControllers.containsKey(NinNumberValueKey)) {
      _BusinesTypeTextEditingControllers[NinNumberValueKey]?.text = value ?? '';
    }
  }

  set businessEmailValue(String? value) {
    this.setData(
      this.formValueMap..addAll({BusinessEmailValueKey: value}),
    );

    if (_BusinesTypeTextEditingControllers.containsKey(BusinessEmailValueKey)) {
      _BusinesTypeTextEditingControllers[BusinessEmailValueKey]?.text =
          value ?? '';
    }
  }

  set passwordValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PasswordValueKey: value}),
    );

    if (_BusinesTypeTextEditingControllers.containsKey(PasswordValueKey)) {
      _BusinesTypeTextEditingControllers[PasswordValueKey]?.text = value ?? '';
    }
  }

  set confPasswordValue(String? value) {
    this.setData(
      this.formValueMap..addAll({ConfPasswordValueKey: value}),
    );

    if (_BusinesTypeTextEditingControllers.containsKey(ConfPasswordValueKey)) {
      _BusinesTypeTextEditingControllers[ConfPasswordValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasBusinessType =>
      this.formValueMap.containsKey(BusinessTypeValueKey) &&
      (businessTypeValue?.isNotEmpty ?? false);
  bool get hasCACNumber =>
      this.formValueMap.containsKey(CACNumberValueKey) &&
      (cACNumberValue?.isNotEmpty ?? false);
  bool get hasBvnNumber =>
      this.formValueMap.containsKey(BvnNumberValueKey) &&
      (bvnNumberValue?.isNotEmpty ?? false);
  bool get hasNinNumber =>
      this.formValueMap.containsKey(NinNumberValueKey) &&
      (ninNumberValue?.isNotEmpty ?? false);
  bool get hasBusinessEmail =>
      this.formValueMap.containsKey(BusinessEmailValueKey) &&
      (businessEmailValue?.isNotEmpty ?? false);
  bool get hasPassword =>
      this.formValueMap.containsKey(PasswordValueKey) &&
      (passwordValue?.isNotEmpty ?? false);
  bool get hasConfPassword =>
      this.formValueMap.containsKey(ConfPasswordValueKey) &&
      (confPasswordValue?.isNotEmpty ?? false);

  bool get hasBusinessTypeValidationMessage =>
      this.fieldsValidationMessages[BusinessTypeValueKey]?.isNotEmpty ?? false;
  bool get hasCACNumberValidationMessage =>
      this.fieldsValidationMessages[CACNumberValueKey]?.isNotEmpty ?? false;
  bool get hasBvnNumberValidationMessage =>
      this.fieldsValidationMessages[BvnNumberValueKey]?.isNotEmpty ?? false;
  bool get hasNinNumberValidationMessage =>
      this.fieldsValidationMessages[NinNumberValueKey]?.isNotEmpty ?? false;
  bool get hasBusinessEmailValidationMessage =>
      this.fieldsValidationMessages[BusinessEmailValueKey]?.isNotEmpty ?? false;
  bool get hasPasswordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey]?.isNotEmpty ?? false;
  bool get hasConfPasswordValidationMessage =>
      this.fieldsValidationMessages[ConfPasswordValueKey]?.isNotEmpty ?? false;

  String? get businessTypeValidationMessage =>
      this.fieldsValidationMessages[BusinessTypeValueKey];
  String? get cACNumberValidationMessage =>
      this.fieldsValidationMessages[CACNumberValueKey];
  String? get bvnNumberValidationMessage =>
      this.fieldsValidationMessages[BvnNumberValueKey];
  String? get ninNumberValidationMessage =>
      this.fieldsValidationMessages[NinNumberValueKey];
  String? get businessEmailValidationMessage =>
      this.fieldsValidationMessages[BusinessEmailValueKey];
  String? get passwordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey];
  String? get confPasswordValidationMessage =>
      this.fieldsValidationMessages[ConfPasswordValueKey];
}

extension Methods on FormStateHelper {
  setBusinessTypeValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[BusinessTypeValueKey] = validationMessage;
  setCACNumberValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[CACNumberValueKey] = validationMessage;
  setBvnNumberValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[BvnNumberValueKey] = validationMessage;
  setNinNumberValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NinNumberValueKey] = validationMessage;
  setBusinessEmailValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[BusinessEmailValueKey] = validationMessage;
  setPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PasswordValueKey] = validationMessage;
  setConfPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[ConfPasswordValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    businessTypeValue = '';
    cACNumberValue = '';
    bvnNumberValue = '';
    ninNumberValue = '';
    businessEmailValue = '';
    passwordValue = '';
    confPasswordValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      BusinessTypeValueKey: getValidationMessage(BusinessTypeValueKey),
      CACNumberValueKey: getValidationMessage(CACNumberValueKey),
      BvnNumberValueKey: getValidationMessage(BvnNumberValueKey),
      NinNumberValueKey: getValidationMessage(NinNumberValueKey),
      BusinessEmailValueKey: getValidationMessage(BusinessEmailValueKey),
      PasswordValueKey: getValidationMessage(PasswordValueKey),
      ConfPasswordValueKey: getValidationMessage(ConfPasswordValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _BusinesTypeTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _BusinesTypeTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      BusinessTypeValueKey: getValidationMessage(BusinessTypeValueKey),
      CACNumberValueKey: getValidationMessage(CACNumberValueKey),
      BvnNumberValueKey: getValidationMessage(BvnNumberValueKey),
      NinNumberValueKey: getValidationMessage(NinNumberValueKey),
      BusinessEmailValueKey: getValidationMessage(BusinessEmailValueKey),
      PasswordValueKey: getValidationMessage(PasswordValueKey),
      ConfPasswordValueKey: getValidationMessage(ConfPasswordValueKey),
    });
