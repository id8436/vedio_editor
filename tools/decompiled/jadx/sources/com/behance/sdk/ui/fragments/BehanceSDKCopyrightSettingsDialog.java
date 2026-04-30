package com.behance.sdk.ui.fragments;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import com.behance.sdk.R;
import com.behance.sdk.enums.BehanceSDKCopyrightOption;
import com.behance.sdk.google.listview.SectionalListView;
import com.behance.sdk.ui.adapters.BehanceSDKCopyrightSettingsAdapter;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKCopyrightSettingsDialog extends DialogFragment {
    private static final String BUNDLE_KEY_COPYRIGHT_ID = "BUNDLE_KEY_COPYRIGHT_ID";
    private Callbacks callbacks;
    private Context context;
    private View rootView;
    private BehanceSDKCopyrightSettingsAdapter sectionalAdapter;
    private BehanceSDKCopyrightOption selectedCopyrightSetting;

    public interface Callbacks {
        void onCopyrightSettingSelected(BehanceSDKCopyrightOption behanceSDKCopyrightOption);
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(2, R.style.BsdkFilterDialogTheme);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (bundle != null) {
            this.selectedCopyrightSetting = BehanceSDKCopyrightOption.getCopyrightOptionFromValue(bundle.getString(BUNDLE_KEY_COPYRIGHT_ID, ""));
            if (this.selectedCopyrightSetting == null) {
                this.selectedCopyrightSetting = BehanceSDKCopyrightOption.getDefaultValue();
            }
        }
        this.rootView = layoutInflater.inflate(R.layout.bsdk_dialog_fragment_copyright_settings, viewGroup, false);
        this.rootView.findViewById(R.id.bsdkPublishProjectCopyrightSettingsDialogHeaderLayout).setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKCopyrightSettingsDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKCopyrightSettingsDialog.this.dismiss();
            }
        });
        SectionalListView sectionalListView = (SectionalListView) this.rootView.findViewById(R.id.bsdkPublishProjectCopyrightSettingsDialogSectionalListView);
        sectionalListView.setPinnedHeaderView(layoutInflater.inflate(R.layout.bsdk_adapter_publish_project_copyright_settings_item_header, (ViewGroup) sectionalListView, false));
        this.sectionalAdapter = new BehanceSDKCopyrightSettingsAdapter(this.context, this.selectedCopyrightSetting);
        sectionalListView.setAdapter((ListAdapter) this.sectionalAdapter);
        sectionalListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKCopyrightSettingsDialog.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                BehanceSDKCopyrightSettingsDialog.this.handleCopyrightSettingSelection(adapterView, i);
            }
        });
        return this.rootView;
    }

    @Override // android.support.v4.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.context = activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCopyrightSettingSelection(AdapterView<?> adapterView, int i) {
        this.selectedCopyrightSetting = (BehanceSDKCopyrightOption) adapterView.getItemAtPosition(i);
        this.sectionalAdapter.setSelectedCopyRight(this.selectedCopyrightSetting);
        this.sectionalAdapter.notifyDataSetChanged();
        notifyListenersAndCloseDialog();
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }

    private void notifyListenersAndCloseDialog() {
        if (this.callbacks != null) {
            this.callbacks.onCopyrightSettingSelected(this.selectedCopyrightSetting);
        }
        getDialog().dismiss();
    }

    public void setSelectedCopyright(BehanceSDKCopyrightOption behanceSDKCopyrightOption) {
        this.selectedCopyrightSetting = behanceSDKCopyrightOption;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.selectedCopyrightSetting != null) {
            bundle.putString(BUNDLE_KEY_COPYRIGHT_ID, this.selectedCopyrightSetting.getValue());
        }
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        if (getDialog() != null && getActivity() != null && getActivity().getResources().getBoolean(R.bool.bsdk_big_screen)) {
            getDialog().getWindow().setLayout(getActivity().getResources().getDimensionPixelSize(R.dimen.global_filter_dialog_width), getActivity().getResources().getDimensionPixelSize(R.dimen.global_filter_dialog_height));
        }
    }
}
