package com.behance.sdk.ui.dialogs;

import android.content.DialogInterface;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.design.widget.BottomSheetBehavior;
import android.support.design.widget.BottomSheetDialog;
import android.support.v4.app.DialogFragment;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.EditText;
import com.behance.sdk.BehanceSDKHeadlessFragmentTags;
import com.behance.sdk.R;
import com.behance.sdk.dto.BehanceSDKTagDTO;
import com.behance.sdk.dto.search.BehanceSDKTeamDTO;
import com.behance.sdk.dto.search.BehanceSDKUserDTO;
import com.behance.sdk.enums.BehanceSDKCopyrightOption;
import com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment;
import com.behance.sdk.ui.adapters.BehanceSDKCopyrightRecyclerAdapter;
import com.behance.sdk.ui.components.BehanceSDKProjectEditorCheckBoxField;
import com.behance.sdk.ui.components.BehanceSDKProjectEditorSettingsField;
import com.behance.sdk.ui.dialogs.BehanceSDKCopyrightHelperDialog;
import com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingSearchAbstractDialog;
import com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorTagSelectorDialog;
import com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorTeamsSelectorDialog;
import com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorUsersSelectorDialog;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorSettingsAdvancedDialog extends DialogFragment implements View.OnClickListener, BehanceSDKCopyrightRecyclerAdapter.CopyrightCallback, BehanceSDKCopyrightHelperDialog.CopyrightCallback {
    private static final String BEHANCE_SDK_COPYRIGHT_HELPER_DIALOG_TAG = "BEHANCE_SDK_COPYRIGHT_HELPER_DIALOG_TAG";
    private static final String BEHANCE_SDK_SETTING_DETAIL_DIALOG_TAG = "BEHANCE_SDK_SETTING_DETAIL_DIALOG_TAG";
    private BehanceSDKProjectEditorSettingsField bsdkProjectEditorSettingsCoOwners;
    private BehanceSDKProjectEditorSettingsField bsdkProjectEditorSettingsCompanies;
    private BehanceSDKProjectEditorSettingsField bsdkProjectEditorSettingsCopyright;
    private BehanceSDKProjectEditorSettingsField bsdkProjectEditorSettingsCredits;
    private BehanceSDKProjectEditorSettingsField bsdkProjectEditorSettingsDescription;
    private BehanceSDKProjectEditorCheckBoxField bsdkProjectEditorSettingsDisableComments;
    private BehanceSDKProjectEditorSettingsField bsdkProjectEditorSettingsTeams;
    private BehanceSDKProjectEditorSettingsField bsdkProjectEditorSettingsTools;
    private BottomSheetDialog copyrightDialog;
    private BehanceSDKProjectEditorHeadlessFragment headlessFragment;
    private Toolbar projectEditorSettingsAdvancedToolbar;

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setStyle(2, R.style.BsdkDialogEditorAdvanced);
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.bsdk_fragment_project_editor_settings_advanced, viewGroup, false);
        initView(viewInflate);
        this.headlessFragment = (BehanceSDKProjectEditorHeadlessFragment) getActivity().getSupportFragmentManager().findFragmentByTag(BehanceSDKHeadlessFragmentTags.FRAGMENT_TAG_PROJECT_EDITOR_HEADLESS_FRAGMENT);
        this.projectEditorSettingsAdvancedToolbar.setNavigationIcon(R.drawable.bsdk_icon_back);
        this.projectEditorSettingsAdvancedToolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingsAdvancedDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKProjectEditorSettingsAdvancedDialog.this.dismissAllowingStateLoss();
            }
        });
        this.bsdkProjectEditorSettingsDisableComments.setChecked(this.headlessFragment.isCommentsDisabled());
        this.bsdkProjectEditorSettingsDescription.setDescriptionText(this.headlessFragment.getDescription());
        this.bsdkProjectEditorSettingsCopyright.setDescriptionText(this.headlessFragment.getCopyrightOption().getDescription());
        this.bsdkProjectEditorSettingsTools.setDescriptionText(formatDataList(this.headlessFragment.getTools()));
        this.bsdkProjectEditorSettingsCompanies.setDescriptionText(formatDataList(this.headlessFragment.getCompaniesSchools()));
        this.bsdkProjectEditorSettingsCoOwners.setDescriptionText(formatDataList(this.headlessFragment.getCoOwners()));
        this.bsdkProjectEditorSettingsCredits.setDescriptionText(formatDataList(this.headlessFragment.getCredits()));
        this.bsdkProjectEditorSettingsDescription.setOnClickListener(this);
        this.bsdkProjectEditorSettingsCopyright.setOnClickListener(this);
        this.bsdkProjectEditorSettingsTools.setOnClickListener(this);
        this.bsdkProjectEditorSettingsCoOwners.setOnClickListener(this);
        this.bsdkProjectEditorSettingsCompanies.setOnClickListener(this);
        this.bsdkProjectEditorSettingsTeams.setOnClickListener(this);
        this.bsdkProjectEditorSettingsCredits.setOnClickListener(this);
        this.bsdkProjectEditorSettingsDisableComments.setOnCheckChangedListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingsAdvancedDialog.2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                BehanceSDKProjectEditorSettingsAdvancedDialog.this.headlessFragment.setCommentsDisabled(z);
            }
        });
        return viewInflate;
    }

    private void initView(View view) {
        this.projectEditorSettingsAdvancedToolbar = (Toolbar) view.findViewById(R.id.project_editor_settings_advanced_toolbar);
        this.bsdkProjectEditorSettingsDisableComments = (BehanceSDKProjectEditorCheckBoxField) view.findViewById(R.id.bsdk_project_editor_settings_disable_comments);
        this.bsdkProjectEditorSettingsDescription = (BehanceSDKProjectEditorSettingsField) view.findViewById(R.id.bsdk_project_editor_settings_description);
        this.bsdkProjectEditorSettingsCopyright = (BehanceSDKProjectEditorSettingsField) view.findViewById(R.id.bsdk_project_editor_settings_copyright);
        this.bsdkProjectEditorSettingsTools = (BehanceSDKProjectEditorSettingsField) view.findViewById(R.id.bsdk_project_editor_settings_tools);
        this.bsdkProjectEditorSettingsCompanies = (BehanceSDKProjectEditorSettingsField) view.findViewById(R.id.bsdk_project_editor_settings_companies);
        this.bsdkProjectEditorSettingsCoOwners = (BehanceSDKProjectEditorSettingsField) view.findViewById(R.id.bsdk_project_editor_settings_co_owners);
        this.bsdkProjectEditorSettingsTeams = (BehanceSDKProjectEditorSettingsField) view.findViewById(R.id.bsdk_project_editor_settings_teams);
        this.bsdkProjectEditorSettingsCredits = (BehanceSDKProjectEditorSettingsField) view.findViewById(R.id.bsdk_project_editor_settings_credits);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.bsdk_project_editor_settings_copyright) {
            launchCopyrightDialog();
            return;
        }
        if (view.getId() == R.id.bsdk_project_editor_settings_tools) {
            launchToolsSelectionDialog();
            return;
        }
        if (view.getId() == R.id.bsdk_project_editor_settings_companies) {
            launchCompaniesSchoolsSelectionDialog();
            return;
        }
        if (view.getId() == R.id.bsdk_project_editor_settings_teams) {
            launchTeamsSelectionDialog();
            return;
        }
        if (view.getId() == R.id.bsdk_project_editor_settings_co_owners) {
            launchCoOwnersSelectionDialog();
        } else if (view.getId() == R.id.bsdk_project_editor_settings_credits) {
            launchCreditsSelectionDialog();
        } else if (view.getId() == R.id.bsdk_project_editor_settings_description) {
            launchDescriptionInputDialog();
        }
    }

    private void launchDescriptionInputDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(R.string.bsdk_project_editor_settings_field_project_description);
        View viewInflate = LayoutInflater.from(getActivity()).inflate(R.layout.bsdk_project_editor_dialog_text_input, (ViewGroup) null, false);
        builder.setView(viewInflate);
        final EditText editText = (EditText) viewInflate.findViewById(R.id.project_editor_dialog_text_input_field);
        editText.setText(this.headlessFragment.getDescription());
        builder.setPositiveButton(R.string.bsdk_project_editor_dialog_close_save, new DialogInterface.OnClickListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingsAdvancedDialog.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                BehanceSDKProjectEditorSettingsAdvancedDialog.this.headlessFragment.setDescription(editText.getText().toString());
                BehanceSDKProjectEditorSettingsAdvancedDialog.this.bsdkProjectEditorSettingsDescription.setDescriptionText(BehanceSDKProjectEditorSettingsAdvancedDialog.this.headlessFragment.getDescription());
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.getWindow().clearFlags(131080);
        alertDialogCreate.getWindow().setSoftInputMode(4);
        alertDialogCreate.show();
    }

    private void launchToolsSelectionDialog() {
        BehanceSDKProjectEditorTagSelectorDialog behanceSDKProjectEditorTagSelectorDialog = new BehanceSDKProjectEditorTagSelectorDialog();
        behanceSDKProjectEditorTagSelectorDialog.setCallbacks(new BehanceSDKProjectEditorTagSelectorDialog.Callbacks() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingsAdvancedDialog.4
            @Override // com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorTagSelectorDialog.Callbacks
            public void onTagsChangedComplete(List<BehanceSDKTagDTO> list) {
                BehanceSDKProjectEditorSettingsAdvancedDialog.this.headlessFragment.setTools(list);
                BehanceSDKProjectEditorSettingsAdvancedDialog.this.bsdkProjectEditorSettingsTools.setDescriptionText(BehanceSDKProjectEditorSettingsAdvancedDialog.this.formatDataList(BehanceSDKProjectEditorSettingsAdvancedDialog.this.headlessFragment.getTools()));
            }
        });
        behanceSDKProjectEditorTagSelectorDialog.setTags(this.headlessFragment.getTools());
        behanceSDKProjectEditorTagSelectorDialog.setType(BehanceSDKProjectEditorSettingSearchAbstractDialog.Type.TOOLS);
        behanceSDKProjectEditorTagSelectorDialog.show(getFragmentManager(), BEHANCE_SDK_SETTING_DETAIL_DIALOG_TAG);
    }

    private void launchCompaniesSchoolsSelectionDialog() {
        BehanceSDKProjectEditorTagSelectorDialog behanceSDKProjectEditorTagSelectorDialog = new BehanceSDKProjectEditorTagSelectorDialog();
        behanceSDKProjectEditorTagSelectorDialog.setCallbacks(new BehanceSDKProjectEditorTagSelectorDialog.Callbacks() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingsAdvancedDialog.5
            @Override // com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorTagSelectorDialog.Callbacks
            public void onTagsChangedComplete(List<BehanceSDKTagDTO> list) {
                BehanceSDKProjectEditorSettingsAdvancedDialog.this.headlessFragment.setCompaniesSchools(list);
                BehanceSDKProjectEditorSettingsAdvancedDialog.this.bsdkProjectEditorSettingsCompanies.setDescriptionText(BehanceSDKProjectEditorSettingsAdvancedDialog.this.formatDataList(BehanceSDKProjectEditorSettingsAdvancedDialog.this.headlessFragment.getCompaniesSchools()));
            }
        });
        behanceSDKProjectEditorTagSelectorDialog.setTags(this.headlessFragment.getCompaniesSchools());
        behanceSDKProjectEditorTagSelectorDialog.setType(BehanceSDKProjectEditorSettingSearchAbstractDialog.Type.COMPANIES);
        behanceSDKProjectEditorTagSelectorDialog.show(getFragmentManager(), BEHANCE_SDK_SETTING_DETAIL_DIALOG_TAG);
    }

    private void launchCoOwnersSelectionDialog() {
        BehanceSDKProjectEditorUsersSelectorDialog behanceSDKProjectEditorUsersSelectorDialog = new BehanceSDKProjectEditorUsersSelectorDialog();
        behanceSDKProjectEditorUsersSelectorDialog.setCallbacks(new BehanceSDKProjectEditorUsersSelectorDialog.Callbacks() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingsAdvancedDialog.6
            @Override // com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorUsersSelectorDialog.Callbacks
            public void onUsersChangeComplete(List<BehanceSDKUserDTO> list) {
                BehanceSDKProjectEditorSettingsAdvancedDialog.this.headlessFragment.setCoOwners(list);
                BehanceSDKProjectEditorSettingsAdvancedDialog.this.bsdkProjectEditorSettingsCoOwners.setDescriptionText(BehanceSDKProjectEditorSettingsAdvancedDialog.this.formatDataList(BehanceSDKProjectEditorSettingsAdvancedDialog.this.headlessFragment.getCoOwners()));
            }
        });
        behanceSDKProjectEditorUsersSelectorDialog.setUsers(this.headlessFragment.getCoOwners());
        behanceSDKProjectEditorUsersSelectorDialog.setType(BehanceSDKProjectEditorSettingSearchAbstractDialog.Type.CO_OWNERS);
        behanceSDKProjectEditorUsersSelectorDialog.show(getFragmentManager(), BEHANCE_SDK_SETTING_DETAIL_DIALOG_TAG);
    }

    private void launchTeamsSelectionDialog() {
        BehanceSDKProjectEditorTeamsSelectorDialog behanceSDKProjectEditorTeamsSelectorDialog = new BehanceSDKProjectEditorTeamsSelectorDialog();
        behanceSDKProjectEditorTeamsSelectorDialog.setCallbacks(new BehanceSDKProjectEditorTeamsSelectorDialog.Callbacks() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingsAdvancedDialog.7
            @Override // com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorTeamsSelectorDialog.Callbacks
            public void onTeamsChangeComplete(List<BehanceSDKTeamDTO> list) {
                BehanceSDKProjectEditorSettingsAdvancedDialog.this.headlessFragment.setTeams(list);
                BehanceSDKProjectEditorSettingsAdvancedDialog.this.bsdkProjectEditorSettingsTeams.setDescriptionText(BehanceSDKProjectEditorSettingsAdvancedDialog.this.formatDataList(BehanceSDKProjectEditorSettingsAdvancedDialog.this.headlessFragment.getTeams()));
            }
        });
        behanceSDKProjectEditorTeamsSelectorDialog.setTeams(this.headlessFragment.getTeams());
        behanceSDKProjectEditorTeamsSelectorDialog.setType(BehanceSDKProjectEditorSettingSearchAbstractDialog.Type.TEAMS);
        behanceSDKProjectEditorTeamsSelectorDialog.show(getFragmentManager(), BEHANCE_SDK_SETTING_DETAIL_DIALOG_TAG);
    }

    private void launchCreditsSelectionDialog() {
        BehanceSDKProjectEditorUsersSelectorDialog behanceSDKProjectEditorUsersSelectorDialog = new BehanceSDKProjectEditorUsersSelectorDialog();
        behanceSDKProjectEditorUsersSelectorDialog.setCallbacks(new BehanceSDKProjectEditorUsersSelectorDialog.Callbacks() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorSettingsAdvancedDialog.8
            @Override // com.behance.sdk.ui.dialogs.BehanceSDKProjectEditorUsersSelectorDialog.Callbacks
            public void onUsersChangeComplete(List<BehanceSDKUserDTO> list) {
                BehanceSDKProjectEditorSettingsAdvancedDialog.this.headlessFragment.setCredits(list);
                BehanceSDKProjectEditorSettingsAdvancedDialog.this.bsdkProjectEditorSettingsCredits.setDescriptionText(BehanceSDKProjectEditorSettingsAdvancedDialog.this.formatDataList(BehanceSDKProjectEditorSettingsAdvancedDialog.this.headlessFragment.getCredits()));
            }
        });
        behanceSDKProjectEditorUsersSelectorDialog.setUsers(this.headlessFragment.getCredits());
        behanceSDKProjectEditorUsersSelectorDialog.setType(BehanceSDKProjectEditorSettingSearchAbstractDialog.Type.CREDITS);
        behanceSDKProjectEditorUsersSelectorDialog.show(getFragmentManager(), BEHANCE_SDK_SETTING_DETAIL_DIALOG_TAG);
    }

    private void launchCopyrightDialog() {
        this.copyrightDialog = new BottomSheetDialog(getActivity(), R.style.BsdkProjectEditorBottomSheetTheme);
        RecyclerView recyclerView = new RecyclerView(getActivity());
        recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.copyrightDialog.setContentView(recyclerView);
        this.copyrightDialog.show();
        recyclerView.setAdapter(new BehanceSDKCopyrightRecyclerAdapter(getActivity(), this.headlessFragment.getCopyrightOption(), this));
        BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from((ViewGroup) recyclerView.getParent());
        bottomSheetBehaviorFrom.setSkipCollapsed(true);
        bottomSheetBehaviorFrom.setPeekHeight(0);
        bottomSheetBehaviorFrom.setState(3);
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKCopyrightRecyclerAdapter.CopyrightCallback
    public void onItemSelected(BehanceSDKCopyrightOption behanceSDKCopyrightOption) {
        this.headlessFragment.setCopyrightOption(behanceSDKCopyrightOption);
        this.bsdkProjectEditorSettingsCopyright.setDescriptionText(behanceSDKCopyrightOption.getDescription());
        this.copyrightDialog.dismiss();
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKCopyrightRecyclerAdapter.CopyrightCallback
    public void onHelpSelected() {
        this.copyrightDialog.dismiss();
        BehanceSDKCopyrightHelperDialog behanceSDKCopyrightHelperDialog = new BehanceSDKCopyrightHelperDialog();
        behanceSDKCopyrightHelperDialog.setCallback(this);
        behanceSDKCopyrightHelperDialog.show(getFragmentManager(), BEHANCE_SDK_COPYRIGHT_HELPER_DIALOG_TAG);
    }

    @Override // com.behance.sdk.ui.dialogs.BehanceSDKCopyrightHelperDialog.CopyrightCallback
    public void onCopyrightSelected(BehanceSDKCopyrightOption behanceSDKCopyrightOption) {
        this.headlessFragment.setCopyrightOption(behanceSDKCopyrightOption);
        this.bsdkProjectEditorSettingsCopyright.setDescriptionText(behanceSDKCopyrightOption.getDescription());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String formatDataList(List list) {
        if (list == null || list.isEmpty()) {
            return "";
        }
        String str = "";
        Iterator it = list.iterator();
        while (it.hasNext()) {
            str = str + getDataText(it.next()) + ", ";
        }
        return str.substring(0, str.length() - 2);
    }

    private String getDataText(Object obj) {
        if (obj instanceof BehanceSDKTagDTO) {
            return ((BehanceSDKTagDTO) obj).getTitle();
        }
        if (obj instanceof BehanceSDKUserDTO) {
            return ((BehanceSDKUserDTO) obj).getDisplayName();
        }
        if (obj instanceof BehanceSDKTeamDTO) {
            return ((BehanceSDKTeamDTO) obj).getDisplayName();
        }
        return null;
    }
}
