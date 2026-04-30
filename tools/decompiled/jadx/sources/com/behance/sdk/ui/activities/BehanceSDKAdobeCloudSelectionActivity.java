package com.behance.sdk.ui.activities;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.behance.sdk.R;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.ui.adapters.BehanceSDKAdobeCloudSelectionListItemAdapter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKAdobeCloudSelectionActivity extends FragmentActivity implements View.OnClickListener, AdapterView.OnItemClickListener, IAdobeGenericCompletionCallback<ArrayList<AdobeCloud>>, IAdobeGenericErrorCallback<AdobeCSDKException> {
    public static final int ACTIVITY_RESULT_CODE_CANCELLED = 2;
    public static final int ACTIVITY_RESULT_CODE_CLOUD_SELECTED = 1;
    public static final int ACTIVITY_RESULT_CODE_ERROR = 3;
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKAdobeCloudSelectionActivity.class);
    private boolean activityDestroyed = false;
    private ListView cloudsListView;
    private View progressSpinner;
    private AdobeCloudManager sharedCloudManager;

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.activityDestroyed = false;
        setContentView(R.layout.bsdk_activity_adobe_cloud_selection);
        this.sharedCloudManager = AdobeCloudManager.getSharedCloudManager();
        findViewById(R.id.bsdkCloudSelectionViewBackBtnContainer).setOnClickListener(this);
        this.cloudsListView = (ListView) findViewById(R.id.bsdkCloudSelectionViewCloudsListView);
        this.cloudsListView.setOnItemClickListener(this);
        this.progressSpinner = findViewById(R.id.bsdkCloudSelectionViewProgressSpinner);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        loadAdobeClouds();
    }

    private void loadAdobeClouds() {
        showProgressSpinner();
        this.sharedCloudManager.refreshClouds(this, this, null);
    }

    private void showProgressSpinner() {
        if (this.progressSpinner != null) {
            this.cloudsListView.setVisibility(4);
            this.progressSpinner.setVisibility(0);
        }
    }

    private void hideProgressSpinner() {
        if (this.progressSpinner != null) {
            this.cloudsListView.setVisibility(0);
            this.progressSpinner.setVisibility(8);
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.bsdkCloudSelectionViewBackBtnContainer) {
            setResult(2);
            closeThisView();
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        setResult(2);
        closeThisView();
    }

    private void closeThisView() {
        this.activityDestroyed = true;
        finish();
    }

    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
    public void onCompletion(final ArrayList<AdobeCloud> arrayList) {
        if (!this.activityDestroyed) {
            if (arrayList != null) {
                if (this.cloudsListView != null) {
                    this.cloudsListView.post(new Runnable() { // from class: com.behance.sdk.ui.activities.BehanceSDKAdobeCloudSelectionActivity.1
                        @Override // java.lang.Runnable
                        public void run() {
                            BehanceSDKAdobeCloudSelectionActivity.this.setCloudListAdapter(arrayList);
                        }
                    });
                    return;
                }
                return;
            }
            handleCloudRetrievingError();
        }
    }

    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
    public void onError(AdobeCSDKException adobeCSDKException) {
        logger.error(adobeCSDKException, "Problem retrieving Clouds", new Object[0]);
        if (!this.activityDestroyed && this.cloudsListView != null) {
            this.cloudsListView.post(new Runnable() { // from class: com.behance.sdk.ui.activities.BehanceSDKAdobeCloudSelectionActivity.2
                @Override // java.lang.Runnable
                public void run() {
                    BehanceSDKAdobeCloudSelectionActivity.this.handleCloudRetrievingError();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCloudListAdapter(ArrayList<AdobeCloud> arrayList) {
        if (arrayList != null) {
            this.cloudsListView.setAdapter((ListAdapter) new BehanceSDKAdobeCloudSelectionListItemAdapter(this, arrayList, this.sharedCloudManager.getDefaultCloud()));
            hideProgressSpinner();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCloudRetrievingError() {
        Toast.makeText(this, R.string.bsdk_cloud_selection_view_loading_error_msg, 1).show();
        setResult(3);
        closeThisView();
    }

    private void handleCloudOptionSelection(AdobeCloud adobeCloud) {
        if (adobeCloud != null) {
            this.sharedCloudManager.setDefaultCloud(adobeCloud);
        }
        setResult(1);
        closeThisView();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        handleCloudOptionSelection((AdobeCloud) this.cloudsListView.getItemAtPosition(i));
    }
}
