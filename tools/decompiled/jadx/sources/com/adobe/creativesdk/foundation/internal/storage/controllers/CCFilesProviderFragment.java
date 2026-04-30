package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment;
import com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class CCFilesProviderFragment extends CCFilesWithUploadFragment {
    public static String T = CCFilesProviderFragment.class.getSimpleName();
    private IDocumentPickerCallback mCallback;
    private TextView mDoneTextView;

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mDoneTextView = (TextView) getActivity().findViewById(R.id.adobe_doc_actionbar_done);
        if (this.mDoneTextView != null) {
            this.mDoneTextView.setVisibility(8);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof IDocumentPickerCallback) {
            this.mCallback = (IDocumentPickerCallback) context;
        } else {
            Log.e(T, "context should be instance of IDocumentPickerCallback");
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.mCallback = null;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handleAssetClickAction(Object obj) {
        if (this.mCallback != null) {
            Log.e(T, "handleAssetClickAction");
            ArrayList<AdobeAsset> arrayList = new ArrayList<>(1);
            arrayList.add((AdobeAsset) obj);
            this.mCallback.startProvidingDocuments(arrayList);
            return;
        }
        Log.e(T, "cannot handle AssetClickAction");
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment
    protected void showAssetsAsGridAnimate(boolean z) {
        showAssetsAsListAnimate(z);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected AssetViewFragment.AssetsViewBaseActionBarController createActionBarController() {
        return new CCFilesProviderActionBarController();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void addFabToRootView() {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handlePopupMenuClick(Object obj, View view) {
    }

    public class CCFilesProviderActionBarController extends CCFilesFragment.CCFilesActionBarController {
        protected CCFilesProviderActionBarController() {
            super();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public boolean onOptionsItemSelected(MenuItem menuItem) {
            return true;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onPrepareOptionsMenu(Menu menu) {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public boolean handleOptionItemSelect(int i) {
            return true;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void handleCurrentNetworkStatus(boolean z) {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void handleOnStart() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void handlePostOnCreate(Bundle bundle) {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void saveActionBarInstanceState() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        protected void restoreFragmentActionBarFromSavedData() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void refreshOptionItems() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController
        public void resetButtonState() {
        }
    }
}
