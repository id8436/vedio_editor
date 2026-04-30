package com.behance.sdk.ui.fragments;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.behance.sdk.BehanceSDKSocialAccountManager;
import com.behance.sdk.R;
import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import com.behance.sdk.dto.BehanceSDKSocialAccountDTO;
import com.behance.sdk.enums.BehanceSDKCopyrightOption;
import com.behance.sdk.enums.BehanceSDKSocialAccountType;
import com.behance.sdk.fragments.headless.BehanceSDKPublishProjectHeadlessFragment;
import com.behance.sdk.managers.BehanceSDKProjectPublishWFManager;
import com.behance.sdk.project.modules.CoverImage;
import com.behance.sdk.ui.activities.BehanceSDKLoginToTwitterActivity;
import com.behance.sdk.ui.dialogs.BehanceSDKGenericAlertDialog;
import com.behance.sdk.util.BehanceSDKFragmentTags;
import com.behance.sdk.util.BehanceSDKUtils;
import com.facebook.k;
import com.facebook.l;
import com.facebook.login.a;
import com.facebook.login.g;
import com.facebook.login.r;
import com.facebook.login.x;
import com.facebook.o;
import com.facebook.q;
import com.google.gdata.data.analytics.Engagement;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BehanceSDKPublishProjectDetailsFragment extends BehanceSDKPublishProjectBaseFragment implements TextWatcher, BehanceSDKPublishProjectHeadlessFragment.Callbacks, BehanceSDKProjectPublishWFManager.CoverImageChangeListener {
    private static final String COMMA = ",";
    private static final String FACEBOOK_PERMISSION_PUBLISH_ACTIONS = "publish_actions";
    private static final String HEADLESS_FRAGMENT_TAG_PUBLISH_PROJECT = "HEADLESS_FRAGMENT_TAG_PUBLISH_PROJECT";
    private static final int MAX_NUMBER_OF_CREATIVE_FIELD_ALLOWED = 3;
    public static final int TWITTER_LOGIN_ACTIVITY_REQUEST_CODE = 56790;
    private CheckBox adultContentCheckBox;
    private k callbackManager;
    private ImageView coverImageView;
    private BehanceSDKSocialAccountDTO facebookAccount;
    private BehanceSDKPublishProjectHeadlessFragment headlessFragment;
    private BehanceSDKGenericAlertDialog loginToFacebookConfirmationDialog;
    private BehanceSDKGenericAlertDialog loginToTwitterConfirmationDialog;
    private TextView projectCopyrightsButton;
    private EditText projectDescEditTxt;
    private TextView projectFilterFieldsButton;
    private TextView projectNameTxtView;
    private EditText projectTagsEditTxt;
    private View publishProjectProgressbar;
    private BehanceSDKCopyrightOption selectedCopyRight;
    private List<BehanceSDKCreativeFieldDTO> selectedField;
    private ImageView shareOnFacebookBtnImageView;
    private ImageView shareOnTwitterBtnImageView;
    private BehanceSDKSocialAccountManager socialAccountManager;
    private BehanceSDKSocialAccountDTO twitterAccount;
    private BehanceSDKProjectPublishWFManager workflowManager = BehanceSDKProjectPublishWFManager.getInstance();
    private boolean shareOnFacebook = false;
    private boolean shareOnTwitter = false;
    x savedLoginResult = null;
    private View.OnClickListener twitterLoginConfirmDialogClickListener = new View.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKPublishProjectDetailsFragment.7
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getId() == R.id.bsdkGenericAlertDialogOKBtn) {
                BehanceSDKPublishProjectDetailsFragment.this.closeLoginToTwitterConfirmationDialog();
                BehanceSDKPublishProjectDetailsFragment.this.launchTwitterLoginActivity();
            } else if (view.getId() == R.id.bsdkGenericAlertDialogNotOKBtn) {
                BehanceSDKPublishProjectDetailsFragment.this.closeLoginToTwitterConfirmationDialog();
            }
        }
    };
    private View.OnClickListener facebookLoginConfirmDialogClickListener = new View.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKPublishProjectDetailsFragment.8
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getId() == R.id.bsdkGenericAlertDialogOKBtn) {
                BehanceSDKPublishProjectDetailsFragment.this.closeLoginToFacebookConfirmationDialog();
                BehanceSDKPublishProjectDetailsFragment.this.LoginToFacebook();
            } else if (view.getId() == R.id.bsdkGenericAlertDialogNotOKBtn) {
                BehanceSDKPublishProjectDetailsFragment.this.closeLoginToFacebookConfirmationDialog();
            }
        }
    };

    private void setEnabledInfoScreen(boolean z) {
        this.projectNameTxtView.setEnabled(z);
        this.projectDescEditTxt.setEnabled(z);
        this.projectFilterFieldsButton.setEnabled(z);
        this.projectTagsEditTxt.setEnabled(z);
        this.projectCopyrightsButton.setEnabled(z);
        this.adultContentCheckBox.setEnabled(z);
        this.shareOnFacebookBtnImageView.setEnabled(z);
        this.shareOnTwitterBtnImageView.setEnabled(z);
        if (z) {
            enableActionBarRightNav();
        } else {
            disableActionBarRightNav();
        }
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected int getLayout() {
        return R.layout.bsdk_dialog_fragment_publish_project_details;
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this.workflowManager.addCoverImageChangeListener(this);
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        this.workflowManager.removeCoverImageChangeListener(this);
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.savedLoginResult = null;
        this.callbackManager = l.a();
        try {
            r.a().a(this.callbackManager, new o<x>() { // from class: com.behance.sdk.ui.fragments.BehanceSDKPublishProjectDetailsFragment.1
                @Override // com.facebook.o
                public void onSuccess(x xVar) {
                    BehanceSDKPublishProjectDetailsFragment.this.handleFacebookAuthActivityResult(xVar, null);
                }

                @Override // com.facebook.o
                public void onCancel() {
                    BehanceSDKPublishProjectDetailsFragment.this.handleFacebookAuthActivityResult(null, null);
                }

                @Override // com.facebook.o
                public void onError(q qVar) {
                    BehanceSDKPublishProjectDetailsFragment.this.handleFacebookAuthActivityResult(null, qVar);
                }
            });
        } catch (Exception e2) {
        }
        super.onCreateView(layoutInflater, viewGroup, bundle);
        disableActionBarRightNav();
        this.socialAccountManager = BehanceSDKSocialAccountManager.getInstance();
        this.twitterAccount = this.socialAccountManager.getAccount(BehanceSDKSocialAccountType.TWITTER, getActivity());
        this.facebookAccount = this.socialAccountManager.getAccount(BehanceSDKSocialAccountType.FACEBOOK, getActivity());
        FragmentManager supportFragmentManager = getActivity().getSupportFragmentManager();
        this.headlessFragment = (BehanceSDKPublishProjectHeadlessFragment) supportFragmentManager.findFragmentByTag(HEADLESS_FRAGMENT_TAG_PUBLISH_PROJECT);
        if (this.headlessFragment == null) {
            this.headlessFragment = new BehanceSDKPublishProjectHeadlessFragment();
            getActivity().getSupportFragmentManager().beginTransaction().add(this.headlessFragment, HEADLESS_FRAGMENT_TAG_PUBLISH_PROJECT).commit();
        }
        this.headlessFragment.setCallbacks(this);
        Fragment fragmentFindFragmentByTag = supportFragmentManager.findFragmentByTag(BehanceSDKFragmentTags.FRAGMENT_TAG_CREATIVE_FIELDS_FILTER_DIALOG);
        if (fragmentFindFragmentByTag instanceof BehanceSDKCreativeFieldsFilterDialogOld) {
            ((BehanceSDKCreativeFieldsFilterDialogOld) fragmentFindFragmentByTag).setCallbacks(this.headlessFragment);
        }
        Fragment fragmentFindFragmentByTag2 = supportFragmentManager.findFragmentByTag(BehanceSDKFragmentTags.FRAGMENT_TAG_COPYRIGHT_SETTINGS_DIALOG);
        if (fragmentFindFragmentByTag2 instanceof BehanceSDKCopyrightSettingsDialog) {
            ((BehanceSDKCopyrightSettingsDialog) fragmentFindFragmentByTag2).setCallbacks(this.headlessFragment);
        }
        this.coverImageView = (ImageView) this.rootView.findViewById(R.id.bsdkPublishProjectPublishFragmentCoverImage);
        loadCoverImage(this.workflowManager.getSelectedCoverImage());
        View viewFindViewById = this.rootView.findViewById(R.id.bsdkPublishProjectPublishFragmentProjectNameLayout);
        this.projectNameTxtView = (TextView) this.rootView.findViewById(R.id.bsdkPublishProjectPublishFragmentProjectName);
        this.projectNameTxtView.addTextChangedListener(this);
        this.projectNameTxtView.setOnFocusChangeListener(getFocusChangeListerForLayout(viewFindViewById));
        this.projectDescEditTxt = (EditText) this.rootView.findViewById(R.id.bsdkPublishProjectPublishFragmentProjectDescription);
        this.projectDescEditTxt.addTextChangedListener(this);
        this.projectFilterFieldsButton = (TextView) this.rootView.findViewById(R.id.bsdkPublishProjectPublishFragmentCreativeFields);
        this.projectFilterFieldsButton.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKPublishProjectDetailsFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FragmentActivity activity = BehanceSDKPublishProjectDetailsFragment.this.getActivity();
                if (activity instanceof FragmentActivity) {
                    FragmentManager supportFragmentManager2 = activity.getSupportFragmentManager();
                    BehanceSDKCreativeFieldsFilterDialogOld behanceSDKCreativeFieldsFilterDialogOld = new BehanceSDKCreativeFieldsFilterDialogOld();
                    behanceSDKCreativeFieldsFilterDialogOld.setSelectableFieldCount(3);
                    behanceSDKCreativeFieldsFilterDialogOld.setSelectedCreativeField(BehanceSDKPublishProjectDetailsFragment.this.selectedField);
                    behanceSDKCreativeFieldsFilterDialogOld.setCallbacks(BehanceSDKPublishProjectDetailsFragment.this.headlessFragment);
                    behanceSDKCreativeFieldsFilterDialogOld.show(supportFragmentManager2, BehanceSDKFragmentTags.FRAGMENT_TAG_CREATIVE_FIELDS_FILTER_DIALOG);
                }
            }
        });
        this.projectTagsEditTxt = (EditText) this.rootView.findViewById(R.id.bsdkPublishProjectPublishFragmentTags);
        this.projectTagsEditTxt.addTextChangedListener(this);
        this.projectCopyrightsButton = (TextView) this.rootView.findViewById(R.id.bsdkPublishProjectPublishFragmentCopyrightSettings);
        this.projectCopyrightsButton.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKPublishProjectDetailsFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FragmentActivity activity = BehanceSDKPublishProjectDetailsFragment.this.getActivity();
                if (activity instanceof FragmentActivity) {
                    FragmentManager supportFragmentManager2 = activity.getSupportFragmentManager();
                    BehanceSDKCopyrightSettingsDialog behanceSDKCopyrightSettingsDialog = new BehanceSDKCopyrightSettingsDialog();
                    behanceSDKCopyrightSettingsDialog.setSelectedCopyright(BehanceSDKPublishProjectDetailsFragment.this.selectedCopyRight);
                    behanceSDKCopyrightSettingsDialog.setCallbacks(BehanceSDKPublishProjectDetailsFragment.this.headlessFragment);
                    behanceSDKCopyrightSettingsDialog.show(supportFragmentManager2, BehanceSDKFragmentTags.FRAGMENT_TAG_COPYRIGHT_SETTINGS_DIALOG);
                }
            }
        });
        this.adultContentCheckBox = (CheckBox) this.rootView.findViewById(R.id.bsdkPublishProjectPublishFragmentAdultContentCheckbox);
        this.publishProjectProgressbar = this.rootView.findViewById(R.id.projectPublishProgressBar);
        this.shareOnTwitterBtnImageView = (ImageView) this.rootView.findViewById(R.id.bsdkPublishProjectPublishFragmentTwitterIcon);
        if (this.workflowManager.isHideTwitterSharing()) {
            this.shareOnTwitterBtnImageView.setVisibility(8);
        }
        this.shareOnTwitterBtnImageView.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKPublishProjectDetailsFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKPublishProjectDetailsFragment.this.handleEnableShareOnTwitterBtnClick();
            }
        });
        this.shareOnFacebookBtnImageView = (ImageView) this.rootView.findViewById(R.id.bsdkPublishProjectPublishFragmentFacebookIcon);
        if (this.workflowManager.isHideFacebookSharing()) {
            this.shareOnFacebookBtnImageView.setVisibility(8);
        }
        this.shareOnFacebookBtnImageView.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKPublishProjectDetailsFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKPublishProjectDetailsFragment.this.handleEnableShareOnFacebookBtnClick();
            }
        });
        if (this.workflowManager.isHideFacebookSharing() && this.workflowManager.isHideTwitterSharing()) {
            this.rootView.findViewById(R.id.bsdkPublishProjectPublishFragmentShareOnLayout).setVisibility(8);
        }
        if (bundle == null) {
            if (this.facebookAccount != null) {
                this.shareOnFacebook = this.facebookAccount.isSharingEnabledLastTime();
            } else {
                this.shareOnFacebook = false;
            }
            if (this.twitterAccount != null) {
                this.shareOnTwitter = this.twitterAccount.isSharingEnabledLastTime();
            } else {
                this.shareOnTwitter = false;
            }
        } else {
            this.shareOnFacebook = this.workflowManager.getShareOnFaceBook();
            this.shareOnTwitter = this.workflowManager.getShareOnTwitter();
        }
        if (this.shareOnFacebook && !isFacebookAccountAuthenticatedToPublish()) {
            this.shareOnFacebook = false;
        }
        if (this.shareOnTwitter && !isTwitterAccountAuthenticated()) {
            this.shareOnTwitter = false;
        }
        updateProjectDetailsInUI();
        BehanceSDKUtils.setContentViewDimensions(getActivity(), this.rootView.findViewById(R.id.bsdkPublishProjectPublishFragmentLayout));
        return this.rootView;
    }

    private void updateProjectDetailsInUI() {
        String projectTitle = this.workflowManager.getProjectTitle();
        if (!TextUtils.isEmpty(projectTitle)) {
            this.projectNameTxtView.setText(projectTitle);
        }
        String projectDescription = this.workflowManager.getProjectDescription();
        if (!TextUtils.isEmpty(projectDescription)) {
            this.projectDescEditTxt.setText(projectDescription);
        }
        this.selectedField = this.workflowManager.getProjectFields();
        if (this.selectedField != null && !this.selectedField.isEmpty()) {
            setSelectedCreativeFieldsText();
        }
        String projectTags = this.workflowManager.getProjectTags();
        if (!TextUtils.isEmpty(projectTags)) {
            this.projectTagsEditTxt.setText(projectTags);
        }
        this.selectedCopyRight = this.workflowManager.getCopyrightOption();
        this.projectCopyrightsButton.setText(this.selectedCopyRight.getDescription(getActivity()));
        this.adultContentCheckBox.setChecked(this.workflowManager.isProjectContainsAdultContent());
        updateShareOnFacebookBtnImage();
        updateShareOnTwitterBtnImage();
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected void backButtonPressed() {
        populateProjectDetails();
        hideSoftKeyBoardIfActive(this.rootView);
        super.backButtonPressed();
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected void nextButtonPressed() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) getActivity().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            invokePublishProjectService();
            return;
        }
        Toast toastMakeText = Toast.makeText(getActivity(), getString(R.string.bsdk_connection_error_msg), 1);
        toastMakeText.setGravity(17, 0, 0);
        toastMakeText.show();
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        populateProjectDetails();
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment, android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        if (this.headlessFragment != null) {
            this.headlessFragment.setCallbacks(null);
        }
        closeLoginToTwitterConfirmationDialog();
        closeLoginToFacebookConfirmationDialog();
    }

    private View.OnFocusChangeListener getFocusChangeListerForLayout(final View view) {
        return new View.OnFocusChangeListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKPublishProjectDetailsFragment.6
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view2, boolean z) {
                if (z) {
                    view.setActivated(true);
                } else {
                    view.setActivated(false);
                }
            }
        };
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected int getBackButtonID() {
        return R.id.bsdkPublishProjectPublishFragmentTitlebarBackBtnLayout;
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected int getTitleViewID() {
        return R.id.bsdkPublishProjectPublishFragmentTitlebarTitleTxtView;
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected int getForwardButtonID() {
        return R.id.bsdkPublishProjectPublishFragmentTitlebarActionBtnTxtView;
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected int getForwardButtonText() {
        return R.string.bsdk_add_content_project_publish_right_navigation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleEnableShareOnFacebookBtnClick() {
        if (this.facebookAccount != null) {
            if (this.shareOnFacebook) {
                this.shareOnFacebook = false;
                updateShareOnFacebookBtnImage();
            } else {
                checkFacebookAuthAndEnableSharing();
            }
        }
    }

    private void updateShareOnFacebookBtnImage() {
        if (this.shareOnFacebook) {
            this.shareOnFacebookBtnImageView.setImageResource(R.drawable.bsdk_icon_addcontent_publish_shareon_facebook_on);
        } else {
            this.shareOnFacebookBtnImageView.setImageResource(R.drawable.bsdk_icon_addcontent_publish_shareon_facebook_off);
        }
    }

    private void checkFacebookAuthAndEnableSharing() {
        if (isFacebookAccountAuthenticatedToPublish()) {
            this.shareOnFacebook = true;
            updateShareOnFacebookBtnImage();
            updateFacebookAccountAuthStatus();
            return;
        }
        displayFacebookLoginConfirmationDialog();
    }

    private void displayFacebookLoginConfirmationDialog() {
        this.loginToFacebookConfirmationDialog = BehanceSDKGenericAlertDialog.getInstance(getActivity(), R.string.bsdk_social_account_facebook_login_confirmation_title, R.string.bsdk_social_account_facebook_login_confirmation_body, R.string.bsdk_social_account_facebook_login_confirmation_ok_btn_label, R.string.bsdk_social_account_facebook_login_confirmation_cancel_btn_label);
        this.loginToFacebookConfirmationDialog.setOnNotOKBtnClickListener(this.facebookLoginConfirmDialogClickListener);
        this.loginToFacebookConfirmationDialog.setOnOKBtnClickListener(this.facebookLoginConfirmDialogClickListener);
        this.loginToFacebookConfirmationDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void LoginToFacebook() {
        hideSoftKeyBoardIfActive(this.rootView);
        List listAsList = Arrays.asList(FACEBOOK_PERMISSION_PUBLISH_ACTIONS);
        r.a().a(g.NATIVE_WITH_FALLBACK);
        r.a().a(a.EVERYONE);
        r.a().a(this, listAsList);
    }

    private boolean isFacebookAccountAuthenticatedToPublish() {
        if (this.headlessFragment != null) {
            this.savedLoginResult = this.headlessFragment.getLoginResult();
        }
        return (this.savedLoginResult == null || this.savedLoginResult.a().j() || !this.savedLoginResult.a().d().contains(FACEBOOK_PERMISSION_PUBLISH_ACTIONS)) ? false : true;
    }

    private void updateFacebookAccountAuthStatus() {
        boolean z = true;
        boolean zIsFacebookAccountAuthenticatedToPublish = isFacebookAccountAuthenticatedToPublish();
        if (zIsFacebookAccountAuthenticatedToPublish && !this.facebookAccount.isUserAuthenticated()) {
            this.facebookAccount.setUserAuthenticated(true);
        } else if (zIsFacebookAccountAuthenticatedToPublish || !this.facebookAccount.isUserAuthenticated()) {
            z = false;
        } else {
            this.facebookAccount.setUserAuthenticated(false);
        }
        if (z) {
            this.socialAccountManager.updateAccount(this.facebookAccount, getActivity());
        }
    }

    private boolean isTwitterAccountAuthenticated() {
        if (this.twitterAccount == null) {
            return false;
        }
        String userAuthToken = this.twitterAccount.getUserAuthToken();
        String additionalData = this.twitterAccount.getAdditionalData();
        return (userAuthToken == null || userAuthToken.isEmpty() || additionalData == null || additionalData.isEmpty()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleEnableShareOnTwitterBtnClick() {
        if (this.twitterAccount != null) {
            if (this.shareOnTwitter) {
                this.shareOnTwitter = false;
            } else {
                checkIfUserHasLoggedIntoTwitter();
            }
            updateShareOnTwitterBtnImage();
        }
    }

    private void checkIfUserHasLoggedIntoTwitter() {
        String userAuthToken = this.twitterAccount.getUserAuthToken();
        String additionalData = this.twitterAccount.getAdditionalData();
        if (userAuthToken == null || userAuthToken.isEmpty() || additionalData == null || additionalData.isEmpty()) {
            displayTwitterLoginConfirmationDialog();
        } else {
            this.shareOnTwitter = true;
            updateShareOnTwitterBtnImage();
        }
    }

    private void displayTwitterLoginConfirmationDialog() {
        this.loginToTwitterConfirmationDialog = BehanceSDKGenericAlertDialog.getInstance(getActivity(), R.string.bsdk_social_account_twitter_login_confirmation_title, R.string.bsdk_social_account_twitter_login_confirmation_body, R.string.bsdk_social_account_twitter_login_confirmation_ok_btn_label, R.string.bsdk_social_account_twitter_login_confirmation_cancel_btn_label);
        this.loginToTwitterConfirmationDialog.setOnNotOKBtnClickListener(this.twitterLoginConfirmDialogClickListener);
        this.loginToTwitterConfirmationDialog.setOnOKBtnClickListener(this.twitterLoginConfirmDialogClickListener);
        this.loginToTwitterConfirmationDialog.show();
    }

    private void updateShareOnTwitterBtnImage() {
        if (this.shareOnTwitter) {
            this.shareOnTwitterBtnImageView.setImageResource(R.drawable.bsdk_icon_addcontent_publish_shareon_twitter_on);
        } else {
            this.shareOnTwitterBtnImageView.setImageResource(R.drawable.bsdk_icon_addcontent_publish_shareon_twitter_off);
        }
    }

    @Override // com.behance.sdk.managers.BehanceSDKProjectPublishWFManager.CoverImageChangeListener
    public void coverImageChanges(CoverImage coverImage) {
        loadCoverImage(coverImage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchTwitterLoginActivity() {
        startActivityForResult(new Intent(getActivity(), (Class<?>) BehanceSDKLoginToTwitterActivity.class), TWITTER_LOGIN_ACTIVITY_REQUEST_CODE);
        closeLoginToTwitterConfirmationDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeLoginToTwitterConfirmationDialog() {
        if (this.loginToTwitterConfirmationDialog != null) {
            this.loginToTwitterConfirmationDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeLoginToFacebookConfirmationDialog() {
        if (this.loginToFacebookConfirmationDialog != null) {
            this.loginToFacebookConfirmationDialog.dismiss();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 56790) {
            switch (i2) {
                case 0:
                case 2:
                    handleTwitterAuthenticationFailure();
                    break;
                case 1:
                    handleTwitterAuthenticationSuccess();
                    break;
            }
            return;
        }
        this.callbackManager.a(i, i2, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleFacebookAuthActivityResult(x xVar, q qVar) {
        if (getActivity() != null) {
            if (xVar != null) {
                if (xVar.b().contains(FACEBOOK_PERMISSION_PUBLISH_ACTIONS)) {
                    showProgressBar();
                    this.savedLoginResult = xVar;
                    this.headlessFragment.setLoginResult(xVar);
                    this.headlessFragment.loadFacebookUserId(xVar);
                    return;
                }
                Toast.makeText(getActivity(), R.string.bsdk_social_account_fb_auth_permissions_failure, 1).show();
                this.shareOnFacebook = false;
                updateShareOnFacebookBtnImage();
                updateFacebookAccountAuthStatus();
                return;
            }
            if (qVar != null) {
                Toast.makeText(getActivity(), R.string.bsdk_social_account_fb_auth_failure, 1).show();
                updateFacebookAccountAuthStatus();
            }
            this.shareOnFacebook = false;
            updateShareOnFacebookBtnImage();
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKPublishProjectHeadlessFragment.Callbacks
    public void onGetFacebookUserIdComplete(String str) {
        if (getActivity() != null) {
            this.shareOnFacebook = true;
            updateShareOnFacebookBtnImage();
            if (this.facebookAccount != null) {
                this.facebookAccount.setUserId(str);
                updateFacebookAccountAuthStatus();
            }
            hideProgressBar();
        }
    }

    public void handleTwitterAuthenticationSuccess() {
        if (getActivity() != null) {
            this.shareOnTwitter = true;
            updateShareOnTwitterBtnImage();
            this.twitterAccount = this.socialAccountManager.getAccount(BehanceSDKSocialAccountType.TWITTER, getActivity());
            this.twitterAccount.setUserAuthenticated(true);
            this.socialAccountManager.updateAccount(this.twitterAccount, getActivity());
        }
    }

    public void handleTwitterAuthenticationFailure() {
        if (getActivity() != null) {
            this.shareOnTwitter = false;
            updateShareOnTwitterBtnImage();
            Toast.makeText(getActivity(), R.string.bsdk_social_account_twitter_login_authentication_failure, 0).show();
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        enableOrDisablePublishButton();
    }

    private void setSelectedCreativeFieldsText() {
        this.projectFilterFieldsButton.setText(BehanceSDKUtils.getCreativeFieldsString(this.selectedField, ","));
    }

    private void loadCoverImage(CoverImage coverImage) {
        if (coverImage != null) {
            this.coverImageView.setImageBitmap(coverImage.getBitMap());
        }
    }

    private void showProgressBar() {
        if (this.publishProjectProgressbar != null) {
            this.publishProjectProgressbar.setVisibility(0);
        }
    }

    private void hideProgressBar() {
        if (this.publishProjectProgressbar != null) {
            this.publishProjectProgressbar.setVisibility(8);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void invokePublishProjectService() {
        /*
            Method dump skipped, instruction units count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.behance.sdk.ui.fragments.BehanceSDKPublishProjectDetailsFragment.invokePublishProjectService():void");
    }

    private void populateProjectDetails() {
        this.workflowManager.setProjectTitle(getProjectTitle());
        this.workflowManager.setProjectTags(getProjectTagString());
        this.workflowManager.setProjectFields(getProjectFields());
        this.workflowManager.setProjectDescription(getProjectDesc());
        this.workflowManager.setCopyrightOption(this.selectedCopyRight);
        this.workflowManager.setShareOnFaceBook(this.shareOnFacebook);
        this.workflowManager.setShareOnTwitter(this.shareOnTwitter);
        this.workflowManager.setContainsAdultContent(this.adultContentCheckBox.isChecked());
    }

    private String getProjectTitle() {
        return this.projectNameTxtView.getText().toString();
    }

    private String getProjectDesc() {
        return this.projectDescEditTxt.getText().toString();
    }

    private List<BehanceSDKCreativeFieldDTO> getProjectFields() {
        return this.selectedField;
    }

    private String getProjectTagString() {
        return this.projectTagsEditTxt.getText().toString();
    }

    private void enableOrDisablePublishButton() {
        String projectTitle = getProjectTitle();
        String projectDesc = getProjectDesc();
        List<BehanceSDKCreativeFieldDTO> projectFields = getProjectFields();
        String projectTagString = getProjectTagString();
        if (TextUtils.isEmpty(projectTitle) || TextUtils.isEmpty(projectDesc) || projectFields == null || projectFields.isEmpty() || TextUtils.isEmpty(projectTagString) || invalidCharsPresent(projectTitle) || invalidCharsPresent(projectDesc)) {
            disableActionBarRightNav();
        } else {
            enableActionBarRightNav();
        }
    }

    private boolean invalidCharsPresent(String str) {
        return (str != null && TextUtils.indexOf(str, Engagement.Comparison.GT) == -1 && TextUtils.indexOf(str, Engagement.Comparison.LT) == -1) ? false : true;
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected int getTitle() {
        return R.string.bsdk_add_content_project_publish_title;
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKPublishProjectHeadlessFragment.Callbacks
    public void onCreativeFieldsSelected(List<BehanceSDKCreativeFieldDTO> list) {
        this.selectedField = list;
        setSelectedCreativeFieldsText();
        enableOrDisablePublishButton();
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKPublishProjectHeadlessFragment.Callbacks
    public void onCopyrightSettingSelected(BehanceSDKCopyrightOption behanceSDKCopyrightOption) {
        if (behanceSDKCopyrightOption != null) {
            this.selectedCopyRight = behanceSDKCopyrightOption;
        }
        this.projectCopyrightsButton.setText(this.selectedCopyRight.getDescription(getActivity()));
        enableOrDisablePublishButton();
    }
}
