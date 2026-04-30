package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.support.v4.content.FileProvider;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import c.a.a.a.a.d.d;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewDataType;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerPhotosConfiguration;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKActionBarController;
import com.adobe.creativesdk.foundation.internal.utils.AdobeLocalizedMgr;
import com.adobe.creativesdk.foundation.internal.utils.BitMapUtil;
import com.adobe.creativesdk.foundation.internal.utils.photoview.PhotoViewAttacher;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAssetRendition;
import com.adobe.creativesdk.foundation.storage.AdobePhotoException;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;
import org.apache.commons.io.FileUtils;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeUXPhotoAssetOneUpViewerActivity extends AdobeAssetShareBaseOneUpActivity implements IAssetViewerActivity {
    private ImageButton mImageSelectbtn;
    private AdobePhotoAssetViewerController photoAssetViewerController;
    private AdobeOneUpViewerPhotosConfiguration photosConfiguration;

    class AdobeUXAssetViewerPageChangeListener extends ViewPager.SimpleOnPageChangeListener {
        private AdobeUXAssetViewerPageChangeListener() {
        }

        @Override // android.support.v4.view.ViewPager.SimpleOnPageChangeListener, android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            AdobeUXPhotoAssetOneUpViewerActivity.this.pageChanged = true;
            AdobeUXPhotoAssetOneUpViewerActivity.this.mPos = i;
            if (AdobeUXPhotoAssetOneUpViewerActivity.this.mPhotoNumber != null) {
                AdobeUXPhotoAssetOneUpViewerActivity.this.mPhotoNumber.setText((AdobeUXPhotoAssetOneUpViewerActivity.this.mPos + 1) + " " + AdobeUXPhotoAssetOneUpViewerActivity.this.getString(R.string.adobe_csdk_IDS_ASSET_VIEWER_OF) + " " + AdobeUXPhotoAssetOneUpViewerActivity.this.photoAssetViewerController.getTotalAssetsCount());
            }
            AdobePhotoAsset assetAtPos = AdobeUXPhotoAssetOneUpViewerActivity.this.photoAssetViewerController.getAssetAtPos(AdobeUXPhotoAssetOneUpViewerActivity.this.mPos);
            AdobeUXPhotoAssetOneUpViewerActivity.this.updateSelectionBtn();
            AdobeCSDKActionBarController.setTitle(AdobeUXPhotoAssetOneUpViewerActivity.this.findViewById(android.R.id.content), assetAtPos.getName());
            AdobeUXPhotoAssetOneUpViewerActivity.this.setShareIntent();
            if (AdobeUXPhotoAssetOneUpViewerActivity.this.mPos >= AdobeUXPhotoAssetOneUpViewerActivity.this.photoAssetViewerController.count() - 5) {
                AdobeUXPhotoAssetOneUpViewerActivity.this.photoAssetViewerController.loadNextPage();
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAssetViewerActivity
    public View.OnTouchListener getItemTouchListener() {
        return this.mPagerOnTouchListener;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity, com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AdobeNetworkReachabilityUtil.destorySharedInstance();
        try {
            if (this.mImagePath != null) {
                FileUtils.deleteDirectory(this.mImagePath);
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        super.onDestroy();
        this.photoAssetViewerController.resetCurrentAdobeUXAssetViewerActivity();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected ViewPager.SimpleOnPageChangeListener getItemPageChangeListener() {
        return new AdobeUXAssetViewerPageChangeListener();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected void updateOpenBtnContainerVisibility() {
        if (!this.photosConfiguration.isMenuEnabled()) {
            this.mOpenBtnContainer.setVisibility(0);
        } else {
            this.mOpenBtnContainer.setVisibility(8);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected File getShareFile() {
        return new File(this.mImagePath, getUniqueNameForAsset(this.photoAssetViewerController.getAssetAtPos(this.mPos)) + ".png");
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected void initializeConfiguration() {
        this.photosConfiguration = (AdobeOneUpViewerPhotosConfiguration) this._oneUpViewerController.getConfiguration(AdobeOneUpViewerController.ADOBE_ONE_UP_VIEW_PHOTO_CONFIGURATION_KEY);
        this.photoAssetViewerController = AdobePhotoAssetViewerController.createPhotoAssetViewerController(this.photosConfiguration.getAdobePhotoAssetDataSource(), this.photosConfiguration.getAdobePhotoAsset());
        this.configuration = this.photosConfiguration;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected void updateSelectionBtnVisibility(boolean z) {
        if (!this.photosConfiguration.isMenuEnabled() && this.photoAssetViewerController.isMultiSelectModeActive()) {
            if (z) {
                this.mImageSelectbtn.setVisibility(0);
            } else {
                this.mImageSelectbtn.setVisibility(4);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected String getCurrentAssetName() {
        return this.photoAssetViewerController.getAssetAtPos(this.mPos).getName();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity, com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().setApplicationContext(getApplicationContext());
        if (!this.photoAssetViewerController.isDataSourceValidForAssetViewerLaunch()) {
            finish();
            return;
        }
        AdobePhotoAssetViewerController adobePhotoAssetViewerController = this.photoAssetViewerController;
        AdobePhotoAssetViewerController.setCurrentAssetViewerActivity(this);
        this.mAdapter = new AdobeUXPhotoAssetViewerAdapter(getSupportFragmentManager());
        this.mPager = (ViewPager) findViewById(R.id.adobe_csdk_library_item_pager);
        this.mPager.setAdapter(this.mAdapter);
        this.mPager.setOnPageChangeListener(new AdobeUXAssetViewerPageChangeListener());
        this.mPager.setPageTransformer(true, new AdobeDepthPageTransformer());
        this.mImagePath = new File(getFilesDir(), "adobeassetviewerimages");
        if (!this.mImagePath.exists()) {
            this.mImagePath.mkdirs();
        }
        this.mOpenBtn.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXPhotoAssetOneUpViewerActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdobePhotoAsset assetAtPos = AdobeUXPhotoAssetOneUpViewerActivity.this.photoAssetViewerController.getAssetAtPos(AdobeUXPhotoAssetOneUpViewerActivity.this.mPos);
                if (!AdobeUXPhotoAssetOneUpViewerActivity.this.photoAssetViewerController.isMultiSelectModeActive()) {
                    if (!AdobeUXPhotoAssetOneUpViewerActivity.this.photoAssetViewerController.containsAsset(assetAtPos)) {
                        AdobeUXPhotoAssetOneUpViewerActivity.this.photoAssetViewerController.addSelectedAsset(assetAtPos);
                    }
                } else if (AdobeUXPhotoAssetOneUpViewerActivity.this.photoAssetViewerController.getSelectedAssetCount() == 0) {
                    AdobeUXPhotoAssetOneUpViewerActivity.this.photoAssetViewerController.addSelectedAsset(assetAtPos);
                }
                AdobeUXPhotoAssetOneUpViewerActivity.this.setResult(-1, new Intent());
                AdobeUXPhotoAssetOneUpViewerActivity.this.finish();
            }
        });
        this.mImageSelectbtn = (ImageButton) findViewById(R.id.adobe_csdk_library_items_image_selectbtn);
        updateSelectionBtnVisibility(true);
        this.mPos = this.photoAssetViewerController.getSelectedIndex();
        this.mPager.setCurrentItem(this.mPos, false);
        AdobeCSDKActionBarController.setTitle(findViewById(android.R.id.content), this.photoAssetViewerController.getAssetAtPos(this.mPos).getName());
        this.mPhotoNumber.setText((this.mPos + 1) + " " + getString(R.string.adobe_csdk_IDS_ASSET_VIEWER_OF) + " " + this.photoAssetViewerController.getTotalAssetsCount());
        if (!this.photosConfiguration.isMenuEnabled()) {
            this.mOpenBtnContainer.setVisibility(0);
        } else {
            this.mOpenBtnContainer.setVisibility(8);
        }
        if (!this.photosConfiguration.isMenuEnabled() && this.photoAssetViewerController.isMultiSelectModeActive()) {
            this.mImageSelectbtn.setVisibility(0);
        } else {
            this.mImageSelectbtn.setVisibility(8);
        }
        updateSelectionBtn();
        this.mImageSelectbtn.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXPhotoAssetOneUpViewerActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdobePhotoAsset assetAtPos = AdobeUXPhotoAssetOneUpViewerActivity.this.photoAssetViewerController.getAssetAtPos(AdobeUXPhotoAssetOneUpViewerActivity.this.mPos);
                if (!AdobeUXPhotoAssetOneUpViewerActivity.this.mImageSelectbtn.isSelected()) {
                    AdobeUXPhotoAssetOneUpViewerActivity.this.mImageSelectbtn.setSelected(true);
                    AdobeUXPhotoAssetOneUpViewerActivity.this.photoAssetViewerController.addSelectedAsset(assetAtPos);
                } else {
                    AdobeUXPhotoAssetOneUpViewerActivity.this.mImageSelectbtn.setSelected(false);
                    AdobeUXPhotoAssetOneUpViewerActivity.this.photoAssetViewerController.removeSelectedAsset(assetAtPos);
                }
            }
        });
        handleAssetSelectionChanged();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        AdobePhotoAssetViewerController adobePhotoAssetViewerController = this.photoAssetViewerController;
        AdobePhotoAssetViewerController.setSelectedIndex(this.mPos);
        bundle.putInt("ASSET_ONE_UP_ACTIVITY", this.mPos);
        super.onSaveInstanceState(bundle);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAssetViewerActivity
    @SuppressLint({"InlinedApi"})
    public void hideActionsBar() {
        hideOrShowBaseActivityActionsBar();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAssetViewerActivity
    @SuppressLint({"InlinedApi"})
    public void showActionsBar() {
        hideOrShowBaseActivityActionsBar();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity, com.adobe.creativesdk.foundation.internal.storage.controllers.IAssetViewerActivity
    @SuppressLint({"InlinedApi"})
    public void hideOrShowActionsBar() {
        hideOrShowBaseActivityActionsBar();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAssetViewerActivity
    public void handleAssetCollectionChanged() {
        this.mAdapter.notifyDataSetChanged();
    }

    public void enableOrDisableOpenBtn(int i, boolean z) {
        if (this.mOpenBtn != null && i == this.mPos) {
            this.mOpenBtn.setEnabled(z);
            this.mImageSelectbtn.setEnabled(z);
            if (!z && this.mImageSelectbtn.isSelected()) {
                AdobePhotoAsset assetAtPos = this.photoAssetViewerController.getAssetAtPos(this.mPos);
                this.mImageSelectbtn.setSelected(false);
                this.photoAssetViewerController.removeSelectedAsset(assetAtPos);
            }
            if (z) {
                ViewCompat.setAlpha(this.mOpenBtn, 1.0f);
            } else {
                ViewCompat.setAlpha(this.mOpenBtn, 0.5f);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAssetViewerActivity
    public int fetchCurrentPageIndex() {
        return this.mPos;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSelectionBtn() {
        AdobePhotoAsset assetAtPos = this.photoAssetViewerController.getAssetAtPos(this.mPos);
        if (this.mImageSelectbtn != null) {
            if (this.photoAssetViewerController.containsAsset(assetAtPos)) {
                this.mImageSelectbtn.setSelected(true);
            } else {
                this.mImageSelectbtn.setSelected(false);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAssetViewerActivity
    public void handleAssetSelectionChanged() {
        String localizedString;
        int selectedAssetCount = this.photoAssetViewerController.getSelectedAssetCount();
        if (selectedAssetCount < 1) {
            localizedString = AdobeLocalizedMgr.getLocalizedString(R.string.adobe_csdk_storage_open_files);
        } else if (selectedAssetCount > 99) {
            localizedString = AdobeLocalizedMgr.getLocalizedString(R.string.adobe_csdk_storage_open_multiple_files_99);
        } else {
            localizedString = String.format(AdobeLocalizedMgr.getLocalizedString(R.string.adobe_csdk_storage_open_multiple_files), Integer.toString(selectedAssetCount));
        }
        this.mOpenFileText.setText(localizedString);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(final Menu menu) {
        View viewInflate;
        if (!this.photoAssetViewerController.isDataSourceValidForAssetViewerLaunch()) {
            return super.onCreateOptionsMenu(menu);
        }
        if (this.photosConfiguration.isMenuEnabled() && this.photosConfiguration.getMenuLayout() != -1) {
            getMenuInflater().inflate(this.photosConfiguration.getMenuLayout(), menu);
            for (final int i = 0; i < menu.size(); i++) {
                menu.getItem(i).setTitle(getAdobeString(menu.getItem(i).getTitle().toString()));
                Integer actionViewID = this.photosConfiguration.getActionViewID(menu.getItem(i).getItemId());
                if (actionViewID != null && (viewInflate = getLayoutInflater().inflate(actionViewID.intValue(), (ViewGroup) null)) != null) {
                    menu.getItem(i).setActionView(viewInflate);
                    this.photosConfiguration.setActionView(menu.getItem(i).getItemId(), viewInflate);
                    viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXPhotoAssetOneUpViewerActivity.3
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            if (AdobeUXPhotoAssetOneUpViewerActivity.this.photosConfiguration.getEventHandler() != null) {
                                AdobePhotoAsset assetAtPos = AdobeUXPhotoAssetOneUpViewerActivity.this.photoAssetViewerController.getAssetAtPos(AdobeUXPhotoAssetOneUpViewerActivity.this.mPos);
                                AdobeOneUpViewData adobeOneUpViewData = new AdobeOneUpViewData();
                                adobeOneUpViewData.setOriginalAsset(assetAtPos);
                                adobeOneUpViewData.setType(AdobeOneUpViewDataType.ADOBE_ONE_UP_VIEW_DATA_TYPE_PHOTOS);
                                AdobeUXPhotoAssetOneUpViewerActivity.this.photosConfiguration.getEventHandler().handleMenuClick(menu.getItem(i).getItemId(), adobeOneUpViewData, this, null);
                            }
                        }
                    });
                }
            }
        } else {
            setShareIntent();
        }
        return super.onCreateOptionsMenu(menu);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getUniqueNameForAsset(AdobePhotoAsset adobePhotoAsset) {
        String guid = adobePhotoAsset.getGUID();
        if (guid == null || guid.length() == 0) {
            return adobePhotoAsset.getName().replace(".", d.ROLL_OVER_FILE_NAME_SEPARATOR);
        }
        String[] strArrSplit = guid.split(URIUtil.SLASH);
        if (strArrSplit.length > 1) {
            return strArrSplit[strArrSplit.length - 1];
        }
        return strArrSplit[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setShareIntent() {
        final int i = this.mPos;
        final AdobePhotoAsset assetAtPos = this.photoAssetViewerController.getAssetAtPos(this.mPos);
        IAdobeGenericRequestCallback<byte[], AdobePhotoException> iAdobeGenericRequestCallback = new IAdobeGenericRequestCallback<byte[], AdobePhotoException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXPhotoAssetOneUpViewerActivity.4
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public final void onProgress(double d2) {
            }

            protected void handleNoPreview() {
                if (AdobeUXPhotoAssetOneUpViewerActivity.this.photosConfiguration.isMenuEnabled()) {
                    AdobeUXPhotoAssetOneUpViewerActivity.this.mImagePath = null;
                } else {
                    AdobeUXPhotoAssetOneUpViewerActivity.this.enableOrDisableOpenBtn(i, false);
                }
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
            public void onCancellation() {
                handleNoPreview();
            }

            /* JADX WARN: Type inference failed for: r0v0, types: [com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXPhotoAssetOneUpViewerActivity$4$1GetImageUri] */
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(byte[] bArr) {
                new AsyncTask<byte[], Integer, Uri>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXPhotoAssetOneUpViewerActivity.4.1GetImageUri
                    boolean _failed;
                    FileOutputStream fo;

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // android.os.AsyncTask
                    public Uri doInBackground(byte[]... bArr2) {
                        this._failed = false;
                        if (bArr2 == null) {
                            this._failed = true;
                            return null;
                        }
                        byte[] bArr3 = bArr2[0];
                        if (bArr3 == null) {
                            this._failed = true;
                            return null;
                        }
                        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr3, 0, bArr3.length);
                        if (bitmapDecodeByteArray != null) {
                            try {
                                File file = new File(AdobeUXPhotoAssetOneUpViewerActivity.this.mImagePath, AdobeUXPhotoAssetOneUpViewerActivity.this.getUniqueNameForAsset(assetAtPos) + ".png");
                                this.fo = new FileOutputStream(file);
                                bitmapDecodeByteArray.compress(Bitmap.CompressFormat.PNG, 100, this.fo);
                                this.fo.flush();
                                if (AdobeUXPhotoAssetOneUpViewerActivity.this.photosConfiguration.isMenuEnabled()) {
                                    return FileProvider.getUriForFile(AdobeUXPhotoAssetOneUpViewerActivity.this, AdobeUXPhotoAssetOneUpViewerActivity.this._oneUpViewerController.getFileProviderAuthority(), file);
                                }
                                return null;
                            } catch (Exception e2) {
                                e2.printStackTrace();
                                return null;
                            }
                        }
                        this._failed = true;
                        return null;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // android.os.AsyncTask
                    public void onProgressUpdate(Integer... numArr) {
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // android.os.AsyncTask
                    public void onPostExecute(Uri uri) {
                        if (!AdobeUXPhotoAssetOneUpViewerActivity.this.photosConfiguration.isMenuEnabled()) {
                            if (!this._failed) {
                                AdobeUXPhotoAssetOneUpViewerActivity.this.enableOrDisableOpenBtn(i, true);
                            } else {
                                AdobeUXPhotoAssetOneUpViewerActivity.this.enableOrDisableOpenBtn(i, false);
                            }
                        }
                        if (this.fo != null) {
                            try {
                                this.fo.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                    }
                }.execute(bArr);
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobePhotoException adobePhotoException) {
                handleNoPreview();
            }
        };
        if (new File(this.mImagePath, getUniqueNameForAsset(assetAtPos) + ".png").exists()) {
            if (!this.photosConfiguration.isMenuEnabled()) {
                enableOrDisableOpenBtn(i, true);
                return;
            }
            return;
        }
        this.photoAssetViewerController.getRenditionForAsset(assetAtPos, iAdobeGenericRequestCallback);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
        } else if (this.photosConfiguration.getEventHandler() != null) {
            AdobeOneUpViewData adobeOneUpViewData = new AdobeOneUpViewData();
            adobeOneUpViewData.setOriginalAsset(this.photoAssetViewerController.getAssetAtPos(this.mPos));
            adobeOneUpViewData.setType(AdobeOneUpViewDataType.ADOBE_ONE_UP_VIEW_DATA_TYPE_PHOTOS);
            this.photosConfiguration.getEventHandler().handleMenuClick(menuItem.getItemId(), adobeOneUpViewData, this, null);
        }
        return true;
    }

    private void onViewFileDetailsPressed() {
    }

    public class AdobeUXPhotoAssetViewerAdapter extends FragmentStatePagerAdapter {
        protected AdobeUXPhotoAssetViewerAssetFragment _fragmentInstance;

        public AdobeUXPhotoAssetViewerAdapter(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getCount() {
            return AdobeUXPhotoAssetOneUpViewerActivity.this.photoAssetViewerController.count();
        }

        @Override // android.support.v4.app.FragmentStatePagerAdapter
        public Fragment getItem(int i) {
            return AdobeUXPhotoAssetViewerAssetFragment.newInstance(i);
        }

        @Override // android.support.v4.app.FragmentStatePagerAdapter, android.support.v4.view.PagerAdapter
        public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
            if (this._fragmentInstance != obj) {
                this._fragmentInstance = (AdobeUXPhotoAssetViewerAssetFragment) obj;
            }
            super.setPrimaryItem(viewGroup, i, obj);
        }
    }

    public class AdobeUXPhotoAssetViewerAssetFragment extends Fragment {
        int mNum;

        static AdobeUXPhotoAssetViewerAssetFragment newInstance(int i) {
            AdobeUXPhotoAssetViewerAssetFragment adobeUXPhotoAssetViewerAssetFragment = new AdobeUXPhotoAssetViewerAssetFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("num", i);
            adobeUXPhotoAssetViewerAssetFragment.setArguments(bundle);
            return adobeUXPhotoAssetViewerAssetFragment;
        }

        @Override // android.support.v4.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            this.mNum = getArguments() != null ? getArguments().getInt("num") : 1;
        }

        @Override // android.support.v4.app.Fragment
        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            View viewInflate = layoutInflater.inflate(R.layout.fragment_photo_image, viewGroup, false);
            final View viewFindViewById = viewInflate.findViewById(R.id.adobe_csdk_photo_image_view);
            View viewFindViewById2 = viewInflate.findViewById(R.id.adobe_csdk_photo_viewer_no_internet_connection);
            View viewFindViewById3 = viewInflate.findViewById(R.id.adobe_csdk_photo_viewer_no_preview);
            final ProgressBar progressBar = (ProgressBar) viewInflate.findViewById(R.id.adobe_csdk_photo_image_progressbar_new);
            progressBar.setVisibility(0);
            final AdobeUXPhotoAssetOneUpViewerActivity adobeUXPhotoAssetOneUpViewerActivity = (AdobeUXPhotoAssetOneUpViewerActivity) getActivity();
            AdobePhotoAsset assetAtPos = adobeUXPhotoAssetOneUpViewerActivity.photoAssetViewerController.getAssetAtPos(this.mNum);
            final DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            PhotoViewAttacher photoViewAttacher = new PhotoViewAttacher((ImageView) viewFindViewById);
            photoViewAttacher.setOnViewTapListener(new PhotoViewAttacher.OnViewTapListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXPhotoAssetOneUpViewerActivity.AdobeUXPhotoAssetViewerAssetFragment.1PhotoTapListener
                @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.PhotoViewAttacher.OnViewTapListener
                public void onViewTap(View view, float f2, float f3) {
                    if (adobeUXPhotoAssetOneUpViewerActivity.photoAssetViewerController.getCurrentAssetViewerActivity() != null) {
                        adobeUXPhotoAssetOneUpViewerActivity.photoAssetViewerController.getCurrentAssetViewerActivity().hideOrShowActionsBar();
                    }
                }
            });
            View.OnLongClickListener onLongClickListener = new View.OnLongClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXPhotoAssetOneUpViewerActivity.AdobeUXPhotoAssetViewerAssetFragment.1
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    Intent shareIntent = ((AdobeUXPhotoAssetOneUpViewerActivity) AdobeUXPhotoAssetViewerAssetFragment.this.getActivity()).getShareIntent();
                    if (shareIntent != null) {
                        AdobeUXPhotoAssetViewerAssetFragment.this.startActivity(shareIntent);
                        return true;
                    }
                    return true;
                }
            };
            if (adobeUXPhotoAssetOneUpViewerActivity.photosConfiguration.isMenuEnabled()) {
                photoViewAttacher.setOnLongClickListener(onLongClickListener);
            }
            final C1VisibilityHandler c1VisibilityHandler = new C1VisibilityHandler(viewFindViewById, viewFindViewById2, viewFindViewById3, progressBar);
            IAdobeGenericRequestCallback<byte[], AdobePhotoException> iAdobeGenericRequestCallback = new IAdobeGenericRequestCallback<byte[], AdobePhotoException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXPhotoAssetOneUpViewerActivity.AdobeUXPhotoAssetViewerAssetFragment.2
                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }

                protected void handleNoPreview() {
                    c1VisibilityHandler.isOffLineOrError(false);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                public void onCancellation() {
                    handleNoPreview();
                }

                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(byte[] bArr) {
                    Bitmap bitmapDecodeByteArray = null;
                    if (bArr != null) {
                        bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
                    }
                    if (bitmapDecodeByteArray == null) {
                        handleNoPreview();
                        return;
                    }
                    if (bitmapDecodeByteArray.getWidth() < displayMetrics.widthPixels || bitmapDecodeByteArray.getHeight() < displayMetrics.heightPixels) {
                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                        layoutParams.addRule(13);
                        viewFindViewById.setLayoutParams(layoutParams);
                    } else {
                        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
                        layoutParams2.addRule(13);
                        viewFindViewById.setLayoutParams(layoutParams2);
                    }
                    ((ImageView) viewFindViewById).setImageBitmap(BitMapUtil.getFinalBitMapWithWhiteBackground(bitmapDecodeByteArray, displayMetrics.widthPixels, displayMetrics.heightPixels));
                    progressBar.setVisibility(8);
                }

                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobePhotoException adobePhotoException) {
                    handleNoPreview();
                }
            };
            if (AdobeUXPhotoAssetOneUpViewerActivity.isNetworkAvailable()) {
                c1VisibilityHandler.isOnLine();
                Map<String, AdobePhotoAssetRendition> renditions = assetAtPos.getRenditions();
                if (renditions.get(AdobePhotoAsset.AdobePhotoAssetRenditionImage2048) != null) {
                    assetAtPos.downloadRendition(renditions.get(AdobePhotoAsset.AdobePhotoAssetRenditionImage2048), iAdobeGenericRequestCallback);
                } else if (renditions.get(AdobePhotoAsset.AdobePhotoAssetRenditionImage1024) != null) {
                    assetAtPos.downloadRendition(renditions.get(AdobePhotoAsset.AdobePhotoAssetRenditionImage1024), iAdobeGenericRequestCallback);
                } else if (renditions.get(AdobePhotoAsset.AdobePhotoAssetRenditionImageThumbnail2x) != null) {
                    assetAtPos.downloadRendition(renditions.get(AdobePhotoAsset.AdobePhotoAssetRenditionImageThumbnail2x), iAdobeGenericRequestCallback);
                } else if (renditions.get(AdobePhotoAsset.AdobePhotoAssetRenditionImageThumbnail) != null) {
                    assetAtPos.downloadRendition(renditions.get(AdobePhotoAsset.AdobePhotoAssetRenditionImageThumbnail), iAdobeGenericRequestCallback);
                } else {
                    iAdobeGenericRequestCallback.onCompletion(null);
                }
            } else {
                c1VisibilityHandler.isOffLineOrError(true);
            }
            ((AdobeUXPhotoAssetOneUpViewerActivity) getActivity()).setShareIntent();
            return viewInflate;
        }

        /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXPhotoAssetOneUpViewerActivity$AdobeUXPhotoAssetViewerAssetFragment$1VisibilityHandler, reason: invalid class name */
        class C1VisibilityHandler {
            final /* synthetic */ View val$iv;
            final /* synthetic */ View val$noInternetConnView;
            final /* synthetic */ View val$noPreviewView;
            final /* synthetic */ ProgressBar val$spinner;

            C1VisibilityHandler(View view, View view2, View view3, ProgressBar progressBar) {
                this.val$iv = view;
                this.val$noInternetConnView = view2;
                this.val$noPreviewView = view3;
                this.val$spinner = progressBar;
            }

            void isOnLine() {
                this.val$iv.setVisibility(0);
                this.val$noInternetConnView.setVisibility(8);
                this.val$noPreviewView.setVisibility(8);
            }

            void isOffLineOrError(boolean z) {
                this.val$iv.setVisibility(8);
                if (z) {
                    this.val$noInternetConnView.setVisibility(0);
                    this.val$noPreviewView.setVisibility(8);
                } else {
                    this.val$noInternetConnView.setVisibility(8);
                    this.val$noPreviewView.setVisibility(0);
                }
                this.val$spinner.setVisibility(8);
            }
        }
    }
}
