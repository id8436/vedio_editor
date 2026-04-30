package com.behance.sdk.ui.fragments;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import com.behance.sdk.R;
import com.behance.sdk.datamanager.FiltersDataManager;
import com.behance.sdk.datamanager.listeners.interfaces.IFiltersDataManagerListener;
import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import com.behance.sdk.google.listview.SectionalListView;
import com.behance.sdk.managers.BehanceSDKProjectPublishWFManager;
import com.behance.sdk.ui.adapters.BehanceSDKCreativeFieldFilterAdapter;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BehanceSDKCreativeFieldsFilterDialogOld extends DialogFragment implements IFiltersDataManagerListener {
    private static final String BUNDLE_KEY_FIELD_ID = "BUNDLE_KEY_FIELD_ID";
    private static final String BUNDLE_KEY_SELECTABLE_FIELD_COUNT = "BUNDLE_KEY_SELECTABLE_FIELD_COUNT";
    private static final int UNLIMITED = -1;
    private Callbacks callbacks;
    private Context context;
    private View progressSpinner;
    private View rootView;
    private BehanceSDKCreativeFieldFilterAdapter sectionalAdapter;
    private int selectable_field_count = -1;
    private List<BehanceSDKCreativeFieldDTO> selectedFields;

    /* JADX INFO: loaded from: classes2.dex */
    public interface Callbacks {
        void onCreativeFieldsSelected(List<BehanceSDKCreativeFieldDTO> list);
    }

    public BehanceSDKCreativeFieldsFilterDialogOld() {
        FiltersDataManager.getInstance().addListener(this);
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(2, R.style.BsdkFilterDialogTheme);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (bundle != null) {
            this.selectedFields = (List) bundle.getSerializable(BUNDLE_KEY_FIELD_ID);
            this.selectable_field_count = bundle.getInt(BUNDLE_KEY_SELECTABLE_FIELD_COUNT, -1);
        }
        if (this.selectedFields == null) {
            this.selectedFields = new ArrayList();
        }
        this.rootView = layoutInflater.inflate(R.layout.bsdk_dialog_fragment_creative_field_filter_old, viewGroup, false);
        this.rootView.findViewById(R.id.bsdkPublishProjectcreativeFieldFilterDialogHeaderLayoutOld).setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKCreativeFieldsFilterDialogOld.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKCreativeFieldsFilterDialogOld.this.dismiss();
            }
        });
        this.progressSpinner = this.rootView.findViewById(R.id.bsdkPublishProjectcreativeFieldFilterDialogProgressSpinnerOld);
        FiltersDataManager filtersDataManager = FiltersDataManager.getInstance();
        if (!filtersDataManager.isLoadCreativeFieldsTaskInProgress()) {
            showProgressSpinner();
            filtersDataManager.loadCreativeFields(BehanceSDKProjectPublishWFManager.getInstance().getUserCredentials());
        }
        this.rootView.findViewById(R.id.bsdkPublishProjectcreativeFieldFilterDialogCloseDialogBtnBottomOld).setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKCreativeFieldsFilterDialogOld.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKCreativeFieldsFilterDialogOld.this.notifyListenersAndCloseDialog();
                BehanceSDKCreativeFieldsFilterDialogOld.this.dismiss();
            }
        });
        return this.rootView;
    }

    private void showProgressSpinner() {
        this.progressSpinner.setVisibility(0);
    }

    private void hideProgressSpinner() {
        this.progressSpinner.setVisibility(4);
    }

    @Override // android.support.v4.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.context = activity;
    }

    @Override // com.behance.sdk.datamanager.listeners.interfaces.IFiltersDataManagerListener
    public void onCreativeFieldsLoadingSuccess(List<BehanceSDKCreativeFieldDTO> list) {
        populateListView(list, LayoutInflater.from(this.context));
    }

    private void populateListView(List<BehanceSDKCreativeFieldDTO> list, LayoutInflater layoutInflater) {
        if (this.rootView != null) {
            hideProgressSpinner();
            SectionalListView sectionalListView = (SectionalListView) this.rootView.findViewById(R.id.bsdkPublishProjectcreativeFieldFilterDialogSectionalListViewOld);
            sectionalListView.setPinnedHeaderView(layoutInflater.inflate(R.layout.bsdk_adapter_publish_project_creative_field_item_header, (ViewGroup) sectionalListView, false));
            this.sectionalAdapter = new BehanceSDKCreativeFieldFilterAdapter(this.context, list, this.selectedFields);
            sectionalListView.setAdapter((ListAdapter) this.sectionalAdapter);
            sectionalListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKCreativeFieldsFilterDialogOld.3
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    BehanceSDKCreativeFieldsFilterDialogOld.this.handleCreativeFieldSelection(adapterView, i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCreativeFieldSelection(AdapterView<?> adapterView, int i) {
        Object itemAtPosition = adapterView.getItemAtPosition(i);
        if (itemAtPosition instanceof BehanceSDKCreativeFieldDTO) {
            BehanceSDKCreativeFieldDTO behanceSDKCreativeFieldDTO = (BehanceSDKCreativeFieldDTO) itemAtPosition;
            if (this.selectedFields.contains(behanceSDKCreativeFieldDTO)) {
                this.selectedFields.remove(behanceSDKCreativeFieldDTO);
            } else if (this.selectable_field_count < 0 || this.selectedFields.size() < this.selectable_field_count) {
                this.selectedFields.add(behanceSDKCreativeFieldDTO);
                if (this.selectedFields.size() == this.selectable_field_count) {
                    notifyListenersAndCloseDialog();
                }
            }
            this.sectionalAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.behance.sdk.datamanager.listeners.interfaces.IFiltersDataManagerListener
    public void onCreativeFieldsLoadingFailure(Exception exc) {
    }

    public Callbacks getCallbacks() {
        return this.callbacks;
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyListenersAndCloseDialog() {
        if (this.callbacks != null) {
            this.callbacks.onCreativeFieldsSelected(this.selectedFields);
        }
        getDialog().dismiss();
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
            bundle.putSerializable(BUNDLE_KEY_FIELD_ID, (Serializable) this.selectedFields);
        }
        bundle.putInt(BUNDLE_KEY_SELECTABLE_FIELD_COUNT, this.selectable_field_count);
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        if (getDialog() != null && getActivity() != null) {
            if (getActivity().getResources().getBoolean(R.bool.bsdk_big_screen)) {
                getDialog().getWindow().setLayout(getActivity().getResources().getDimensionPixelSize(R.dimen.global_filter_dialog_width), getActivity().getResources().getDimensionPixelSize(R.dimen.global_filter_dialog_height));
            } else {
                int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.bsdk_creative_field_dialog_vertical_padding);
                int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.bsdk_creative_field_dialog_horizontal_padding);
                DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
                int i = displayMetrics.heightPixels;
                getDialog().getWindow().setLayout(displayMetrics.widthPixels - dimensionPixelOffset2, i - dimensionPixelOffset);
            }
        }
    }

    public void setSelectableFieldCount(int i) {
        this.selectable_field_count = i;
    }
}
