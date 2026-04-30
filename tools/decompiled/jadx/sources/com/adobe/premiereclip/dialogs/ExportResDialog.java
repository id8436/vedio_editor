package com.adobe.premiereclip.dialogs;

import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.widget.AppCompatCheckBox;
import android.support.v7.widget.AppCompatRadioButton;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.RadioGroup;
import com.adobe.premiereclip.ClipPreferences;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.dialogs.AbstractDialog;
import com.adobe.premiereclip.project.sequence.Sequence;
import com.adobe.utility.FontUtils;
import com.h.a.d;

/* JADX INFO: loaded from: classes2.dex */
public class ExportResDialog extends BaseDialog {
    private Context context;
    private AbstractDialog.OnClickListener onContinueListener;
    private RadioGroup radioGroup;

    public ExportResDialog(Context context) {
        super(context);
        this.context = context;
    }

    public void setOnContinueListener(AbstractDialog.OnClickListener onClickListener) {
        this.onContinueListener = onClickListener;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.view_export_res_dialog);
        setCanceledOnTouchOutside(false);
        this.radioGroup = (RadioGroup) findViewById(R.id.exportOptionsGroup);
        d.a(this.radioGroup);
        final AppCompatCheckBox appCompatCheckBox = (AppCompatCheckBox) findViewById(R.id.setAsDefaultRes);
        d.a(appCompatCheckBox);
        final View viewFindViewById = findViewById(R.id.messageDefault);
        d.a(viewFindViewById);
        AppCompatRadioButton appCompatRadioButton = (AppCompatRadioButton) findViewById(R.id.hdOption);
        AppCompatRadioButton appCompatRadioButton2 = (AppCompatRadioButton) findViewById(R.id.fhdOption);
        if (Build.VERSION.SDK_INT != 21) {
            ColorStateList colorStateList = this.context.getResources().getColorStateList(R.color.radio_button);
            appCompatRadioButton.setSupportButtonTintList(colorStateList);
            appCompatRadioButton2.setSupportButtonTintList(colorStateList);
            appCompatCheckBox.setSupportButtonTintList(colorStateList);
        }
        appCompatCheckBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.adobe.premiereclip.dialogs.ExportResDialog.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    viewFindViewById.setVisibility(0);
                }
            }
        });
        View viewFindViewById2 = findViewById(R.id.exportContinue);
        viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.dialogs.ExportResDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i = 0;
                switch (ExportResDialog.this.radioGroup.getCheckedRadioButtonId()) {
                    case R.id.hdOption /* 2131887553 */:
                        i = Sequence.EXPORT_HD_HEIGHT;
                        break;
                    case R.id.fhdOption /* 2131887554 */:
                        i = 1080;
                        break;
                }
                ClipPreferences.getInstance(ExportResDialog.this.context).setExportResolution(i);
                if (appCompatCheckBox.isChecked()) {
                    ClipPreferences.getInstance(ExportResDialog.this.context).setDefaultExportResolution(true);
                }
                if (ExportResDialog.this.onContinueListener != null) {
                    ExportResDialog.this.onContinueListener.onClick();
                }
                ExportResDialog.this.dismiss();
            }
        });
        d.a(viewFindViewById2, FontUtils.getInstance().getAdobeCleanRegularTypefaceCollection());
        d.a(findViewById(R.id.selectTitle), FontUtils.getInstance().getAdobeCleanRegularTypefaceCollection());
    }

    public void setSelection() {
        switch (ClipPreferences.getInstance(this.context).getExportResolution()) {
            case 1080:
                this.radioGroup.check(R.id.fhdOption);
                break;
            default:
                this.radioGroup.check(R.id.hdOption);
                break;
        }
    }
}
