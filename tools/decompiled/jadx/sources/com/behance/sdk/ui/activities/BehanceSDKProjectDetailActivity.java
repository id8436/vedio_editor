package com.behance.sdk.ui.activities;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import android.widget.Toast;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.R;
import com.behance.sdk.asynctask.params.BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskParams;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import com.behance.sdk.dto.search.BehanceSDKUserDTO;
import com.behance.sdk.fragments.headless.BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.managers.BehanceSDKUserManager;
import com.behance.sdk.ui.fragments.BehanceSDKProjectDetailFragment;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectDetailActivity extends AppCompatActivity implements BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment.Callbacks, BehanceSDKProjectDetailFragment.Callbacks {
    private static final String FRAGMENT_TAG_PROJECT_DETAIL = "FRAGMENT_PROJECT_DETAIL";
    private static final String FRAGMENT_TAG_RETRIEVE_BEHANCE_USER_DETAILS_USING_ADOBE_ID = "FRAGMENT_TAG_RETRIEVE_BEHANCE_USER_DETAILS_USING_ADOBE_ID";
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKProjectDetailActivity.class);
    private static BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment retrieveBehanceUserDetailHeadlessFragment;
    private BehanceSDKProjectDTO activeProject;
    private BehanceSDK behanceSDK = BehanceSDK.getInstance();
    private BehanceSDKProjectDetailFragment projectDetailFragment;
    String projectId;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.bsdk_activity_project_detail);
        if (!this.behanceSDK.useBehanceTheme() && !getResources().getBoolean(R.bool.isTablet)) {
            setRequestedOrientation(this.behanceSDK.getBehanceSDKCustomResourcesOptions().getPhoneOrientation());
        }
        this.projectId = getIntent().getStringExtra(BehanceSDKProjectDetailFragment.ARG_PROJECT_ID);
        retrieveBehanceUserDetailsUsingAdobeId();
        if (bundle == null) {
            loadProjectDetailFragment();
        }
    }

    public BehanceSDKProjectDTO getActiveProject() {
        return this.activeProject;
    }

    public void setActiveProject(BehanceSDKProjectDTO behanceSDKProjectDTO) {
        this.activeProject = behanceSDKProjectDTO;
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKProjectDetailFragment.Callbacks
    public void onFailureToLoadProjectDetails(Exception exc) {
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKProjectDetailFragment.Callbacks
    public void onSuccessfulLoadOfProjectDetails(BehanceSDKProjectDTO behanceSDKProjectDTO) {
        setActiveProject(behanceSDKProjectDTO);
    }

    private void loadProjectDetailFragment() {
        if (this.projectId != null) {
            Bundle bundle = new Bundle();
            bundle.putString(BehanceSDKProjectDetailFragment.ARG_PROJECT_ID, this.projectId);
            this.projectDetailFragment = new BehanceSDKProjectDetailFragment();
            this.projectDetailFragment.setArguments(bundle);
            getSupportFragmentManager().beginTransaction().add(R.id.item_detail_container, this.projectDetailFragment, FRAGMENT_TAG_PROJECT_DETAIL).commit();
            return;
        }
        Toast.makeText(this, getResources().getString(R.string.bsdk_project_detail_fragment_problem_loading_project_details_msg), 0).show();
        finish();
    }

    private void removeProjectDetailFragment() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
        Fragment fragmentFindFragmentByTag = supportFragmentManager.findFragmentByTag(FRAGMENT_TAG_PROJECT_DETAIL);
        if (fragmentFindFragmentByTag != null) {
            fragmentTransactionBeginTransaction.remove(fragmentFindFragmentByTag);
        }
        fragmentTransactionBeginTransaction.commit();
    }

    private void retrieveBehanceUserDetailsUsingAdobeId() {
        retrieveBehanceUserDetailHeadlessFragment = (BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment) getSupportFragmentManager().findFragmentByTag(FRAGMENT_TAG_RETRIEVE_BEHANCE_USER_DETAILS_USING_ADOBE_ID);
        if (retrieveBehanceUserDetailHeadlessFragment == null) {
            retrieveBehanceUserDetailHeadlessFragment = new BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment();
            getSupportFragmentManager().beginTransaction().add(retrieveBehanceUserDetailHeadlessFragment, FRAGMENT_TAG_RETRIEVE_BEHANCE_USER_DETAILS_USING_ADOBE_ID).commit();
        }
        retrieveBehanceUserDetailHeadlessFragment.setCallbacks(this);
        retrieveBehanceUserDetailHeadlessFragment.retrieveBehanceUserDetailsUsingAdobeID(new BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskParams());
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment.Callbacks
    public void onRetrieveBehanceUserDetailsSuccess(BehanceSDKUserDTO behanceSDKUserDTO) {
        if (behanceSDKUserDTO != null && behanceSDKUserDTO.getId() > 0) {
            BehanceSDKUserManager.getInstance().setUserDTO(behanceSDKUserDTO);
        } else {
            logger.error("Problem retrieving Behance user details using Adobe ID", new Object[0]);
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment.Callbacks
    public void onRetrieveBehanceUserDetailsFailure(Exception exc) {
    }
}
