package com.adobe.creativesdk.foundation.internal.utils;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import c.a.a.a.a.b.a;
import com.adobe.creativesdk.foundation.auth.R;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeDialogFragment extends DialogFragment {
    protected EditText _editText;
    private LinearLayout _errorController;
    private TextView _errorView;
    protected TextView _negativeButton;
    protected TextView _positiveButton;
    private String dialogTitle;
    private String editTextHint;
    private String negativeButtonTitle;
    private ProgressBar optionalProgressBar;
    private String positiveButtonTitle;
    private boolean _dialogStopped = false;
    private boolean _positiveButtonEnabled = false;
    private String editTextString = null;
    private boolean isSingleLine = false;

    /* JADX INFO: Access modifiers changed from: private */
    public void handleEditTextBackground() {
        if (getEnteredText() != null && getEnteredText().trim().length() > 0) {
            if (this._editText != null) {
                this._editText.setBackgroundResource(R.drawable.adobe_csdk_edittext_background_with_text);
            }
        } else if (this._editText != null) {
            this._editText.setBackgroundResource(R.drawable.adobe_csdk_edittext_background);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.adobe_csdk_common_dialog_fragment, viewGroup);
        this.optionalProgressBar = (ProgressBar) viewInflate.findViewById(R.id.adobe_csdk_optionalProgressBar);
        this._positiveButton = (TextView) viewInflate.findViewById(R.id.adobe_csdk_generic_dialog_fragment_postive_button);
        this._positiveButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdobeDialogFragment.this.handlePositiveClick();
            }
        });
        this._negativeButton = (TextView) viewInflate.findViewById(R.id.adobe_csdk_generic_dialog_fragment_negative_button);
        this._negativeButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdobeDialogFragment.this.handleNegativeClick();
            }
        });
        this._editText = (EditText) viewInflate.findViewById(R.id.adobe_csdk_generic_dialog_fragment_edit_text);
        this._errorController = (LinearLayout) viewInflate.findViewById(R.id.adobe_csdk_generic_dialog_fragment_error_container);
        this._errorView = (TextView) viewInflate.findViewById(R.id.adobe_csdk_generic_dialog_fragment_error_text);
        this._editText.addTextChangedListener(new EditTextWatcher());
        disablePositiveButton();
        this._editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    AdobeDialogFragment.this._editText.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (AdobeDialogFragment.this.getActivity() != null) {
                                Context applicationContext = AdobeDialogFragment.this.getActivity().getApplicationContext();
                                AdobeDialogFragment.this.getActivity();
                                ((InputMethodManager) applicationContext.getSystemService("input_method")).showSoftInput(AdobeDialogFragment.this._editText, 1);
                            }
                        }
                    });
                }
            }
        });
        this._editText.setOnKeyListener(new View.OnKeyListener() { // from class: com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment.4
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i, KeyEvent keyEvent) {
                if (i == 111) {
                    AdobeDialogFragment.this.dismiss();
                    return false;
                }
                return false;
            }
        });
        this._positiveButton.setText(this.positiveButtonTitle);
        this._negativeButton.setText(this.negativeButtonTitle);
        this._editText.setHint(this.editTextHint);
        this._editText.setSingleLine(this.isSingleLine);
        if (this.editTextString != null) {
            this._editText.setText(this.editTextString);
            this._editText.setSelection(this.editTextString.length());
        }
        return viewInflate;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        SpannableString spannableString = new SpannableString(this.dialogTitle);
        spannableString.setSpan(new AdobeCSDKTypefaceSpan(null, AdobeCSDKTypeFace.getTypeface(getActivity())), 0, spannableString.length(), 18);
        spannableString.setSpan(new ForegroundColorSpan(getResources().getColor(R.color.adobe_csdk_asset_browser_dark_text)), 0, spannableString.length(), 18);
        spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 18);
        getDialog().setTitle(spannableString);
        Dialog dialog = getDialog();
        View viewFindViewById = dialog.findViewById(dialog.getContext().getResources().getIdentifier("android:id/titleDivider", null, null));
        if (viewFindViewById == null) {
            viewFindViewById = dialog.findViewById(getResources().getIdentifier("titleDivider", "id", a.ANDROID_CLIENT_TYPE));
        }
        Window window = getDialog().getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(R.color.adobe_csdk_actionbar_background_color);
        }
        if (viewFindViewById != null) {
            viewFindViewById.setBackgroundColor(getResources().getColor(R.color.adobe_csdk_actionbar_background_color));
        }
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        setStyle(0, R.style.AdobeCSDKDialogWithTitle);
        super.onCreate(bundle);
    }

    public void handlePositiveClick() {
    }

    public void handleNegativeClick() {
    }

    public void setNegativeButtonTitle(String str) {
        this.negativeButtonTitle = str;
    }

    public void setPositiveButtonTitle(String str) {
        this.positiveButtonTitle = str;
    }

    public void setDialogTitle(String str) {
        this.dialogTitle = str;
    }

    public void setEditTextHint(String str) {
        this.editTextHint = str;
    }

    public void setEditText(String str) {
        this.editTextString = str;
    }

    public void setEditTextSingleLine() {
        this.isSingleLine = true;
    }

    public void showErrorDialog(String str) {
        disablePositiveButton();
        this._errorView.setText(str);
        this._errorController.setVisibility(0);
    }

    public void hideErrorDialog() {
        this._errorController.setVisibility(8);
    }

    public void handleTextChanged() {
    }

    public void handleAfterTextChanged(Editable editable) {
    }

    public void showUIProgressUpdate() {
        showProgressSpinner();
        dismissKeyBoard();
    }

    public String getEnteredText() {
        if (this._editText != null) {
            return this._editText.getText().toString();
        }
        return null;
    }

    public void disablePositiveButton() {
        this._positiveButtonEnabled = false;
        if (this._positiveButton != null) {
            this._positiveButton.setEnabled(false);
        }
    }

    public void enablePositiveButton() {
        this._positiveButtonEnabled = true;
        if (this._positiveButton != null) {
            this._positiveButton.setEnabled(true);
        }
    }

    public boolean isPositiveButtonEnabled() {
        return this._positiveButtonEnabled;
    }

    public void disableNegativeButton() {
        if (this._negativeButton != null) {
            this._negativeButton.setEnabled(false);
        }
    }

    public void enableNegativeButton() {
        if (this._negativeButton != null) {
            this._negativeButton.setEnabled(true);
        }
    }

    public void hideProgressSpinner() {
        if (this.optionalProgressBar != null) {
            this.optionalProgressBar.setVisibility(8);
        }
    }

    public void showProgressSpinner() {
        if (this.optionalProgressBar != null) {
            this.optionalProgressBar.setVisibility(0);
        }
    }

    public void dismissKeyBoard() {
        InputMethodManager inputMethodManager;
        if (getActivity() != null && (inputMethodManager = (InputMethodManager) getActivity().getSystemService("input_method")) != null && this._editText != null) {
            inputMethodManager.hideSoftInputFromWindow(this._editText.getWindowToken(), 0);
        }
    }

    class EditTextWatcher implements TextWatcher {
        EditTextWatcher() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            AdobeDialogFragment.this.handleEditTextBackground();
            AdobeDialogFragment.this.handleTextChanged();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            AdobeDialogFragment.this.handleAfterTextChanged(editable);
        }
    }
}
