// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String ProofOfAddressValueKey = 'proofOfAddress';
const String ProofOfIdentityValueKey = 'proofOfIdentity';
const String TinValueKey = 'TIN';

final Map<String, TextEditingController> _DocumentUploadTextEditingControllers =
    {};

final Map<String, FocusNode> _DocumentUploadFocusNodes = {};

final Map<String, String? Function(String?)?> _DocumentUploadTextValidations = {
  ProofOfAddressValueKey: null,
  ProofOfIdentityValueKey: null,
  TinValueKey: null,
};

mixin $DocumentUpload {
  TextEditingController get proofOfAddressController =>
      _getFormTextEditingController(ProofOfAddressValueKey);
  TextEditingController get proofOfIdentityController =>
      _getFormTextEditingController(ProofOfIdentityValueKey);
  TextEditingController get tinController =>
      _getFormTextEditingController(TinValueKey);

  FocusNode get proofOfAddressFocusNode =>
      _getFormFocusNode(ProofOfAddressValueKey);
  FocusNode get proofOfIdentityFocusNode =>
      _getFormFocusNode(ProofOfIdentityValueKey);
  FocusNode get tinFocusNode => _getFormFocusNode(TinValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_DocumentUploadTextEditingControllers.containsKey(key)) {
      return _DocumentUploadTextEditingControllers[key]!;
    }

    _DocumentUploadTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _DocumentUploadTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_DocumentUploadFocusNodes.containsKey(key)) {
      return _DocumentUploadFocusNodes[key]!;
    }
    _DocumentUploadFocusNodes[key] = FocusNode();
    return _DocumentUploadFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    proofOfAddressController.addListener(() => _updateFormData(model));
    proofOfIdentityController.addListener(() => _updateFormData(model));
    tinController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    proofOfAddressController.addListener(() => _updateFormData(model));
    proofOfIdentityController.addListener(() => _updateFormData(model));
    tinController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          ProofOfAddressValueKey: proofOfAddressController.text,
          ProofOfIdentityValueKey: proofOfIdentityController.text,
          TinValueKey: tinController.text,
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

    for (var controller in _DocumentUploadTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _DocumentUploadFocusNodes.values) {
      focusNode.dispose();
    }

    _DocumentUploadTextEditingControllers.clear();
    _DocumentUploadFocusNodes.clear();
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

  String? get proofOfAddressValue =>
      this.formValueMap[ProofOfAddressValueKey] as String?;
  String? get proofOfIdentityValue =>
      this.formValueMap[ProofOfIdentityValueKey] as String?;
  String? get tinValue => this.formValueMap[TinValueKey] as String?;

  set proofOfAddressValue(String? value) {
    this.setData(
      this.formValueMap..addAll({ProofOfAddressValueKey: value}),
    );

    if (_DocumentUploadTextEditingControllers.containsKey(
        ProofOfAddressValueKey)) {
      _DocumentUploadTextEditingControllers[ProofOfAddressValueKey]?.text =
          value ?? '';
    }
  }

  set proofOfIdentityValue(String? value) {
    this.setData(
      this.formValueMap..addAll({ProofOfIdentityValueKey: value}),
    );

    if (_DocumentUploadTextEditingControllers.containsKey(
        ProofOfIdentityValueKey)) {
      _DocumentUploadTextEditingControllers[ProofOfIdentityValueKey]?.text =
          value ?? '';
    }
  }

  set tinValue(String? value) {
    this.setData(
      this.formValueMap..addAll({TinValueKey: value}),
    );

    if (_DocumentUploadTextEditingControllers.containsKey(TinValueKey)) {
      _DocumentUploadTextEditingControllers[TinValueKey]?.text = value ?? '';
    }
  }

  bool get hasProofOfAddress =>
      this.formValueMap.containsKey(ProofOfAddressValueKey) &&
      (proofOfAddressValue?.isNotEmpty ?? false);
  bool get hasProofOfIdentity =>
      this.formValueMap.containsKey(ProofOfIdentityValueKey) &&
      (proofOfIdentityValue?.isNotEmpty ?? false);
  bool get hasTin =>
      this.formValueMap.containsKey(TinValueKey) &&
      (tinValue?.isNotEmpty ?? false);

  bool get hasProofOfAddressValidationMessage =>
      this.fieldsValidationMessages[ProofOfAddressValueKey]?.isNotEmpty ??
      false;
  bool get hasProofOfIdentityValidationMessage =>
      this.fieldsValidationMessages[ProofOfIdentityValueKey]?.isNotEmpty ??
      false;
  bool get hasTinValidationMessage =>
      this.fieldsValidationMessages[TinValueKey]?.isNotEmpty ?? false;

  String? get proofOfAddressValidationMessage =>
      this.fieldsValidationMessages[ProofOfAddressValueKey];
  String? get proofOfIdentityValidationMessage =>
      this.fieldsValidationMessages[ProofOfIdentityValueKey];
  String? get tinValidationMessage =>
      this.fieldsValidationMessages[TinValueKey];
}

extension Methods on FormStateHelper {
  setProofOfAddressValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[ProofOfAddressValueKey] = validationMessage;
  setProofOfIdentityValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[ProofOfIdentityValueKey] =
          validationMessage;
  setTinValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[TinValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    proofOfAddressValue = '';
    proofOfIdentityValue = '';
    tinValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      ProofOfAddressValueKey: getValidationMessage(ProofOfAddressValueKey),
      ProofOfIdentityValueKey: getValidationMessage(ProofOfIdentityValueKey),
      TinValueKey: getValidationMessage(TinValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _DocumentUploadTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _DocumentUploadTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      ProofOfAddressValueKey: getValidationMessage(ProofOfAddressValueKey),
      ProofOfIdentityValueKey: getValidationMessage(ProofOfIdentityValueKey),
      TinValueKey: getValidationMessage(TinValueKey),
    });
