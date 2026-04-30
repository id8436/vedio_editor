package com.adobe.creativesdk.foundation.internal.storage.controllers.edit;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AdobeCCDialogFragment extends DialogFragment {
    protected EditText _editText;
    protected LinearLayout _errorController;
    protected TextView _errorView;
    protected TextView _negativeButton;
    protected TextView _positiveButton;
    protected ProgressBar _progressBar;
    protected TextView _title;
    protected View view;

    protected abstract void handlePositiveClick();

    protected abstract View inflateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup);

    protected abstract void setDialogControls(View view);

    protected abstract void setDialogText();

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        this.view = inflateView(layoutInflater, viewGroup);
        setDialogControls(this.view);
        setDialogText();
        this._positiveButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdobeCCDialogFragment.this.handlePositiveClick();
            }
        });
        this._negativeButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdobeCCDialogFragment.this.handleNegativeClick();
            }
        });
        this._editText.addTextChangedListener(new EditTextWatcher());
        disablePositiveButton();
        this._editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCDialogFragment.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    AdobeCCDialogFragment.this._editText.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCDialogFragment.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (AdobeCCDialogFragment.this.getActivity() != null) {
                                Context applicationContext = AdobeCCDialogFragment.this.getActivity().getApplicationContext();
                                AdobeCCDialogFragment.this.getActivity();
                                ((InputMethodManager) applicationContext.getSystemService("input_method")).showSoftInput(AdobeCCDialogFragment.this._editText, 1);
                            }
                        }
                    });
                }
            }
        });
        return this.view;
    }

    protected void disablePositiveButton() {
        if (this._positiveButton != null) {
            this._positiveButton.setEnabled(false);
        }
    }

    protected void disableNegativeButton() {
        if (this._negativeButton != null) {
            this._negativeButton.setEnabled(false);
        }
    }

    protected void enablePositiveButton() {
        if (this._positiveButton != null) {
            this._positiveButton.setEnabled(true);
        }
    }

    protected void enableNegativeButton() {
        if (this._negativeButton != null) {
            this._negativeButton.setEnabled(true);
        }
    }

    protected void showUIProgressUpdate() {
        showProgressSpinner();
        dismissKeyBoard();
    }

    protected void hideProgressSpinner() {
        if (this._progressBar != null) {
            this._progressBar.setVisibility(8);
        }
    }

    protected void showProgressSpinner() {
        if (this._progressBar != null) {
            this._progressBar.setVisibility(0);
        }
    }

    protected void finishDialog() {
        dismissKeyBoard();
        dismiss();
    }

    protected void handleNegativeClick() {
        finishDialog();
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
    }

    protected void handleTextChanged() {
        if (getEnteredText() != null && getEnteredText().trim().length() > 0) {
            enablePositiveButton();
        } else {
            disablePositiveButton();
        }
    }

    protected void handleAfterTextChanged(Editable editable) {
        for (int length = editable.length(); length > 0; length--) {
            if (editable.subSequence(length - 1, length).toString().equals(IOUtils.LINE_SEPARATOR_UNIX)) {
                editable.replace(length - 1, length, "");
            }
        }
    }

    protected void showErrorDialog(String str) {
        disablePositiveButton();
        this._errorView.setText(str);
        this._errorController.setVisibility(0);
    }

    protected void hideErrorDialog() {
        this._errorController.setVisibility(8);
    }

    protected String getEnteredText() {
        if (this._editText != null) {
            return this._editText.getText().toString();
        }
        return null;
    }

    protected void dismissKeyBoard() {
        InputMethodManager inputMethodManager;
        if (getActivity() != null && (inputMethodManager = (InputMethodManager) getActivity().getSystemService("input_method")) != null && this._editText != null) {
            inputMethodManager.hideSoftInputFromWindow(this._editText.getWindowToken(), 0);
        }
    }

    class EditTextWatcher implements TextWatcher {
        private EditTextWatcher() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            AdobeCCDialogFragment.this.handleTextChanged();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            AdobeCCDialogFragment.this.handleAfterTextChanged(editable);
        }
    }
}
