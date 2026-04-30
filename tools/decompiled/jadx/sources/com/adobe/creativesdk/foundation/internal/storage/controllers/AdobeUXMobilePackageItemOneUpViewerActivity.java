package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import c.a.a.a.a.d.d;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetMobileCreationSelectionState;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStorageAssetSelectionState;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStoragePhotoAssetSelectionState;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetCompPage;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetPSMixPage;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetSketchbookPage;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewDataType;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerMobileCreationConfiguration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.utils.AdobeLocalizedMgr;
import com.adobe.creativesdk.foundation.internal.utils.BitMapUtil;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.internal.utils.photoview.PhotoView;
import com.adobe.creativesdk.foundation.internal.utils.photoview.PhotoViewAttacher;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.io.File;
import java.io.IOException;
import java.util.Observable;
import java.util.Observer;
import org.apache.commons.io.FileUtils;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeUXMobilePackageItemOneUpViewerActivity extends AdobeAssetShareBaseOneUpActivity {
    Observer _mobilePackageOneupControllerInitializedObserver = null;
    AdobeOneUpViewerMobileCreationConfiguration mobileCreationConfiguration;
    MobilePackageItemsOneUpViewController mobilePackageItemsOneUpViewController;

    public class PhotoViewData {
        public int _currentImageHeight;
        public int _currentImageWidth;
    }

    class AdobeUXMobilePackageItemPageChangeListener extends ViewPager.SimpleOnPageChangeListener {
        AdobeUXMobilePackageItemPageChangeListener() {
        }

        @Override // android.support.v4.view.ViewPager.SimpleOnPageChangeListener, android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            AdobeUXMobilePackageItemOneUpViewerActivity.this.pageChanged = true;
            AdobeUXMobilePackageItemOneUpViewerActivity.this.mPos = i;
            AdobeUXMobilePackageItemOneUpViewerActivity.this.updateTitleOfActivity();
            AdobeUXMobilePackageItemOneUpViewerActivity.this.generateShareIntentInfo();
        }
    }

    protected void setUpMobilePackageController(Bundle bundle) {
        if (this.mobilePackageItemsOneUpViewController != null) {
            startItemsOneUpDisplay();
            return;
        }
        this._mobilePackageOneupControllerInitializedObserver = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity.1
            @Override // java.util.Observer
            public void update(Observable observable, Object obj) {
                AdobeUXMobilePackageItemOneUpViewerActivity.this.removeMobilePackageInitializedObserver();
                AdobeUXMobilePackageItemOneUpViewerActivity.this.startItemsOneUpDisplay();
            }
        };
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeMobilePackageOneUpControllerInitialized, this._mobilePackageOneupControllerInitializedObserver);
        this.mobilePackageItemsOneUpViewController = MobilePackageItemsOneUpViewController.createInstanceFromConfigurationBundle(bundle);
    }

    protected void startItemsOneUpDisplay() {
        this.mAdapter = new AdobeUXMobilePackageItemCollectionAdapter(getSupportFragmentManager());
        this.mPager.setAdapter(this.mAdapter);
        this.mPos = this.mobilePackageItemsOneUpViewController.getStartIndex();
        this.mPager.setCurrentItem(this.mPos, false);
        updateTitleOfActivity();
    }

    protected void updateTitleOfActivity() {
        if (this.mPhotoNumber != null) {
            this.mPhotoNumber.setText(String.format(getString(R.string.adobe_csdk_IDS_ASSET_VIEWER_OF_2), Integer.valueOf(this.mPos + 1), Integer.valueOf(this.mobilePackageItemsOneUpViewController.getCount())));
        }
        AdobeAssetFile itemAtPos = this.mobilePackageItemsOneUpViewController.getItemAtPos(this.mPos);
        String localizedString = AdobeLocalizedMgr.getLocalizedString(R.string.adobe_csdk_lineordrawcollection_singular);
        if (itemAtPos instanceof AdobeAssetSketchbookPage) {
            localizedString = AdobeLocalizedMgr.getLocalizedString(R.string.adobe_csdk_sketchCollection_singular);
        } else if (itemAtPos instanceof AdobeAssetCompPage) {
            localizedString = AdobeLocalizedMgr.getLocalizedString(R.string.adobe_csdk_composition_collection_singular);
        } else if (itemAtPos instanceof AdobeAssetPSMixPage) {
            localizedString = AdobeLocalizedMgr.getLocalizedString(R.string.adobe_csdk_psmix_collection_singular);
        }
        if (itemAtPos != null) {
            setActionBarTitle(localizedString);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(final Menu menu) {
        View viewInflate;
        if (this.mobileCreationConfiguration.isMenuEnabled() && this.mobileCreationConfiguration.getMenuLayout() != -1) {
            getMenuInflater().inflate(this.mobileCreationConfiguration.getMenuLayout(), menu);
            for (final int i = 0; i < menu.size(); i++) {
                menu.getItem(i).setTitle(getAdobeString(menu.getItem(i).getTitle().toString()));
                Integer actionViewID = this.mobileCreationConfiguration.getActionViewID(menu.getItem(i).getItemId());
                if (actionViewID != null && (viewInflate = getLayoutInflater().inflate(actionViewID.intValue(), (ViewGroup) null)) != null) {
                    menu.getItem(i).setActionView(viewInflate);
                    this.mobileCreationConfiguration.setActionView(menu.getItem(i).getItemId(), viewInflate);
                    viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            if (AdobeUXMobilePackageItemOneUpViewerActivity.this.mobileCreationConfiguration.getEventHandler() != null) {
                                AdobeAssetFile itemAtPos = AdobeUXMobilePackageItemOneUpViewerActivity.this.mobilePackageItemsOneUpViewController.getItemAtPos(AdobeUXMobilePackageItemOneUpViewerActivity.this.mPos);
                                AdobeOneUpViewData adobeOneUpViewData = new AdobeOneUpViewData();
                                adobeOneUpViewData.setOriginalAsset(itemAtPos);
                                adobeOneUpViewData.setType(AdobeOneUpViewDataType.ADOBE_ONE_UP_VIEW_DATA_TYPE_MOBILE_CREATION);
                                AdobeUXMobilePackageItemOneUpViewerActivity.this.mobileCreationConfiguration.getEventHandler().handleMenuClick(menu.getItem(i).getItemId(), adobeOneUpViewData, this, null);
                            }
                        }
                    });
                }
            }
            return true;
        }
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
        } else {
            AdobeAssetFile itemAtPos = this.mobilePackageItemsOneUpViewController.getItemAtPos(this.mPos);
            if (this.mobileCreationConfiguration.getEventHandler() != null) {
                AdobeOneUpViewData adobeOneUpViewData = new AdobeOneUpViewData();
                adobeOneUpViewData.setOriginalAsset(itemAtPos);
                adobeOneUpViewData.setType(AdobeOneUpViewDataType.ADOBE_ONE_UP_VIEW_DATA_TYPE_MOBILE_CREATION);
                this.mobileCreationConfiguration.getEventHandler().handleMenuClick(menuItem.getItemId(), adobeOneUpViewData, this, null);
            }
        }
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected void updateOpenBtnContainerVisibility() {
        if (!this.mobileCreationConfiguration.isMenuEnabled()) {
            this.mOpenBtnContainer.setVisibility(0);
        } else {
            this.mOpenBtnContainer.setVisibility(8);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity, com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mOpenBtn.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdobeAssetFile itemAtPos = AdobeUXMobilePackageItemOneUpViewerActivity.this.mobilePackageItemsOneUpViewController.getItemAtPos(AdobeUXMobilePackageItemOneUpViewerActivity.this.mPos);
                AdobeStorageAssetSelectionState.resetSelectedAssets();
                AdobeStoragePhotoAssetSelectionState.resetSelectedAssets();
                AdobeAssetMobileCreationSelectionState.resetSelection();
                AdobeAssetMobileCreationSelectionState.selectPackageItem(AdobeUXMobilePackageItemOneUpViewerActivity.this.mobilePackageItemsOneUpViewController.getPackage(), itemAtPos);
                AdobeUXMobilePackageItemOneUpViewerActivity.this.setResult(-1, new Intent());
                AdobeUXMobilePackageItemOneUpViewerActivity.this.finish();
            }
        });
        setUpMobilePackageController(bundle);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity, com.adobe.creativesdk.foundation.internal.storage.controllers.IAssetViewerActivity
    public void hideOrShowActionsBar() {
        hideOrShowBaseActivityActionsBar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeMobilePackageInitializedObserver() {
        if (this._mobilePackageOneupControllerInitializedObserver != null) {
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeMobilePackageOneUpControllerInitialized, this._mobilePackageOneupControllerInitializedObserver);
            this._mobilePackageOneupControllerInitializedObserver = null;
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected ViewPager.SimpleOnPageChangeListener getItemPageChangeListener() {
        return new AdobeUXMobilePackageItemPageChangeListener();
    }

    public View.OnTouchListener getItemTouchListener() {
        return this.mPagerOnTouchListener;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity, com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        removeMobilePackageInitializedObserver();
        AdobeNetworkReachabilityUtil.destorySharedInstance();
        try {
            if (this.mImagePath != null) {
                FileUtils.deleteDirectory(this.mImagePath);
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        synchronized (AdobeUXMobilePackageItemOneUpViewerActivity.class) {
            _network_reachbility_obj = null;
        }
        super.onDestroy();
    }

    String getUniqueNameForAsset(AdobeAsset adobeAsset) {
        String guid = adobeAsset.getGUID();
        if (guid == null || guid.length() == 0) {
            return adobeAsset.getName().replace(".", d.ROLL_OVER_FILE_NAME_SEPARATOR);
        }
        String[] strArrSplit = guid.split(URIUtil.SLASH);
        if (strArrSplit.length > 1) {
            return strArrSplit[strArrSplit.length - 1];
        }
        return strArrSplit[0];
    }

    void generateShareIntentInfo() {
        if (this.mobileCreationConfiguration.isMenuEnabled()) {
            final AdobeAssetFile itemAtPos = this.mobilePackageItemsOneUpViewController.getItemAtPos(this.mPos);
            IAdobeGenericRequestCallback<byte[], AdobeAssetException> iAdobeGenericRequestCallback = new IAdobeGenericRequestCallback<byte[], AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity.4
                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public final void onProgress(double d2) {
                }

                protected void handleNoPreview() {
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                public void onCancellation() {
                    handleNoPreview();
                }

                /* JADX WARN: Type inference failed for: r0v0, types: [com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity$4$1GetImageUri] */
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(byte[] bArr) {
                    new AsyncTask<byte[], Integer, Uri>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity.4.1GetImageUri
                        boolean _failed;

                        /* JADX INFO: Access modifiers changed from: protected */
                        /* JADX WARN: Removed duplicated region for block: B:39:0x0085 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                        @Override // android.os.AsyncTask
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public android.net.Uri doInBackground(byte[]... r7) throws java.lang.Throwable {
                            /*
                                r6 = this;
                                r2 = 1
                                r1 = 0
                                r0 = 0
                                r6._failed = r1
                                if (r7 != 0) goto La
                                r6._failed = r2
                            L9:
                                return r0
                            La:
                                r1 = r7[r1]
                                if (r1 != 0) goto L11
                                r6._failed = r2
                                goto L9
                            L11:
                                com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity$4 r2 = com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity.AnonymousClass4.this
                                com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity r2 = com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity.this
                                com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity$4 r3 = com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity.AnonymousClass4.this
                                com.adobe.creativesdk.foundation.storage.AdobeAsset r3 = r2
                                java.lang.String r2 = r2.getUniqueNameForAsset(r3)
                                java.io.File r3 = new java.io.File     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L80
                                com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity$4 r4 = com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity.AnonymousClass4.this     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L80
                                com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity r4 = com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity.this     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L80
                                java.io.File r4 = r4.mImagePath     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L80
                                java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L80
                                r5.<init>()     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L80
                                java.lang.StringBuilder r2 = r5.append(r2)     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L80
                                java.lang.String r5 = ".png"
                                java.lang.StringBuilder r2 = r2.append(r5)     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L80
                                java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L80
                                r3.<init>(r4, r2)     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L80
                                boolean r2 = r3.createNewFile()     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L80
                                if (r2 == 0) goto L92
                                java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L80
                                r2.<init>(r3)     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L80
                                r2.write(r1)     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
                                r2.flush()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
                                com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity$4 r1 = com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity.AnonymousClass4.this     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
                                com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity r1 = com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity.this     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
                                com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity$4 r4 = com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity.AnonymousClass4.this     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
                                com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity r4 = com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity.this     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
                                com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerController r4 = r4._oneUpViewerController     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
                                java.lang.String r4 = r4.getFileProviderAuthority()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
                                android.net.Uri r0 = android.support.v4.content.FileProvider.getUriForFile(r1, r4, r3)     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
                            L5f:
                                if (r2 == 0) goto L9
                                r2.close()     // Catch: java.io.IOException -> L65
                                goto L9
                            L65:
                                r1 = move-exception
                                r1.printStackTrace()
                                goto L9
                            L6a:
                                r1 = move-exception
                                r2 = r0
                            L6c:
                                com.adobe.creativesdk.foundation.internal.utils.logging.Level r3 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.DEBUG     // Catch: java.lang.Throwable -> L8e
                                java.lang.String r4 = "AdobeUXMobilePackageItemOneUpViewerActivity"
                                r5 = 0
                                com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r3, r4, r5, r1)     // Catch: java.lang.Throwable -> L8e
                                if (r2 == 0) goto L9
                                r2.close()     // Catch: java.io.IOException -> L7b
                                goto L9
                            L7b:
                                r1 = move-exception
                                r1.printStackTrace()
                                goto L9
                            L80:
                                r1 = move-exception
                                r2 = r0
                                r0 = r1
                            L83:
                                if (r2 == 0) goto L88
                                r2.close()     // Catch: java.io.IOException -> L89
                            L88:
                                throw r0
                            L89:
                                r1 = move-exception
                                r1.printStackTrace()
                                goto L88
                            L8e:
                                r0 = move-exception
                                goto L83
                            L90:
                                r1 = move-exception
                                goto L6c
                            L92:
                                r2 = r0
                                goto L5f
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity.AnonymousClass4.C1GetImageUri.doInBackground(byte[][]):android.net.Uri");
                        }

                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // android.os.AsyncTask
                        public void onProgressUpdate(Integer... numArr) {
                        }

                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // android.os.AsyncTask
                        public void onPostExecute(Uri uri) {
                        }
                    }.execute(bArr);
                }

                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeAssetException adobeAssetException) {
                    handleNoPreview();
                }
            };
            if (!new File(this.mImagePath, getUniqueNameForAsset(itemAtPos) + ".png").exists()) {
                itemAtPos.getRenditionWithType(AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, new AdobeAssetImageDimensions(0.0f, 0.0f), iAdobeGenericRequestCallback);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected File getShareFile() {
        return new File(this.mImagePath, getUniqueNameForAsset(this.mobilePackageItemsOneUpViewController.getItemAtPos(this.mPos)) + ".png");
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected void initializeConfiguration() {
        this.mobileCreationConfiguration = (AdobeOneUpViewerMobileCreationConfiguration) this._oneUpViewerController.getConfiguration(AdobeOneUpViewerController.ADOBE_ONE_UP_VIEW_MOBILE_CREATION_CONFIGURATION_KEY);
        this.mobilePackageItemsOneUpViewController = MobilePackageItemsOneUpViewController.createInstanceFromPackage(this.mobileCreationConfiguration.getAssetPackagePages(), this.mobileCreationConfiguration.getItemsList(), this.mobileCreationConfiguration.getStartIndex());
        this.configuration = this.mobileCreationConfiguration;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected void updateSelectionBtnVisibility(boolean z) {
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle, PersistableBundle persistableBundle) {
        super.onSaveInstanceState(bundle, persistableBundle);
        this.mobilePackageItemsOneUpViewController.saveInstanceState(bundle);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected String getCurrentAssetName() {
        return this.mobilePackageItemsOneUpViewController.getItemAtPos(this.mPos).getName();
    }

    public class AdobeUXMobilePackageItemCollectionAdapter extends FragmentStatePagerAdapter {
        public AdobeUXMobilePackageItemCollectionAdapter(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // android.support.v4.app.FragmentStatePagerAdapter
        public Fragment getItem(int i) {
            return AdobeUXMobilePackageItemFragment.newInstance(i);
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getCount() {
            return AdobeUXMobilePackageItemOneUpViewerActivity.this.mobilePackageItemsOneUpViewController.getCount();
        }
    }

    public class AdobeUXMobilePackageItemFragment extends Fragment {
        AssetsViewBaseActionBarController _actionBarController;
        private RelativeLayout _main_content_container;
        private View _noInternetConnView;
        private View _noPreviewView;
        PhotoViewData _photoViewData;
        private ProgressBar _spinner;
        private int mIndexPos;

        void visibilityhandler_isOnLine() {
            this._main_content_container.setVisibility(0);
            this._noInternetConnView.setVisibility(8);
            this._noPreviewView.setVisibility(8);
        }

        void visibilityhandler_isOffLineOrError(boolean z) {
            this._main_content_container.setVisibility(8);
            if (z) {
                this._noInternetConnView.setVisibility(0);
                this._noPreviewView.setVisibility(8);
            } else {
                this._noInternetConnView.setVisibility(8);
                this._noPreviewView.setVisibility(0);
            }
            setSpinnerVisibility(false);
        }

        @Override // android.support.v4.app.Fragment
        public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
            getActionBarController().onCreateOptionsMenu(menu, menuInflater);
            super.onCreateOptionsMenu(menu, menuInflater);
        }

        @Override // android.support.v4.app.Fragment
        public void onPrepareOptionsMenu(Menu menu) {
            super.onPrepareOptionsMenu(menu);
            getActionBarController().onPrepareOptionsMenu(menu);
        }

        @Override // android.support.v4.app.Fragment
        public boolean onOptionsItemSelected(MenuItem menuItem) {
            if (getActionBarController().onOptionsItemSelected(menuItem)) {
                return true;
            }
            if (menuItem.getItemId() == 16908332) {
                AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.NAVIGATE_BACK, null);
                return true;
            }
            return super.onOptionsItemSelected(menuItem);
        }

        public static Fragment newInstance(int i) {
            AdobeUXMobilePackageItemFragment adobeUXMobilePackageItemFragment = new AdobeUXMobilePackageItemFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("indexPos", i);
            adobeUXMobilePackageItemFragment.setArguments(bundle);
            return adobeUXMobilePackageItemFragment;
        }

        @Override // android.support.v4.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            setHasOptionsMenu(true);
            this.mIndexPos = getArguments() != null ? getArguments().getInt("indexPos") : -1;
        }

        private void initializeViewWithMobilePackageItem(int i) {
            setupLibraryImageCollectionView(((AdobeUXMobilePackageItemOneUpViewerActivity) getActivity()).mobilePackageItemsOneUpViewController.getItemAtPos(i));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSpinnerVisibility(boolean z) {
            this._spinner.setVisibility(z ? 0 : 8);
        }

        private void setupLibraryImageCollectionView(AdobeAssetFile adobeAssetFile) {
            final PhotoView photoView = new PhotoView(getActivity());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            photoView.setLayoutParams(layoutParams);
            PhotoViewAttacher photoViewAttacher = new PhotoViewAttacher(photoView);
            photoViewAttacher.setOnViewTapListener(new PhotoViewAttacher.OnViewTapListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity.AdobeUXMobilePackageItemFragment.1PhotoTapListener
                @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.PhotoViewAttacher.OnViewTapListener
                public void onViewTap(View view, float f2, float f3) {
                    if (AdobeUXMobilePackageItemFragment.this.getActivity() != null) {
                        ((AdobeUXMobilePackageItemOneUpViewerActivity) AdobeUXMobilePackageItemFragment.this.getActivity()).hideOrShowBaseActivityActionsBar();
                    }
                }
            });
            View.OnLongClickListener onLongClickListener = new View.OnLongClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity.AdobeUXMobilePackageItemFragment.1
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    Intent shareIntent = ((AdobeUXMobilePackageItemOneUpViewerActivity) AdobeUXMobilePackageItemFragment.this.getActivity()).getShareIntent();
                    if (shareIntent != null) {
                        AdobeUXMobilePackageItemFragment.this.startActivity(shareIntent);
                        return true;
                    }
                    return true;
                }
            };
            if (((AdobeUXMobilePackageItemOneUpViewerActivity) getActivity()).mobileCreationConfiguration.isMenuEnabled()) {
                photoViewAttacher.setOnLongClickListener(onLongClickListener);
            }
            adobeAssetFile.getRenditionWithType(AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, new AdobeAssetImageDimensions(1024.0f, 1024.0f), new IAdobeGenericRequestCallback<byte[], AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity.AdobeUXMobilePackageItemFragment.2
                @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                public void onCancellation() {
                }

                /* JADX WARN: Type inference failed for: r1v1, types: [com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity$AdobeUXMobilePackageItemFragment$2$1DecodeImageInBackgroundTask] */
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(byte[] bArr) {
                    new AsyncTask<byte[], Integer, Bitmap>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity.AdobeUXMobilePackageItemFragment.2.1DecodeImageInBackgroundTask
                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // android.os.AsyncTask
                        public Bitmap doInBackground(byte[]... bArr2) {
                            byte[] bArr3 = bArr2[0];
                            if (bArr3 != null) {
                                return BitmapFactory.decodeByteArray(bArr3, 0, bArr3.length);
                            }
                            return null;
                        }

                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // android.os.AsyncTask
                        public void onPostExecute(Bitmap bitmap) {
                            RelativeLayout.LayoutParams layoutParams2;
                            if (bitmap != null) {
                                if (AdobeUXMobilePackageItemFragment.this.getActivity() != null) {
                                    if (AdobeUXMobilePackageItemFragment.this._photoViewData == null || (bitmap.getWidth() > AdobeUXMobilePackageItemFragment.this._photoViewData._currentImageWidth && bitmap.getHeight() > AdobeUXMobilePackageItemFragment.this._photoViewData._currentImageHeight)) {
                                        AdobeUXMobilePackageItemFragment.this.visibilityhandler_isOnLine();
                                        AdobeUXMobilePackageItemFragment.this._photoViewData = new PhotoViewData();
                                        AdobeUXMobilePackageItemFragment.this._photoViewData._currentImageWidth = bitmap.getWidth();
                                        AdobeUXMobilePackageItemFragment.this._photoViewData._currentImageHeight = bitmap.getHeight();
                                        DisplayMetrics displayMetrics = AdobeUXMobilePackageItemFragment.this.getResources().getDisplayMetrics();
                                        if (bitmap.getWidth() < displayMetrics.widthPixels || bitmap.getHeight() < displayMetrics.heightPixels) {
                                            layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
                                        } else {
                                            layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
                                        }
                                        layoutParams2.addRule(13);
                                        photoView.setLayoutParams(layoutParams2);
                                        photoView.setImageBitmap(BitMapUtil.getFinalBitMapWithWhiteBackground(bitmap, displayMetrics.widthPixels, displayMetrics.heightPixels));
                                        AdobeUXMobilePackageItemFragment.this.setSpinnerVisibility(false);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            AdobeLogger.log(Level.ERROR, "AdobeMobileCreations:OneUpView", "Decoding data");
                        }
                    }.execute(bArr);
                    AdobeUXMobilePackageItemOneUpViewerActivity adobeUXMobilePackageItemOneUpViewerActivity = (AdobeUXMobilePackageItemOneUpViewerActivity) AdobeUXMobilePackageItemFragment.this.getActivity();
                    if (adobeUXMobilePackageItemOneUpViewerActivity != null) {
                        adobeUXMobilePackageItemOneUpViewerActivity.generateShareIntentInfo();
                    }
                }

                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeAssetException adobeAssetException) {
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
            this._main_content_container.addView(photoView);
        }

        private void handleNoImageItemPreview() {
            visibilityhandler_isOffLineOrError(false);
        }

        @Override // android.support.v4.app.Fragment
        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            View viewInflate = layoutInflater.inflate(R.layout.mobilepackage_item_fragment, viewGroup, false);
            this._main_content_container = (RelativeLayout) viewInflate.findViewById(R.id.adobe_csdk_mobilepackage_item_fragment_content_container);
            this._noInternetConnView = viewInflate.findViewById(R.id.adobe_csdk_mobilepackage_item_no_internet_connection);
            this._noPreviewView = viewInflate.findViewById(R.id.adobe_csdk_mobilepackage_item_no_preview);
            this._spinner = (ProgressBar) viewInflate.findViewById(R.id.adobe_csdk_mobilepackage_item_progressbar_new);
            setSpinnerVisibility(true);
            if (AdobeAssetShareBaseOneUpActivity.isNetworkAvailable()) {
                visibilityhandler_isOnLine();
                initializeViewWithMobilePackageItem(this.mIndexPos);
            } else {
                visibilityhandler_isOffLineOrError(true);
            }
            return viewInflate;
        }

        @Override // android.support.v4.app.Fragment
        public void onAttach(Activity activity) {
            super.onAttach(activity);
        }

        protected AssetsViewBaseActionBarController getActionBarController() {
            if (this._actionBarController == null) {
                this._actionBarController = createActionBarController();
            }
            return this._actionBarController;
        }

        protected AssetsViewBaseActionBarController createActionBarController() {
            return new AssetsViewBaseActionBarController();
        }

        public class AssetsViewBaseActionBarController {
            protected MenuItem _downloadmenuItem;

            protected AssetsViewBaseActionBarController() {
            }

            public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
            }

            public void onPrepareOptionsMenu(Menu menu) {
            }

            protected boolean shouldEnableMyAccountMenu() {
                return !AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(AdobeUXMobilePackageItemFragment.this.getActivity());
            }

            public void handleCurrentNetworkStatus(boolean z) {
            }

            public void handlePostOnCreate(Bundle bundle) {
            }

            protected boolean handleOptionItemSelect(int i) {
                return false;
            }

            public boolean onOptionsItemSelected(MenuItem menuItem) {
                return handleOptionItemSelect(menuItem.getItemId());
            }

            public void refreshOptionItems() {
            }

            public void handleOnStart() {
            }

            public void saveActionBarInstanceState() {
            }
        }
    }
}
