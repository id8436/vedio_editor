package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PersistableBundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.util.DisplayMetrics;
import android.view.KeyCharacterMap;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import c.a.a.a.a.d.d;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.colortheme.helper.ACColorThemeAssetHelper;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.colortheme.model.ACAdobeColor;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.colortheme.model.ACAdobeColorTheme;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.util.ACLibraryAssetRenditionUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeDesignLibraryUtilsInternal;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStorageLibrarySelectionState;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewDataType;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerLibraryConfiguration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapCache;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.internal.storage.controllers.designlibrary.LibraryItemsOneUpViewController;
import com.adobe.creativesdk.foundation.internal.utils.BitMapUtil;
import com.adobe.creativesdk.foundation.internal.utils.DrawShadowRelativeLayout;
import com.adobe.creativesdk.foundation.internal.utils.NavBarUtil;
import com.adobe.creativesdk.foundation.internal.utils.photoview.PhotoView;
import com.adobe.creativesdk.foundation.internal.utils.photoview.PhotoViewAttacher;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Observable;
import java.util.Observer;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeUXLibraryItemCollectionOneUpViewerActivity extends AdobeAssetShareBaseOneUpActivity {
    private Observer _libraryOneupControllerInitializedObserver = null;
    ReusableImageBitmapWorker _reusableBitmapCacheWorker;
    AdobeAssetViewerController assetViewerController;
    AdobeOneUpViewerLibraryConfiguration libraryConfiguration;
    LibraryItemsOneUpViewController libraryItemsOneUpViewController;

    public class PhotoViewData {
        public int _currentImageHeight;
        public int _currentImageWidth;
    }

    class AdobeUXLibraryItemCollectionPageChangeListener extends ViewPager.SimpleOnPageChangeListener {
        private AdobeUXLibraryItemCollectionPageChangeListener() {
        }

        @Override // android.support.v4.view.ViewPager.SimpleOnPageChangeListener, android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            AdobeUXLibraryItemCollectionOneUpViewerActivity.this.pageChanged = true;
            AdobeUXLibraryItemCollectionOneUpViewerActivity.this.mPos = i;
            AdobeUXLibraryItemCollectionOneUpViewerActivity.this.updateTitleOfActivity();
            AdobeUXLibraryItemCollectionOneUpViewerActivity.this.updatePageBackground(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTitleOfActivity() {
        if (this.mPhotoNumber != null) {
            this.mPhotoNumber.setText(String.format(getString(R.string.adobe_csdk_IDS_ASSET_VIEWER_OF_2), Integer.valueOf(this.mPos + 1), Integer.valueOf(this.libraryItemsOneUpViewController.getCount())));
        }
        AdobeLibraryElement itemAtPos = this.libraryItemsOneUpViewController.getItemAtPos(this.mPos);
        if (itemAtPos != null && !itemAtPos.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryColorElementType)) {
            setActionBarTitle(AdobeDesignLibraryUtilsInternal.getNameOrIdForDisplay(itemAtPos));
        }
    }

    private void setUpLibraryController(Bundle bundle) {
        if (this._reusableBitmapCacheWorker == null) {
            ReusableImageBitmapCache.ImageCacheParams imageCacheParams = new ReusableImageBitmapCache.ImageCacheParams();
            imageCacheParams.setMemCacheSizePercent(0.1f);
            this._reusableBitmapCacheWorker = new ReusableImageBitmapWorker(this);
            this._reusableBitmapCacheWorker.addImageCache(getSupportFragmentManager(), imageCacheParams);
        }
        if (this.libraryItemsOneUpViewController != null) {
            startItemsOneUpDisplay();
            return;
        }
        this._libraryOneupControllerInitializedObserver = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXLibraryItemCollectionOneUpViewerActivity.1
            @Override // java.util.Observer
            public void update(Observable observable, Object obj) {
                AdobeUXLibraryItemCollectionOneUpViewerActivity.this.removeLibraryInitializedObserver();
                AdobeUXLibraryItemCollectionOneUpViewerActivity.this.startItemsOneUpDisplay();
            }
        };
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeLibraryOneUpControllerInitialized, this._libraryOneupControllerInitializedObserver);
        this.libraryItemsOneUpViewController = LibraryItemsOneUpViewController.createInstanceFromConfigurationBundle(bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startItemsOneUpDisplay() {
        this.mAdapter = new AdobeUXLibraryItemCollectionAdapter(getSupportFragmentManager());
        this.mPager.setAdapter(this.mAdapter);
        this.mPos = this.libraryItemsOneUpViewController.getStartIndex();
        this.mPager.setCurrentItem(this.mPos, false);
        updateTitleOfActivity();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected void updateOpenBtnContainerVisibility() {
        if (AdobeStorageLibrarySelectionState.isSelectModeActive()) {
            this.mOpenBtnContainer.setVisibility(0);
        } else {
            this.mOpenBtnContainer.setVisibility(8);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity, com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initiateView();
        this.mOpenBtn.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXLibraryItemCollectionOneUpViewerActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdobeUXLibraryItemCollectionOneUpViewerActivity.this.handleOpenBtnClick();
            }
        });
        setUpLibraryController(bundle);
    }

    private void initiateView() {
        if (Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(this)).booleanValue()) {
            BottomAssetClickListener bottomAssetClickListener = new BottomAssetClickListener(this);
            this.mBottomBar.setVisibility(0);
            this.mCommentBottomBar.setVisibility(8);
            this.mEditBottomBar.setVisibility(8);
            this.mShareBottomBar.setOnClickListener(bottomAssetClickListener);
            this.mInfoBottomBar.setOnClickListener(bottomAssetClickListener);
        }
    }

    class BottomAssetClickListener implements View.OnClickListener {
        private Activity activity;

        public BottomAssetClickListener(Activity activity) {
            this.activity = activity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getId() == AdobeUXLibraryItemCollectionOneUpViewerActivity.this.mShareBottomBar.getId()) {
                Intent shareIntent = AdobeUXLibraryItemCollectionOneUpViewerActivity.this.getShareIntent();
                if (shareIntent != null) {
                    AdobeUXLibraryItemCollectionOneUpViewerActivity.this.startActivity(shareIntent);
                    return;
                }
                return;
            }
            if (view.getId() == AdobeUXLibraryItemCollectionOneUpViewerActivity.this.mInfoBottomBar.getId()) {
                AdobeLibraryElement itemAtPos = AdobeUXLibraryItemCollectionOneUpViewerActivity.this.libraryItemsOneUpViewController.getItemAtPos(AdobeUXLibraryItemCollectionOneUpViewerActivity.this.mPos);
                AdobeOneUpViewData adobeOneUpViewData = new AdobeOneUpViewData();
                adobeOneUpViewData.setOriginalAsset(itemAtPos);
                adobeOneUpViewData.setType(AdobeOneUpViewDataType.ADOBE_ONE_UP_VIEW_DATA_TYPE_LIBRARY);
                AdobeUXLibraryItemCollectionOneUpViewerActivity.this.libraryConfiguration.getEventHandler().handleMenuClick(0, adobeOneUpViewData, this.activity, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOpenBtnClick() {
        AdobeLibraryElement currentLibraryItem = getCurrentLibraryItem();
        AdobeLibraryComposite library = this.libraryItemsOneUpViewController.getLibrary();
        if (AdobeStorageLibrarySelectionState.isSelectModeActive()) {
            AdobeStorageLibrarySelectionState.selectLibrary(currentLibraryItem, library);
        }
        setResult(-1, new Intent());
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeLibraryInitializedObserver() {
        if (this._libraryOneupControllerInitializedObserver != null) {
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeLibraryOneUpControllerInitialized, this._libraryOneupControllerInitializedObserver);
            this._libraryOneupControllerInitializedObserver = null;
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity, com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        removeLibraryInitializedObserver();
        AdobeNetworkReachabilityUtil.destorySharedInstance();
        synchronized (AdobeUXLibraryItemCollectionOneUpViewerActivity.class) {
            _network_reachbility_obj = null;
        }
        if (this._reusableBitmapCacheWorker != null) {
            this._reusableBitmapCacheWorker.clearCache();
        }
        this._reusableBitmapCacheWorker = null;
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle, PersistableBundle persistableBundle) {
        super.onSaveInstanceState(bundle, persistableBundle);
        this.libraryItemsOneUpViewController.saveInstanceState(bundle);
    }

    private void handleAssetSelectionChanged() {
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(final Menu menu) {
        View viewInflate;
        if (this.libraryConfiguration.isMenuEnabled() && this.libraryConfiguration.getMenuLayout() != -1) {
            getMenuInflater().inflate(this.libraryConfiguration.getMenuLayout(), menu);
            for (final int i = 0; i < menu.size(); i++) {
                menu.getItem(i).setTitle(getAdobeString(menu.getItem(i).getTitle().toString()));
                Integer actionViewID = this.libraryConfiguration.getActionViewID(menu.getItem(i).getItemId());
                if (actionViewID != null && (viewInflate = getLayoutInflater().inflate(actionViewID.intValue(), (ViewGroup) null)) != null) {
                    menu.getItem(i).setActionView(viewInflate);
                    this.libraryConfiguration.setActionView(menu.getItem(i).getItemId(), viewInflate);
                    viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXLibraryItemCollectionOneUpViewerActivity.3
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            if (AdobeUXLibraryItemCollectionOneUpViewerActivity.this.libraryConfiguration.getEventHandler() != null) {
                                AdobeLibraryElement itemAtPos = AdobeUXLibraryItemCollectionOneUpViewerActivity.this.libraryItemsOneUpViewController.getItemAtPos(AdobeUXLibraryItemCollectionOneUpViewerActivity.this.mPos);
                                AdobeOneUpViewData adobeOneUpViewData = new AdobeOneUpViewData();
                                adobeOneUpViewData.setOriginalAsset(itemAtPos);
                                adobeOneUpViewData.setType(AdobeOneUpViewDataType.ADOBE_ONE_UP_VIEW_DATA_TYPE_LIBRARY);
                                AdobeUXLibraryItemCollectionOneUpViewerActivity.this.libraryConfiguration.getEventHandler().handleMenuClick(menu.getItem(i).getItemId(), adobeOneUpViewData, this, null);
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
            AdobeLibraryElement itemAtPos = this.libraryItemsOneUpViewController.getItemAtPos(this.mPos);
            if (this.libraryConfiguration.getEventHandler() != null) {
                AdobeOneUpViewData adobeOneUpViewData = new AdobeOneUpViewData();
                adobeOneUpViewData.setOriginalAsset(itemAtPos);
                adobeOneUpViewData.setType(AdobeOneUpViewDataType.ADOBE_ONE_UP_VIEW_DATA_TYPE_FILES);
                this.libraryConfiguration.getEventHandler().handleMenuClick(menuItem.getItemId(), adobeOneUpViewData, this, null);
            }
        }
        return true;
    }

    AdobeLibraryElement getCurrentLibraryItem() {
        return this.libraryItemsOneUpViewController.getItemAtPos(this.mPager.getCurrentItem());
    }

    public void updatePageBackground(boolean z) {
        if (this.mAdapter != null && this.mAdapter.getCount() > 0) {
            AdobeLibraryElement currentLibraryItem = getCurrentLibraryItem();
            if (currentLibraryItem.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryImageElementType) || currentLibraryItem.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryCharacterStyleElementType)) {
            }
        }
        this.mPager.setBackgroundColor(getResources().getColor(R.color.adobe_csdk_oneupview_background_color));
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected ViewPager.SimpleOnPageChangeListener getItemPageChangeListener() {
        return new AdobeUXLibraryItemCollectionPageChangeListener();
    }

    public View.OnTouchListener getItemTouchListener() {
        return this.mPagerOnTouchListener;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity, com.adobe.creativesdk.foundation.internal.storage.controllers.IAssetViewerActivity
    @SuppressLint({"InlinedApi"})
    public void hideOrShowActionsBar() {
        int i;
        ActionBar supportActionBar = getSupportActionBar();
        ViewConfiguration.get(this).hasPermanentMenuKey();
        KeyCharacterMap.deviceHasKey(4);
        if (supportActionBar != null) {
            if (supportActionBar.isShowing()) {
                supportActionBar.hide();
                this.mOpenBtnContainer.setVisibility(8);
                ((DrawShadowRelativeLayout) this.mainView).setShadowVisible(false, false);
                updatePageBackground(false);
                this.mPager.setPadding(0, 0, 0, 0);
                if (Build.VERSION.SDK_INT >= 16) {
                    i = Build.VERSION.SDK_INT >= 19 ? 2052 : 4;
                } else {
                    i = 0;
                }
                View decorView = getWindow().getDecorView();
                if (NavBarUtil.getHasTranslucentNav(this)) {
                    i |= 1794;
                }
                decorView.setSystemUiVisibility(i);
                return;
            }
            supportActionBar.show();
            ((DrawShadowRelativeLayout) this.mainView).setShadowVisible(true, false);
            updateOpenBtnContainerVisibility();
            updatePageBackground(false);
            this.mPager.setPadding(0, supportActionBar.getHeight(), 0, 0);
            getWindow().getDecorView().setSystemUiVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0060 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void generateShareFileFromDrawable(android.graphics.drawable.BitmapDrawable r7, java.lang.String r8) throws java.lang.Throwable {
        /*
            r6 = this;
            r2 = 0
            if (r7 == 0) goto L36
            android.graphics.Bitmap r0 = r7.getBitmap()
            java.io.File r3 = new java.io.File     // Catch: java.lang.Exception -> L41 java.lang.Throwable -> L5c
            java.io.File r1 = r6.mImagePath     // Catch: java.lang.Exception -> L41 java.lang.Throwable -> L5c
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L41 java.lang.Throwable -> L5c
            r4.<init>()     // Catch: java.lang.Exception -> L41 java.lang.Throwable -> L5c
            java.lang.StringBuilder r4 = r4.append(r8)     // Catch: java.lang.Exception -> L41 java.lang.Throwable -> L5c
            java.lang.String r5 = ".png"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Exception -> L41 java.lang.Throwable -> L5c
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> L41 java.lang.Throwable -> L5c
            r3.<init>(r1, r4)     // Catch: java.lang.Exception -> L41 java.lang.Throwable -> L5c
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Exception -> L41 java.lang.Throwable -> L5c
            r1.<init>(r3)     // Catch: java.lang.Exception -> L41 java.lang.Throwable -> L5c
            android.graphics.Bitmap$CompressFormat r3 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            r4 = 100
            r0.compress(r3, r4, r1)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            r1.flush()     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            if (r1 == 0) goto L36
            r1.close()     // Catch: java.io.IOException -> L37
        L36:
            return
        L37:
            r0 = move-exception
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r1 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.DEBUG
            java.lang.String r3 = "AdobeUXLibraryItemCollectionOneUpViewerActivity"
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r1, r3, r2, r0)
            goto L36
        L41:
            r0 = move-exception
            r1 = r2
        L43:
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r3 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.DEBUG     // Catch: java.lang.Throwable -> L6e
            java.lang.String r4 = "AdobeUXLibraryItemCollectionOneUpViewerActivity"
            r5 = 0
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r3, r4, r5, r0)     // Catch: java.lang.Throwable -> L6e
            if (r1 == 0) goto L36
            r1.close()     // Catch: java.io.IOException -> L52
            goto L36
        L52:
            r0 = move-exception
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r1 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.DEBUG
            java.lang.String r3 = "AdobeUXLibraryItemCollectionOneUpViewerActivity"
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r1, r3, r2, r0)
            goto L36
        L5c:
            r0 = move-exception
            r1 = r2
        L5e:
            if (r1 == 0) goto L63
            r1.close()     // Catch: java.io.IOException -> L64
        L63:
            throw r0
        L64:
            r1 = move-exception
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r3 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.DEBUG
            java.lang.String r4 = "AdobeUXLibraryItemCollectionOneUpViewerActivity"
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r3, r4, r2, r1)
            goto L63
        L6e:
            r0 = move-exception
            goto L5e
        L70:
            r0 = move-exception
            goto L43
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXLibraryItemCollectionOneUpViewerActivity.generateShareFileFromDrawable(android.graphics.drawable.BitmapDrawable, java.lang.String):void");
    }

    void generateShareIntentInfo() throws Throwable {
        if (this.libraryConfiguration.isMenuEnabled()) {
            int i = this.mPos;
            final AdobeLibraryElement itemAtPos = this.libraryItemsOneUpViewController.getItemAtPos(this.mPos);
            AdobeLibraryComposite library = this.libraryItemsOneUpViewController.getLibrary();
            boolean z = itemAtPos.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryColorElementType) || itemAtPos.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryColorThemeElementType);
            if (itemAtPos != null && !z) {
                final String uniqueNameForLibraryItem = getUniqueNameForLibraryItem(itemAtPos);
                if (this._reusableBitmapCacheWorker != null) {
                    BitmapDrawable bitmapDrawableLoadImage = this._reusableBitmapCacheWorker.loadImage(itemAtPos.getElementId());
                    if (bitmapDrawableLoadImage != null) {
                        generateShareFileFromDrawable(bitmapDrawableLoadImage, uniqueNameForLibraryItem);
                    } else {
                        ACLibraryAssetRenditionUtils.fetchAnyImageRepresentation(500, library, itemAtPos, new IAdobeGenericRequestCallback<String, AdobeLibraryException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXLibraryItemCollectionOneUpViewerActivity.4
                            @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                            public void onCancellation() {
                            }

                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                            public void onCompletion(String str) {
                                AdobeAssetImageDimensions adobeAssetImageDimensions = new AdobeAssetImageDimensions(450.0f, 0.0f);
                                if (new File(str).exists() && AdobeUXLibraryItemCollectionOneUpViewerActivity.this._reusableBitmapCacheWorker != null) {
                                    AdobeUXLibraryItemCollectionOneUpViewerActivity.this._reusableBitmapCacheWorker.loadImageFromFile(itemAtPos.getElementId(), str, adobeAssetImageDimensions, new IAdobeGenericCompletionCallback<BitmapDrawable>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXLibraryItemCollectionOneUpViewerActivity.4.1
                                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                                        public void onCompletion(BitmapDrawable bitmapDrawable) throws Throwable {
                                            AdobeUXLibraryItemCollectionOneUpViewerActivity.this.generateShareFileFromDrawable(bitmapDrawable, uniqueNameForLibraryItem);
                                        }
                                    }, new IAdobeGenericErrorCallback<AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXLibraryItemCollectionOneUpViewerActivity.4.2
                                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                                        public void onError(AdobeAssetException adobeAssetException) {
                                        }
                                    });
                                }
                            }

                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                            public void onError(AdobeLibraryException adobeLibraryException) {
                            }

                            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                            public void onProgress(double d2) {
                            }
                        }, new Handler(Looper.getMainLooper()));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getUniqueNameForLibraryItem(AdobeLibraryElement adobeLibraryElement) {
        String elementId = adobeLibraryElement.getElementId();
        if (elementId == null || elementId.length() == 0) {
            return adobeLibraryElement.getName().replace(".", d.ROLL_OVER_FILE_NAME_SEPARATOR);
        }
        String[] strArrSplit = elementId.split(URIUtil.SLASH);
        if (strArrSplit.length > 1) {
            return strArrSplit[strArrSplit.length - 1];
        }
        return strArrSplit[0];
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected File getShareFile() {
        return new File(this.mImagePath, getUniqueNameForLibraryItem(this.libraryItemsOneUpViewController.getItemAtPos(this.mPos)) + ".png");
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected void initializeConfiguration() {
        this.libraryConfiguration = (AdobeOneUpViewerLibraryConfiguration) this._oneUpViewerController.getConfiguration(AdobeOneUpViewerController.ADOBE_ONE_UP_VIEW_LIBRARY_CONFIGURATION_KEY);
        this.assetViewerController = AdobeAssetViewerController.createAssetViewController(null);
        this.libraryItemsOneUpViewController = LibraryItemsOneUpViewController.createInstanceFromLibrary(this.libraryConfiguration.getLibrary(), this.libraryConfiguration.getItemsList(), this.libraryConfiguration.getStartIndex());
        this.configuration = this.libraryConfiguration;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected String getCurrentAssetName() {
        return this.libraryItemsOneUpViewController.getItemAtPos(this.mPos).getName();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected void updateSelectionBtnVisibility(boolean z) {
    }

    public class AdobeUXLibraryItemCollectionAdapter extends FragmentStatePagerAdapter {
        public AdobeUXLibraryItemCollectionAdapter(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // android.support.v4.app.FragmentStatePagerAdapter
        public Fragment getItem(int i) {
            return AdobeUXLibraryItemFragment.newInstance(i);
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getCount() {
            return AdobeUXLibraryItemCollectionOneUpViewerActivity.this.libraryItemsOneUpViewController.getCount();
        }
    }

    public class AdobeUXLibraryItemFragment extends Fragment {
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

        public static Fragment newInstance(int i) {
            AdobeUXLibraryItemFragment adobeUXLibraryItemFragment = new AdobeUXLibraryItemFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("indexPos", i);
            adobeUXLibraryItemFragment.setArguments(bundle);
            return adobeUXLibraryItemFragment;
        }

        @Override // android.support.v4.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            this.mIndexPos = getArguments() != null ? getArguments().getInt("indexPos") : -1;
        }

        private boolean libraryItemAsImageRendition(AdobeLibraryElement adobeLibraryElement) {
            return adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryImageElementType) || adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryBrushElementType) || adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryCharacterStyleElementType) || adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryLayerStyleElementType) || adobeLibraryElement.getType().equals("application/vnd.adobe.element.look+dcx") || adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryPatternElementType) || adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryTemplateElementType) || adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibrary3DMaterialElementType) || adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibrary3DLightElementType) || adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibrary3DModelElementType) || adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryAnimationElementType);
        }

        private void initializeViewWithLibraryItem(int i) throws Throwable {
            AdobeUXLibraryItemCollectionOneUpViewerActivity adobeUXLibraryItemCollectionOneUpViewerActivity = (AdobeUXLibraryItemCollectionOneUpViewerActivity) getActivity();
            AdobeLibraryElement itemAtPos = adobeUXLibraryItemCollectionOneUpViewerActivity.libraryItemsOneUpViewController.getItemAtPos(i);
            AdobeLibraryComposite library = adobeUXLibraryItemCollectionOneUpViewerActivity.libraryItemsOneUpViewController.getLibrary();
            if (itemAtPos != null) {
                if (itemAtPos.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryColorElementType)) {
                    setupColorView(itemAtPos, library);
                    setSpinnerVisibility(false);
                } else if (itemAtPos.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryColorThemeElementType)) {
                    setupColorThemeView(itemAtPos, library);
                    setSpinnerVisibility(false);
                } else if (libraryItemAsImageRendition(itemAtPos)) {
                    setupLibraryImageCollectionView(itemAtPos, library);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSpinnerVisibility(boolean z) {
            this._spinner.setVisibility(z ? 0 : 8);
        }

        private void updatePhotoViewBackground(boolean z) {
            AdobeUXLibraryItemCollectionOneUpViewerActivity adobeUXLibraryItemCollectionOneUpViewerActivity = (AdobeUXLibraryItemCollectionOneUpViewerActivity) getActivity();
            if (adobeUXLibraryItemCollectionOneUpViewerActivity != null) {
                adobeUXLibraryItemCollectionOneUpViewerActivity.updatePageBackground(z);
            }
        }

        private Bitmap decodeFile(String str) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            int iPow = (options.outHeight > 576 || options.outWidth > 576) ? (int) Math.pow(2.0d, (int) Math.ceil(Math.log(576.0d / ((double) Math.max(options.outHeight, options.outWidth))) / Math.log(0.5d))) : 1;
            BitmapFactory.Options options2 = new BitmapFactory.Options();
            options2.inSampleSize = iPow;
            return BitmapFactory.decodeFile(str, options2);
        }

        private void setupLibraryImageCollectionView(final AdobeLibraryElement adobeLibraryElement, AdobeLibraryComposite adobeLibraryComposite) {
            RelativeLayout.LayoutParams layoutParams;
            final PhotoView photoView = new PhotoView(getActivity());
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(13);
            photoView.setLayoutParams(layoutParams2);
            new PhotoViewAttacher(photoView).setOnViewTapListener(new PhotoViewAttacher.OnViewTapListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXLibraryItemCollectionOneUpViewerActivity.AdobeUXLibraryItemFragment.1PhotoTapListener
                @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.PhotoViewAttacher.OnViewTapListener
                public void onViewTap(View view, float f2, float f3) {
                    if (AdobeUXLibraryItemFragment.this.getActivity() != null) {
                        ((AdobeUXLibraryItemCollectionOneUpViewerActivity) AdobeUXLibraryItemFragment.this.getActivity()).hideOrShowActionsBar();
                    }
                }
            });
            final AdobeUXLibraryItemCollectionOneUpViewerActivity adobeUXLibraryItemCollectionOneUpViewerActivity = (AdobeUXLibraryItemCollectionOneUpViewerActivity) getActivity();
            final AdobeAssetImageDimensions adobeAssetImageDimensions = new AdobeAssetImageDimensions(450.0f, 0.0f);
            BitmapDrawable bitmapDrawableLoadImage = adobeUXLibraryItemCollectionOneUpViewerActivity._reusableBitmapCacheWorker.loadImage(adobeLibraryElement.getElementId());
            if (bitmapDrawableLoadImage == null) {
                if (!ACLibraryAssetRenditionUtils.fetchAnyImageRepresentation(ACLibraryAssetRenditionUtils.maxthumbnailSize(adobeLibraryElement, 1, getActivity(), false), adobeUXLibraryItemCollectionOneUpViewerActivity.libraryItemsOneUpViewController.getLibrary(), adobeLibraryElement, new IAdobeGenericRequestCallback<String, AdobeLibraryException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXLibraryItemCollectionOneUpViewerActivity.AdobeUXLibraryItemFragment.1
                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                    public void onCancellation() {
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(String str) {
                        if (str == null || str.isEmpty()) {
                            AdobeUXLibraryItemFragment.this.handleNoImageItemPreview();
                            return;
                        }
                        if (adobeUXLibraryItemCollectionOneUpViewerActivity != null && adobeUXLibraryItemCollectionOneUpViewerActivity._reusableBitmapCacheWorker != null) {
                            if (!new File(str).exists()) {
                                AdobeUXLibraryItemFragment.this.handleNoImageItemPreview();
                            } else {
                                adobeUXLibraryItemCollectionOneUpViewerActivity._reusableBitmapCacheWorker.loadImageFromFile(adobeLibraryElement.getElementId(), str, adobeAssetImageDimensions, new IAdobeGenericCompletionCallback<BitmapDrawable>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXLibraryItemCollectionOneUpViewerActivity.AdobeUXLibraryItemFragment.1.1
                                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                                    public void onCompletion(BitmapDrawable bitmapDrawable) throws Throwable {
                                        RelativeLayout.LayoutParams layoutParams3;
                                        Bitmap bitmap = bitmapDrawable.getBitmap();
                                        adobeUXLibraryItemCollectionOneUpViewerActivity.generateShareIntentInfo();
                                        if (bitmap == null) {
                                            AdobeUXLibraryItemFragment.this.handleNoImageItemPreview();
                                            return;
                                        }
                                        if (AdobeUXLibraryItemFragment.this.getActivity() != null) {
                                            if (AdobeUXLibraryItemFragment.this._photoViewData == null || (bitmap.getWidth() > AdobeUXLibraryItemFragment.this._photoViewData._currentImageWidth && bitmap.getHeight() > AdobeUXLibraryItemFragment.this._photoViewData._currentImageHeight)) {
                                                AdobeUXLibraryItemFragment.this.visibilityhandler_isOnLine();
                                                AdobeUXLibraryItemFragment.this._photoViewData = new PhotoViewData();
                                                AdobeUXLibraryItemFragment.this._photoViewData._currentImageWidth = bitmap.getWidth();
                                                AdobeUXLibraryItemFragment.this._photoViewData._currentImageHeight = bitmap.getHeight();
                                                DisplayMetrics displayMetrics = AdobeUXLibraryItemFragment.this.getResources().getDisplayMetrics();
                                                if (bitmap.getWidth() < displayMetrics.widthPixels || bitmap.getHeight() < displayMetrics.heightPixels) {
                                                    layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
                                                } else {
                                                    layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
                                                }
                                                photoView.setImageBitmap(BitMapUtil.getFinalBitMapWithWhiteBackground(bitmap, displayMetrics.widthPixels, displayMetrics.heightPixels));
                                                layoutParams3.addRule(13);
                                                photoView.setLayoutParams(layoutParams3);
                                                AdobeUXLibraryItemFragment.this.setSpinnerVisibility(false);
                                            }
                                        }
                                    }
                                }, new IAdobeGenericErrorCallback<AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXLibraryItemCollectionOneUpViewerActivity.AdobeUXLibraryItemFragment.1.2
                                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                                    public void onError(AdobeAssetException adobeAssetException) {
                                    }
                                });
                            }
                        }
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeLibraryException adobeLibraryException) {
                    }

                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                    public void onProgress(double d2) {
                    }
                }, new Handler(Looper.getMainLooper()))) {
                    handleNoImageItemPreview();
                }
            } else {
                Bitmap bitmap = bitmapDrawableLoadImage.getBitmap();
                visibilityhandler_isOnLine();
                this._photoViewData = new PhotoViewData();
                this._photoViewData._currentImageWidth = bitmap.getWidth();
                this._photoViewData._currentImageHeight = bitmap.getHeight();
                DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
                if (bitmap.getWidth() < displayMetrics.widthPixels || bitmap.getHeight() < displayMetrics.heightPixels) {
                    layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                } else {
                    layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                }
                photoView.setImageBitmap(BitMapUtil.getFinalBitMapWithWhiteBackground(bitmap, displayMetrics.widthPixels, displayMetrics.heightPixels));
                layoutParams.addRule(13);
                photoView.setLayoutParams(layoutParams);
                setSpinnerVisibility(false);
            }
            this._main_content_container.addView(photoView);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleNoImageItemPreview() {
            visibilityhandler_isOffLineOrError(false);
        }

        private void setupColorThemeView(AdobeLibraryElement adobeLibraryElement, AdobeLibraryComposite adobeLibraryComposite) throws Throwable {
            LinearLayout linearLayout = new LinearLayout(getActivity());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(getResources().getDimensionPixelSize(R.dimen.adobe_csdk_library_oneup_colortheme_width), getResources().getDimensionPixelSize(R.dimen.adobe_csdk_library_oneup_colortheme_height));
            layoutParams.addRule(13);
            linearLayout.setLayoutParams(layoutParams);
            ACAdobeColorTheme colorThemeFromElement = ACColorThemeAssetHelper.getColorThemeFromElement(adobeLibraryComposite, adobeLibraryElement);
            ArrayList arrayList = new ArrayList();
            Iterator<ACAdobeColor> it = colorThemeFromElement._colors.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(it.next().getColor()));
            }
            if (arrayList != null) {
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -1, 1.0f);
                for (int i = 0; i < 5; i++) {
                    View view = new View(getActivity());
                    view.setLayoutParams(layoutParams2);
                    view.setBackgroundColor(((Integer) arrayList.get(i)).intValue());
                    linearLayout.addView(view);
                }
            }
            this._main_content_container.addView(linearLayout);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(linearLayout.getLayoutParams().width, linearLayout.getLayoutParams().height, Bitmap.Config.ARGB_8888);
            linearLayout.draw(new Canvas(bitmapCreateBitmap));
            AdobeUXLibraryItemCollectionOneUpViewerActivity adobeUXLibraryItemCollectionOneUpViewerActivity = (AdobeUXLibraryItemCollectionOneUpViewerActivity) getActivity();
            adobeUXLibraryItemCollectionOneUpViewerActivity.generateShareFileFromDrawable(new BitmapDrawable(adobeUXLibraryItemCollectionOneUpViewerActivity.getResources(), bitmapCreateBitmap), adobeUXLibraryItemCollectionOneUpViewerActivity.getUniqueNameForLibraryItem(adobeLibraryElement));
        }

        private void setupColorView(AdobeLibraryElement adobeLibraryElement, AdobeLibraryComposite adobeLibraryComposite) throws Throwable {
            RelativeLayout relativeLayout = new RelativeLayout(getActivity());
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.adobe_csdk_library_oneup_color_size);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dimensionPixelSize, dimensionPixelSize);
            layoutParams.addRule(13);
            relativeLayout.setLayoutParams(layoutParams);
            relativeLayout.setBackgroundColor(AdobeDesignLibraryUtils.getRGBColorForElement(adobeLibraryElement, adobeLibraryComposite).intValue());
            this._main_content_container.addView(relativeLayout);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(relativeLayout.getLayoutParams().width, relativeLayout.getLayoutParams().height, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            relativeLayout.layout(0, 0, relativeLayout.getLayoutParams().width, relativeLayout.getLayoutParams().height);
            relativeLayout.draw(canvas);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), bitmapCreateBitmap);
            AdobeUXLibraryItemCollectionOneUpViewerActivity adobeUXLibraryItemCollectionOneUpViewerActivity = (AdobeUXLibraryItemCollectionOneUpViewerActivity) getActivity();
            adobeUXLibraryItemCollectionOneUpViewerActivity.generateShareFileFromDrawable(bitmapDrawable, adobeUXLibraryItemCollectionOneUpViewerActivity.getUniqueNameForLibraryItem(adobeLibraryElement));
        }

        @Override // android.support.v4.app.Fragment
        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) throws Throwable {
            View viewInflate = layoutInflater.inflate(R.layout.library_item_fragment, viewGroup, false);
            this._main_content_container = (RelativeLayout) viewInflate.findViewById(R.id.adobe_csdk_library_item_fragment_content_container);
            this._noInternetConnView = viewInflate.findViewById(R.id.adobe_csdk_alibrary_item_no_internet_connection);
            this._noPreviewView = viewInflate.findViewById(R.id.adobe_csdk_library_item_no_preview);
            this._spinner = (ProgressBar) viewInflate.findViewById(R.id.adobe_csdk_library_item_progressbar_new);
            setSpinnerVisibility(true);
            if (AdobeAssetShareBaseOneUpActivity.isNetworkAvailable()) {
                visibilityhandler_isOnLine();
                initializeViewWithLibraryItem(this.mIndexPos);
            } else {
                visibilityhandler_isOffLineOrError(true);
            }
            return viewInflate;
        }

        @Override // android.support.v4.app.Fragment
        public void onAttach(Activity activity) {
            super.onAttach(activity);
        }
    }
}
