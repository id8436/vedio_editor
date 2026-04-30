package com.adobe.premiereclip.dialogs;

import android.content.Context;
import android.widget.Button;
import android.widget.TextView;
import com.adobe.premiereclip.R;
import com.adobe.utility.FontUtils;
import com.h.a.d;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractDialog extends BaseDialog {
    protected Button acceptButton;
    protected OnClickListener acceptButtonListener;
    protected final boolean cancelOnTouchOutside;
    protected final String message;
    protected Button rejectButton;
    protected OnClickListener rejectButtonListener;
    protected final String title;

    public interface OnClickListener {
        void onClick();
    }

    public AbstractDialog(Context context, String str, String str2, boolean z) {
        super(context);
        this.title = str;
        this.message = str2;
        this.cancelOnTouchOutside = z;
    }

    protected void initView() {
        requestWindowFeature(1);
        setContentView(R.layout.view_dialog);
        setCanceledOnTouchOutside(this.cancelOnTouchOutside);
        TextView textView = (TextView) findViewById(R.id.title);
        textView.setText(this.title);
        d.a(textView, FontUtils.getInstance().getAdobeCleanRegularTypefaceCollection());
        TextView textView2 = (TextView) findViewById(R.id.message);
        textView2.setText(this.message);
        d.a(textView2);
        this.acceptButton = (Button) findViewById(R.id.accept);
        d.a(this.acceptButton, FontUtils.getInstance().getAdobeCleanRegularTypefaceCollection());
        this.rejectButton = (Button) findViewById(R.id.reject);
        d.a(this.rejectButton, FontUtils.getInstance().getAdobeCleanRegularTypefaceCollection());
    }
}
