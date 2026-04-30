package com.adobe.creativeapps.settings.activity;

import android.graphics.PorterDuff;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.adobe.creativeapps.settings.R;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.h.a.d;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class CloudPickerActivity extends AppCompatActivity implements AdapterView.OnItemClickListener {
    private Toolbar _actionBarToolbar;
    private CloudsListAdapter mAdapter;
    private ListView mListView;
    private LinearLayout mLoadingClouds;
    private ProgressBar mSpinner;
    private AdobeCloud preCloud;
    private Integer previousSelectedPos = -1;
    ArrayList<AdobeCloud> _availableClouds = new ArrayList<>();

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_cloud_picker);
        d.a(this);
        this.mListView = (ListView) findViewById(R.id.cloud_list1);
        this.mAdapter = new CloudsListAdapter(this, this._availableClouds);
        this.mListView.setOnItemClickListener(this);
        this.mLoadingClouds = (LinearLayout) findViewById(R.id.loading_cloud_Progress);
        this.mSpinner = (ProgressBar) findViewById(R.id.spinner_Progress);
        this._actionBarToolbar = (Toolbar) findViewById(R.id.cloud_picker_actionbar_toolbar);
        this._actionBarToolbar.setNavigationIcon(R.drawable.ic_arrow_back_white_24dp);
        this._actionBarToolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativeapps.settings.activity.CloudPickerActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CloudPickerActivity.this.onBackPressed();
            }
        });
        this.preCloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
        ((TextView) findViewById(R.id.cloudpicker_actionbar_title)).setText(getString(R.string.title_activity_cloudpicker));
        d.a(this.mListView);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.preCloud != AdobeCloudManager.getSharedCloudManager().getDefaultCloud()) {
            setResult(-1);
        } else {
            setResult(0);
        }
        finish();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (i != this.previousSelectedPos.intValue() && this._availableClouds.size() > 0) {
            AdobeCloudManager.getSharedCloudManager().setDefaultCloud(this._availableClouds.get(i));
            ImageView imageView = this.previousSelectedPos.intValue() != -1 ? (ImageView) getViewByPosition(this.previousSelectedPos.intValue(), this.mListView).findViewById(R.id.Default_Cloud_selector) : null;
            ImageView imageView2 = (ImageView) getViewByPosition(i, this.mListView).findViewById(R.id.Default_Cloud_selector);
            if (imageView != null) {
                imageView.setVisibility(4);
                imageView.requestLayout();
            }
            imageView2.setVisibility(0);
            imageView2.requestLayout();
            this.previousSelectedPos = Integer.valueOf(i);
            Toast.makeText(this, getString(R.string.sync_location_changed), 0).show();
        }
        onBackPressed();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        updateCloudList();
    }

    public void setCloudSelection(Integer num) {
        this.previousSelectedPos = num;
    }

    public void updateCloudList() {
        final ArrayList arrayList = new ArrayList();
        this.mSpinner.getIndeterminateDrawable().setColorFilter(R.color.settings_primary, PorterDuff.Mode.MULTIPLY);
        this.mListView.setVisibility(8);
        this.mLoadingClouds.setVisibility(0);
        AdobeCloudManager.getSharedCloudManager().refreshClouds(new IAdobeGenericCompletionCallback<ArrayList<AdobeCloud>>() { // from class: com.adobe.creativeapps.settings.activity.CloudPickerActivity.2
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(ArrayList<AdobeCloud> arrayList2) {
                if (!arrayList2.isEmpty()) {
                    Iterator<AdobeCloud> it = arrayList2.iterator();
                    while (it.hasNext()) {
                        arrayList.add(it.next());
                    }
                }
                CloudPickerActivity.this._availableClouds = arrayList;
                CloudPickerActivity.this.updateCloudsList();
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativeapps.settings.activity.CloudPickerActivity.3
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                CloudPickerActivity.this.updateCloudList();
            }
        }, new Handler());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCloudsList() {
        this.mAdapter.clear();
        this.mAdapter.addAll(this._availableClouds);
        this.mListView.setAdapter((ListAdapter) this.mAdapter);
        this.mLoadingClouds.setVisibility(8);
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
