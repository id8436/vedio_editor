package com.behance.sdk.ui.fragments;

import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.IBehanceSDKUserCredentials;
import com.behance.sdk.R;
import com.behance.sdk.datamanager.FiltersDataManager;
import com.behance.sdk.datamanager.listeners.interfaces.IFiltersDataManagerListener;
import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import com.behance.sdk.google.listview.SectionalListView;
import com.behance.sdk.ui.adapters.BehanceSDKCreativeFieldFilterAdapter;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKCreativeFieldsFilterDialog extends DialogFragment implements IFiltersDataManagerListener {
    private static final String BUNDLE_KEY_SELECTABLE_FIELDS_COUNT = "BUNDLE_KEY_SELECTABLE_FIELDS_COUNT";
    private static final String BUNDLE_KEY_SELECTED_FIELDS = "BUNDLE_KEY_SELECTED_FIELDS";
    private static final int UNLIMITED = -1;
    private ProgressBar bsdkCreativeFieldsProgressBar;
    private LinearLayout bsdkCreativeFieldsRoot;
    private SectionalListView bsdkCreativeFieldsSectionalListView;
    private Callbacks callbacks;
    private int selectableFieldCount = -1;
    private List<BehanceSDKCreativeFieldDTO> selectedFields;

    public interface Callbacks {
        void onCreativeFieldsSelected(List<BehanceSDKCreativeFieldDTO> list);
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(2, R.style.BsdkFilterDialogTheme);
        FiltersDataManager.getInstance().addListener(this);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (bundle != null) {
            this.selectedFields = (List) bundle.getSerializable(BUNDLE_KEY_SELECTED_FIELDS);
            this.selectableFieldCount = bundle.getInt(BUNDLE_KEY_SELECTABLE_FIELDS_COUNT, -1);
        }
        if (this.selectedFields == null) {
            this.selectedFields = new ArrayList();
        }
        View viewInflate = layoutInflater.inflate(R.layout.bsdk_dialog_fragment_creative_field_filter, viewGroup, false);
        initView(viewInflate);
        FiltersDataManager filtersDataManager = FiltersDataManager.getInstance();
        if (!filtersDataManager.isLoadCreativeFieldsTaskInProgress()) {
            showProgressSpinner();
            filtersDataManager.loadCreativeFields(new IBehanceSDKUserCredentials() { // from class: com.behance.sdk.ui.fragments.BehanceSDKCreativeFieldsFilterDialog.1
                @Override // com.behance.sdk.IBehanceSDKUserCredentials
                public String getClientId() {
                    return BehanceSDK.getInstance().getClientId();
                }

                @Override // com.behance.sdk.IBehanceSDKUserCredentials
                public String getUserBehanceAccountId() {
                    return null;
                }

                @Override // com.behance.sdk.IBehanceSDKUserCredentials
                public String getUserAdobeAccountId() {
                    return null;
                }
            });
        }
        return viewInflate;
    }

    private void initView(View view) {
        this.bsdkCreativeFieldsRoot = (LinearLayout) view.findViewById(R.id.bsdk_creative_fields_root);
        this.bsdkCreativeFieldsSectionalListView = (SectionalListView) view.findViewById(R.id.bsdk_creative_fields_sectional_list_view);
        this.bsdkCreativeFieldsProgressBar = (ProgressBar) view.findViewById(R.id.bsdk_creative_fields_progress_bar);
    }

    private void showProgressSpinner() {
        this.bsdkCreativeFieldsProgressBar.setVisibility(0);
    }

    private void hideProgressSpinner() {
        this.bsdkCreativeFieldsProgressBar.setVisibility(8);
    }

    @Override // com.behance.sdk.datamanager.listeners.interfaces.IFiltersDataManagerListener
    public void onCreativeFieldsLoadingSuccess(List<BehanceSDKCreativeFieldDTO> list) {
        if (isAdded()) {
            populateListView(list);
        }
    }

    private void populateListView(List<BehanceSDKCreativeFieldDTO> list) {
        fixSelectedFields(list);
        hideProgressSpinner();
        this.bsdkCreativeFieldsSectionalListView.setPinnedHeaderView(LayoutInflater.from(getActivity()).inflate(R.layout.bsdk_adapter_publish_project_creative_field_item_header, (ViewGroup) this.bsdkCreativeFieldsSectionalListView, false));
        this.bsdkCreativeFieldsSectionalListView.setAdapter((ListAdapter) new BehanceSDKCreativeFieldFilterAdapter(getActivity(), list, this.selectedFields));
        this.bsdkCreativeFieldsSectionalListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKCreativeFieldsFilterDialog.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                BehanceSDKCreativeFieldsFilterDialog.this.handleCreativeFieldSelection(adapterView, i);
            }
        });
    }

    private void fixSelectedFields(List<BehanceSDKCreativeFieldDTO> list) {
        if (!this.selectedFields.isEmpty() && this.selectedFields.get(0).getId().isEmpty()) {
            int i = 0;
            while (i < this.selectedFields.size()) {
                BehanceSDKCreativeFieldDTO behanceSDKCreativeFieldDTO = this.selectedFields.get(i);
                Iterator<BehanceSDKCreativeFieldDTO> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    BehanceSDKCreativeFieldDTO next = it.next();
                    if (behanceSDKCreativeFieldDTO.getName().equalsIgnoreCase(next.getName())) {
                        behanceSDKCreativeFieldDTO.setCategory(next.getCategory());
                        behanceSDKCreativeFieldDTO.setId(next.getId());
                        break;
                    }
                }
                if (behanceSDKCreativeFieldDTO.getId().isEmpty()) {
                    this.selectedFields.remove(i);
                    i--;
                }
                i++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCreativeFieldSelection(AdapterView<?> adapterView, int i) {
        Object itemAtPosition = adapterView.getItemAtPosition(i);
        if (itemAtPosition instanceof BehanceSDKCreativeFieldDTO) {
            BehanceSDKCreativeFieldDTO behanceSDKCreativeFieldDTO = (BehanceSDKCreativeFieldDTO) itemAtPosition;
            if (this.selectedFields.contains(behanceSDKCreativeFieldDTO)) {
                this.selectedFields.remove(behanceSDKCreativeFieldDTO);
            } else if (this.selectableFieldCount < 0 || this.selectedFields.size() < this.selectableFieldCount) {
                this.selectedFields.add(behanceSDKCreativeFieldDTO);
                if (this.selectedFields.size() == this.selectableFieldCount) {
                    dismiss();
                }
            }
            this.bsdkCreativeFieldsSectionalListView.getAdapter().notifyDataSetChanged();
        }
    }

    @Override // com.behance.sdk.datamanager.listeners.interfaces.IFiltersDataManagerListener
    public void onCreativeFieldsLoadingFailure(Exception exc) {
        dismiss();
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }

    public void setSelectedCreativeField(List<BehanceSDKCreativeFieldDTO> list) {
        if (list != null) {
            this.selectedFields = new ArrayList();
            this.selectedFields.addAll(list);
        }
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.selectedFields != null) {
            bundle.putSerializable(BUNDLE_KEY_SELECTED_FIELDS, (Serializable) this.selectedFields);
        }
        bundle.putInt(BUNDLE_KEY_SELECTABLE_FIELDS_COUNT, this.selectableFieldCount);
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        if (getDialog() != null && getActivity() != null && getActivity().getResources().getBoolean(R.bool.bsdk_big_screen)) {
            getDialog().getWindow().setLayout(getActivity().getResources().getDimensionPixelSize(R.dimen.global_filter_dialog_width), -2);
        }
    }

    public void setSelectableFieldCount(int i) {
        this.selectableFieldCount = i;
    }

    @Override // android.support.v4.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.callbacks != null) {
            this.callbacks.onCreativeFieldsSelected(this.selectedFields);
        }
        super.onDismiss(dialogInterface);
    }
}
