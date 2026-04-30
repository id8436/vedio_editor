package com.behance.sdk.ui.fragments;

import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import com.b.a.h;
import com.behance.sdk.BehanceSDKHeadlessFragmentTags;
import com.behance.sdk.R;
import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment;
import com.behance.sdk.ui.components.BehanceSDKProjectEditorCheckBoxField;
import com.behance.sdk.ui.components.BehanceSDKProjectEditorSettingsField;
import com.behance.sdk.ui.customviews.BehanceSDKEditText;
import com.behance.sdk.ui.customviews.BehanceSDKTextView;
import com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingsAdvancedDialog;
import com.behance.sdk.ui.fragments.BehanceSDKCreativeFieldsFilterDialog;
import com.behance.sdk.util.BehanceSDKFragmentTags;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorSettingsFragment extends Fragment implements View.OnClickListener, BehanceSDKCreativeFieldsFilterDialog.Callbacks {
    private static final String BEHANCE_SDK_SETTINGS_ADVANCED_DIALOG_TAG = "BEHANCE_SDK_SETTINGS_ADVANCED_DIALOG_TAG";
    private static final String FRAGMENT_TAG_COVER_DISPLAY = "FRAGMENT_TAG_COVER_DISPLAY";
    private BehanceSDKProjectEditorCheckBoxField bsdkProjectEditorSettingsAdultContent;
    private BehanceSDKTextView bsdkProjectEditorSettingsAdvanced;
    private ImageView bsdkProjectEditorSettingsCover;
    private BehanceSDKProjectEditorSettingsField bsdkProjectEditorSettingsCreativeFields;
    private ScrollView bsdkProjectEditorSettingsRoot;
    private BehanceSDKEditText bsdkProjectEditorSettingsTags;
    private BehanceSDKEditText bsdkProjectEditorSettingsTitle;
    private RelativeLayout bsdkProjectEditorSettingsTitleContainer;
    private BehanceSDKProjectEditorHeadlessFragment headlessFragment;

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.bsdk_fragment_project_editor_settings, viewGroup, false);
        initView(viewInflate);
        this.headlessFragment = (BehanceSDKProjectEditorHeadlessFragment) getActivity().getSupportFragmentManager().findFragmentByTag(BehanceSDKHeadlessFragmentTags.FRAGMENT_TAG_PROJECT_EDITOR_HEADLESS_FRAGMENT);
        this.bsdkProjectEditorSettingsTitle.setHint("* " + getString(R.string.bsdk_project_editor_settings_hint_title));
        this.bsdkProjectEditorSettingsCreativeFields.setLabelText("* " + getString(R.string.bsdk_project_editor_settings_field_creative_fields));
        this.bsdkProjectEditorSettingsTitle.setText(this.headlessFragment.getTitle());
        this.bsdkProjectEditorSettingsTags.setText(this.headlessFragment.getTags());
        this.bsdkProjectEditorSettingsAdultContent.setChecked(this.headlessFragment.isAdultContent());
        this.bsdkProjectEditorSettingsAdvanced.setOnClickListener(this);
        this.bsdkProjectEditorSettingsCreativeFields.setOnClickListener(this);
        this.bsdkProjectEditorSettingsCover.setOnClickListener(this);
        this.bsdkProjectEditorSettingsCreativeFields.setDescriptionText(formatFields(this.headlessFragment.getSelectedFields()));
        this.bsdkProjectEditorSettingsAdultContent.setOnCheckChangedListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorSettingsFragment.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                BehanceSDKProjectEditorSettingsFragment.this.headlessFragment.setAdultContent(z);
            }
        });
        this.bsdkProjectEditorSettingsTitle.addTextChangedListener(new TextWatcher() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorSettingsFragment.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                BehanceSDKProjectEditorSettingsFragment.this.headlessFragment.setTitle(charSequence.toString());
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }
        });
        this.bsdkProjectEditorSettingsTags.addTextChangedListener(new TextWatcher() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorSettingsFragment.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                BehanceSDKProjectEditorSettingsFragment.this.headlessFragment.setTags(charSequence.toString());
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }
        });
        if (this.headlessFragment.isCoverChosen()) {
            this.bsdkProjectEditorSettingsCover.setImageBitmap(BitmapFactory.decodeFile(this.headlessFragment.getCoverPath(), new BitmapFactory.Options()));
        } else if (this.headlessFragment.getDraftCover() != null) {
            h.a(getActivity()).a(Uri.parse(this.headlessFragment.getDraftCover())).a(this.bsdkProjectEditorSettingsCover);
        }
        this.headlessFragment.setCropAndSaveCallbacks(new BehanceSDKProjectEditorHeadlessFragment.CropAndSaveCallbacks() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorSettingsFragment.4
            @Override // com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment.CropAndSaveCallbacks
            public void onCropAndSaveComplete() {
                if (BehanceSDKProjectEditorSettingsFragment.this.getActivity() != null) {
                    BehanceSDKProjectEditorSettingsFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorSettingsFragment.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (BehanceSDKProjectEditorSettingsFragment.this.headlessFragment.isCoverChosen()) {
                                BehanceSDKProjectEditorSettingsFragment.this.bsdkProjectEditorSettingsCover.setImageBitmap(BitmapFactory.decodeFile(BehanceSDKProjectEditorSettingsFragment.this.headlessFragment.getCoverPath(), new BitmapFactory.Options()));
                            }
                        }
                    });
                }
            }
        });
        return viewInflate;
    }

    private void initView(View view) {
        this.bsdkProjectEditorSettingsRoot = (ScrollView) view.findViewById(R.id.bsdk_project_editor_settings_root);
        this.bsdkProjectEditorSettingsTitleContainer = (RelativeLayout) view.findViewById(R.id.bsdk_project_editor_settings_title_container);
        this.bsdkProjectEditorSettingsCover = (ImageView) view.findViewById(R.id.bsdk_project_editor_settings_cover);
        this.bsdkProjectEditorSettingsTitle = (BehanceSDKEditText) view.findViewById(R.id.bsdk_project_editor_settings_title);
        this.bsdkProjectEditorSettingsTags = (BehanceSDKEditText) view.findViewById(R.id.bsdk_project_editor_settings_tags);
        this.bsdkProjectEditorSettingsCreativeFields = (BehanceSDKProjectEditorSettingsField) view.findViewById(R.id.bsdk_project_editor_settings_creative_fields);
        this.bsdkProjectEditorSettingsAdultContent = (BehanceSDKProjectEditorCheckBoxField) view.findViewById(R.id.bsdk_project_editor_settings_adult_content);
        this.bsdkProjectEditorSettingsAdvanced = (BehanceSDKTextView) view.findViewById(R.id.bsdk_project_editor_settings_advanced);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == this.bsdkProjectEditorSettingsAdvanced.getId()) {
            new BehanceSDKProjectEditorSettingsAdvancedDialog().show(getFragmentManager(), BEHANCE_SDK_SETTINGS_ADVANCED_DIALOG_TAG);
            return;
        }
        if (view.getId() == this.bsdkProjectEditorSettingsCover.getId()) {
            BehanceSDKImageDisplayDialogFragment behanceSDKImageDisplayDialogFragment = BehanceSDKImageDisplayDialogFragment.getInstance(new String[]{this.headlessFragment.isCoverChosen() ? this.headlessFragment.getCoverPath() : this.headlessFragment.getDraftCover()}, 0);
            FragmentManager supportFragmentManager = getActivity().getSupportFragmentManager();
            FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
            Fragment fragmentFindFragmentByTag = supportFragmentManager.findFragmentByTag(FRAGMENT_TAG_COVER_DISPLAY);
            if (fragmentFindFragmentByTag != null) {
                fragmentTransactionBeginTransaction.remove(fragmentFindFragmentByTag);
            }
            fragmentTransactionBeginTransaction.addToBackStack(null);
            behanceSDKImageDisplayDialogFragment.show(fragmentTransactionBeginTransaction, FRAGMENT_TAG_COVER_DISPLAY);
            return;
        }
        if (view.getId() == this.bsdkProjectEditorSettingsCreativeFields.getId()) {
            launchCreativeFieldsDialog();
        }
    }

    private void launchCreativeFieldsDialog() {
        BehanceSDKCreativeFieldsFilterDialog behanceSDKCreativeFieldsFilterDialog = new BehanceSDKCreativeFieldsFilterDialog();
        behanceSDKCreativeFieldsFilterDialog.setSelectableFieldCount(3);
        behanceSDKCreativeFieldsFilterDialog.setSelectedCreativeField(this.headlessFragment.getSelectedFields());
        behanceSDKCreativeFieldsFilterDialog.setCallbacks(this);
        behanceSDKCreativeFieldsFilterDialog.show(getActivity().getSupportFragmentManager(), BehanceSDKFragmentTags.FRAGMENT_TAG_CREATIVE_FIELDS_FILTER_DIALOG);
    }

    private String formatFields(List<BehanceSDKCreativeFieldDTO> list) {
        if (list == null || list.isEmpty()) {
            return "";
        }
        String str = "";
        Iterator<BehanceSDKCreativeFieldDTO> it = list.iterator();
        while (true) {
            String str2 = str;
            if (it.hasNext()) {
                str = str2 + it.next().getName() + ", ";
            } else {
                return str2.substring(0, str2.length() - 2);
            }
        }
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKCreativeFieldsFilterDialog.Callbacks
    public void onCreativeFieldsSelected(List<BehanceSDKCreativeFieldDTO> list) {
        this.bsdkProjectEditorSettingsCreativeFields.setDescriptionText(formatFields(list));
        this.headlessFragment.setSelectedFields(list);
    }
}
