package com.adobe.creativesdk.foundation.internal.settings;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import g.a.a.a.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CloudPickerActivity extends AdobeTOUHandlerActivity implements AdapterView.OnItemClickListener {
    private ProgressDialog loadingClouds;
    private CloudsListAdapter mAdapter;
    private ListView mListView;
    private Integer previousSelectedPos = -1;
    List<AdobeCloud> availableClouds = new ArrayList();
    public boolean indicateDefaultCloud = true;

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(c.a(context));
    }

    @Override // com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_cloud_picker);
        this.mListView = (ListView) findViewById(R.id.adobe_csdk_cloud_list1);
        this.mAdapter = new CloudsListAdapter(this, this.availableClouds);
        this.mListView.setOnItemClickListener(this);
        Toolbar toolbar = (Toolbar) findViewById(R.id.adobe_csdk_cloud_picker_actionbar_toolbar);
        toolbar.setNavigationIcon(R.drawable.ic_arrow_back_white_24dp);
        toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.settings.CloudPickerActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CloudPickerActivity.this.onBackPressed();
            }
        });
        this.indicateDefaultCloud = getIntent().getBooleanExtra("INDICATE_DEFAULT_CLOUD", true);
        ((TextView) findViewById(R.id.adobe_csdk_cloudpicker_actionbar_title)).setText(R.string.adobe_csdk_asset_ux_settings_change_location);
        updateCloudList();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        setResult(0);
        finish();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (i != this.previousSelectedPos.intValue() && !this.availableClouds.isEmpty()) {
            AdobeCloudManager.getSharedCloudManager().setDefaultCloud(this.availableClouds.get(i));
            ImageView imageView = this.previousSelectedPos.intValue() != -1 ? (ImageView) getViewByPosition(this.previousSelectedPos.intValue(), this.mListView).findViewById(R.id.adobe_csdk_Default_Cloud_selector) : null;
            ImageView imageView2 = (ImageView) getViewByPosition(i, this.mListView).findViewById(R.id.adobe_csdk_Default_Cloud_selector);
            if (imageView != null) {
                imageView.setVisibility(4);
                imageView.requestLayout();
            }
            imageView2.setVisibility(0);
            imageView2.requestLayout();
            this.previousSelectedPos = Integer.valueOf(i);
            handleCloudChange();
        }
    }

    private void handleCloudChange() {
        setResult(-1);
        finish();
    }

    @Override // com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    public void setCloudSelection(Integer num) {
        this.previousSelectedPos = num;
    }

    public void updateCloudList() {
        final ArrayList arrayList = new ArrayList();
        if (!this.indicateDefaultCloud && AdobeCCAppStatus.getCachedClouds() != null && !AdobeCCAppStatus.getCachedClouds().isEmpty()) {
            this.availableClouds = AdobeCCAppStatus.getCachedClouds();
            updateCloudsList();
        } else {
            this.mListView.setVisibility(8);
            this.loadingClouds = ProgressDialog.show(this, null, getString(R.string.adobe_csdk_asset_ux_wait_message));
            this.loadingClouds.setCancelable(true);
            AdobeCloudManager.getSharedCloudManager().refreshClouds(new IAdobeGenericCompletionCallback<ArrayList<AdobeCloud>>() { // from class: com.adobe.creativesdk.foundation.internal.settings.CloudPickerActivity.2
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(ArrayList<AdobeCloud> arrayList2) {
                    if (!arrayList2.isEmpty()) {
                        Iterator<AdobeCloud> it = arrayList2.iterator();
                        while (it.hasNext()) {
                            arrayList.add(it.next());
                        }
                    }
                    CloudPickerActivity.this.availableClouds = arrayList;
                    CloudPickerActivity.this.updateCloudsList();
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.settings.CloudPickerActivity.3
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    CloudPickerActivity.this.updateCloudList();
                }
            }, new Handler());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCloudsList() {
        this.mAdapter.clear();
        this.mAdapter.addAll(this.availableClouds);
        this.mListView.setAdapter((ListAdapter) this.mAdapter);
        if (this.loadingClouds != null) {
            this.loadingClouds.dismiss();
        }
        this.mListView.setVisibility(0);
    }

    private View getViewByPosition(int i, ListView listView) {
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        int childCount = (listView.getChildCount() + firstVisiblePosition) - 1;
        if (i < firstVisiblePosition || i > childCount) {
            return listView.getAdapter().getView(i, null, listView);
        }
        return listView.getChildAt(i - firstVisiblePosition);
    }
}
