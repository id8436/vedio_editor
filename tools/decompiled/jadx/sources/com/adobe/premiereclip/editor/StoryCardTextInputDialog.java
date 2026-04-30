package com.adobe.premiereclip.editor;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import com.adobe.premiereclip.R;
import com.h.a.d;

/* JADX INFO: loaded from: classes2.dex */
public class StoryCardTextInputDialog extends Dialog {
    private String defaultText;
    private final StoryCardTextChangeListener listener;

    public interface StoryCardTextChangeListener {
        void onStoryCardTextChanged(String str);
    }

    public StoryCardTextInputDialog(Activity activity, String str, StoryCardTextChangeListener storyCardTextChangeListener) {
        super(activity);
        this.defaultText = str;
        this.listener = storyCardTextChangeListener;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.view_title_text_input);
        ((EditText) findViewById(R.id.titleTextEdit)).append(this.defaultText);
        View viewFindViewById = findViewById(R.id.titleEditDone);
        d.a(viewFindViewById);
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.editor.StoryCardTextInputDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                StoryCardTextInputDialog.this.listener.onStoryCardTextChanged(((EditText) StoryCardTextInputDialog.this.findViewById(R.id.titleTextEdit)).getText().toString());
                StoryCardTextInputDialog.this.dismiss();
            }
        });
        d.a(findViewById(R.id.title));
    }
}
