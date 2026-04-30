package com.adobe.premiereclip.editor;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import com.adobe.premiereclip.R;
import com.h.a.d;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public class TitleTextInputDialog extends Dialog {
    private static final int MAX_LINES = 10;
    private String defaultText;
    private final TitleTextChangeListener listener;

    public interface TitleTextChangeListener {
        void onTitleTextChanged(String str);
    }

    public TitleTextInputDialog(Activity activity, String str, TitleTextChangeListener titleTextChangeListener) {
        super(activity);
        this.defaultText = str;
        this.listener = titleTextChangeListener;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.view_title_text_input);
        final EditText editText = (EditText) findViewById(R.id.titleTextEdit);
        editText.append(this.defaultText);
        editText.setSelectAllOnFocus(true);
        editText.addTextChangedListener(new TextWatcher() { // from class: com.adobe.premiereclip.editor.TitleTextInputDialog.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                String string = editText.getText().toString();
                if (TitleTextInputDialog.this.countLines(string) >= 10) {
                    editable.replace(0, editable.length(), string.substring(0, string.lastIndexOf(IOUtils.LINE_SEPARATOR_UNIX)));
                }
            }
        });
        View viewFindViewById = findViewById(R.id.titleEditDone);
        d.a(viewFindViewById);
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.editor.TitleTextInputDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String string = ((EditText) TitleTextInputDialog.this.findViewById(R.id.titleTextEdit)).getText().toString();
                if (!string.equals("") && string.length() <= 256) {
                    TitleTextInputDialog.this.listener.onTitleTextChanged(string);
                    TitleTextInputDialog.this.dismiss();
                }
            }
        });
        d.a(findViewById(R.id.title));
        setCanceledOnTouchOutside(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int countLines(String str) {
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) == '\n') {
                i++;
            }
        }
        return i;
    }
}
