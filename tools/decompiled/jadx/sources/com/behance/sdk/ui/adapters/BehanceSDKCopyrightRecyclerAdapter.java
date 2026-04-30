package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.behance.sdk.R;
import com.behance.sdk.enums.BehanceSDKCopyrightOption;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectEditorSettingsItemViewHolder;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKCopyrightRecyclerAdapter extends RecyclerView.Adapter<BehanceSDKProjectEditorSettingsItemViewHolder> {
    private CopyrightCallback callback;
    private Context context;
    private BehanceSDKCopyrightOption selectedLicense;

    public interface CopyrightCallback {
        void onHelpSelected();

        void onItemSelected(BehanceSDKCopyrightOption behanceSDKCopyrightOption);
    }

    public BehanceSDKCopyrightRecyclerAdapter(Context context, BehanceSDKCopyrightOption behanceSDKCopyrightOption, CopyrightCallback copyrightCallback) {
        this.context = context;
        this.selectedLicense = behanceSDKCopyrightOption;
        this.callback = copyrightCallback;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public BehanceSDKProjectEditorSettingsItemViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new BehanceSDKProjectEditorSettingsItemViewHolder(LayoutInflater.from(this.context).inflate(R.layout.bsdk_card_project_editor_settings_item, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(BehanceSDKProjectEditorSettingsItemViewHolder behanceSDKProjectEditorSettingsItemViewHolder, int i) {
        if (i == getItemCount() - 1) {
            behanceSDKProjectEditorSettingsItemViewHolder.bsdkCardProjectEditorSettingText.setText(R.string.bsdk_project_editor_copyright_helper_option);
            behanceSDKProjectEditorSettingsItemViewHolder.bsdkCardProjectEditorSettingSelected.setVisibility(8);
            behanceSDKProjectEditorSettingsItemViewHolder.bsdkCardProjectEditorSettingContainer.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKCopyrightRecyclerAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BehanceSDKCopyrightRecyclerAdapter.this.callback.onHelpSelected();
                }
            });
        } else {
            final BehanceSDKCopyrightOption behanceSDKCopyrightOption = BehanceSDKCopyrightOption.values()[i];
            behanceSDKProjectEditorSettingsItemViewHolder.bsdkCardProjectEditorSettingText.setText(behanceSDKCopyrightOption.getDescription());
            behanceSDKProjectEditorSettingsItemViewHolder.bsdkCardProjectEditorSettingSelected.setVisibility(behanceSDKCopyrightOption == this.selectedLicense ? 0 : 8);
            behanceSDKProjectEditorSettingsItemViewHolder.bsdkCardProjectEditorSettingContainer.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKCopyrightRecyclerAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BehanceSDKCopyrightRecyclerAdapter.this.callback.onItemSelected(behanceSDKCopyrightOption);
                }
            });
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return BehanceSDKCopyrightOption.values().length + 1;
    }
}
