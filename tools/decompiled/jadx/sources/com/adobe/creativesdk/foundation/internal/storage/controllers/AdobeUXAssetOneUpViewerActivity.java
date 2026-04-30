package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import c.a.a.a.a.d.d;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachability;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewDataType;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerFilesConfiguration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapCache;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeMultiPageFragmentController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeMultiPageViewState;
import com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.IAdobeMultiPageOneUpFragmentController;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKActionBarController;
import com.adobe.creativesdk.foundation.internal.utils.AdobeLocalizedMgr;
import com.adobe.creativesdk.foundation.internal.utils.coachmarks.IAdobeCoachMarksDismissListener;
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
public class AdobeUXAssetOneUpViewerActivity extends AdobeAssetShareBaseOneUpActivity implements IAssetViewerActivity {
    private AdobeCloud _cloud;
    private ReusableImageBitmapWorker _reusableBitmapCacheWorker;
    protected AdobeAssetViewerController assetViewerController;
    protected AdobeOneUpViewerFilesConfiguration filesOneUpViewerConfiguration;
    private ImageButton mImageSelectbtn;
    private Menu menu;
    private static boolean _shouldForceRefreshScreenshot = false;
    private static AdobeAssetFile _fileUploadedAsCopy = null;
    private boolean isSharing = false;
    private int shareGoingOnAssetPos = -1;
    private boolean isLastCoachMarkAlive = false;

    public static boolean isShouldForceRefreshScreenshot() {
        return _shouldForceRefreshScreenshot;
    }

    public static void setShouldForceRefreshScreenshot(boolean z) {
        _shouldForceRefreshScreenshot = z;
    }

    public static void setFileUploadedAsCopy(AdobeAssetFile adobeAssetFile) {
        _fileUploadedAsCopy = adobeAssetFile;
    }

    class AdobeUXAssetViewerPageChangeListener extends ViewPager.SimpleOnPageChangeListener {
        private AdobeUXAssetViewerPageChangeListener() {
        }

        @Override // android.support.v4.view.ViewPager.SimpleOnPageChangeListener, android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            AdobeUXAssetOneUpViewerActivity.this.pageChanged = true;
            AdobeUXAssetOneUpViewerActivity.this.disableShareOption();
            AdobeUXAssetOneUpViewerActivity.this.handlePageChange(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePageChange(int i) {
        this.mPos = i;
        if (isNetworkAvailable()) {
            showMenuItems();
        } else {
            hideMenuItems();
        }
        if (this.mPhotoNumber != null) {
            this.mPhotoNumber.setText((this.mPos + 1) + " " + getString(R.string.adobe_csdk_IDS_ASSET_VIEWER_OF) + " " + this.assetViewerController.count());
        }
        AdobeAsset assetAtPos = this.assetViewerController.getAssetAtPos(this.mPos);
        updateSelectionBtn();
        AdobeCSDKActionBarController.setTitle(findViewById(android.R.id.content), assetAtPos.getName());
        setShareIntent();
        if (this.mPos >= this.assetViewerController.count() - 5) {
            this.assetViewerController.loadNextPage();
        }
        AdobeAssetFile adobeAssetFile = (AdobeAssetFile) this.assetViewerController.getAssetAtPos(this.mPos);
        if (this.filesOneUpViewerConfiguration.getEventHandler() != null) {
            AdobeOneUpViewData adobeOneUpViewData = new AdobeOneUpViewData();
            adobeOneUpViewData.setOriginalAsset(adobeAssetFile);
            adobeOneUpViewData.setType(AdobeOneUpViewDataType.ADOBE_ONE_UP_VIEW_DATA_TYPE_FILES);
            this.filesOneUpViewerConfiguration.getEventHandler().handleNewPage(adobeOneUpViewData, this._cloud);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity, com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AdobeNetworkReachabilityUtil.destorySharedInstance();
        synchronized (AdobeUXAssetOneUpViewerActivity.class) {
            _network_reachbility_obj = null;
        }
        if (!this.isSharing) {
            try {
                if (this.mImagePath != null) {
                    FileUtils.deleteDirectory(this.mImagePath);
                }
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        super.onDestroy();
        if (this._reusableBitmapCacheWorker != null) {
            this._reusableBitmapCacheWorker.clearCache();
        }
        this._reusableBitmapCacheWorker = null;
        this.assetViewerController.resetCurrentAdobeUXAssetViewerActivity();
    }

    public ReusableImageBitmapWorker getReusableBitmapCacheWorker() {
        return this._reusableBitmapCacheWorker;
    }

    private void hideMenuItems() {
        if (this.menu != null) {
            for (int i = 0; i < this.menu.size(); i++) {
                this.menu.getItem(i).setVisible(false);
            }
        }
    }

    private void showMenuItems() {
        if (this.menu != null) {
            for (int i = 0; i < this.menu.size(); i++) {
                this.menu.getItem(i).setVisible(true);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected void setActionBarConfiguration() {
        super.setActionBarConfiguration();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity, com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(null);
        if (bundle != null && bundle.getInt("ASSET_ONE_UP_ACTIVITY", -2) != -2) {
            finish();
            return;
        }
        ReusableImageBitmapCache.ImageCacheParams imageCacheParams = new ReusableImageBitmapCache.ImageCacheParams();
        imageCacheParams.setMemCacheSizePercent(0.1f);
        this._reusableBitmapCacheWorker = new ReusableImageBitmapWorker(this);
        this._reusableBitmapCacheWorker.addImageCache(getSupportFragmentManager(), imageCacheParams);
        AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().setApplicationContext(getApplicationContext());
        this._cloud = (AdobeCloud) getIntent().getExtras().getSerializable("ADOBE_CLOUD");
        AdobeCSDKActionBarController.setTitle(findViewById(android.R.id.content), "Yes");
        if (!this.assetViewerController.isDataSourceValidForAssetViewerLaunch()) {
            finish();
            return;
        }
        this.assetViewerController.setCurrentAssetViewerActivity(this);
        this.mAdapter = new AdobeUXAssetViewerAdapter(getSupportFragmentManager());
        this.mPager = (ViewPager) findViewById(R.id.adobe_csdk_library_item_pager);
        this.mPager.setAdapter(this.mAdapter);
        this.mPos = this.assetViewerController.getSelectedIndex();
        this.mPager.setCurrentItem(this.mPos, false);
        AdobeAsset assetAtPos = this.assetViewerController.getAssetAtPos(this.mPos);
        AdobeCSDKActionBarController.setTitle(findViewById(android.R.id.content), assetAtPos.getName());
        this.mPager.setPageTransformer(true, new AdobeDepthPageTransformer());
        this.mImagePath = new File(getFilesDir(), "adobeassetviewerimages");
        if (!this.mImagePath.exists()) {
            this.mImagePath.mkdirs();
        }
        this.mOpenBtn.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdobeAsset assetAtPos2 = AdobeUXAssetOneUpViewerActivity.this.assetViewerController.getAssetAtPos(AdobeUXAssetOneUpViewerActivity.this.mPos);
                if (AdobeUXAssetOneUpViewerActivity.this.assetViewerController.isMultiSelectModeActive()) {
                    if (!AdobeUXAssetOneUpViewerActivity.this.assetViewerController.containsAsset((AdobeAssetFile) assetAtPos2)) {
                        AdobeUXAssetOneUpViewerActivity.this.assetViewerController.addSelectedAsset((AdobeAssetFile) assetAtPos2);
                    }
                } else if (AdobeUXAssetOneUpViewerActivity.this.assetViewerController.getSelectedAssetCount() == 0) {
                    AdobeUXAssetOneUpViewerActivity.this.assetViewerController.addSelectedAsset((AdobeAssetFile) assetAtPos2);
                }
                AdobeUXAssetOneUpViewerActivity.this.setResult(-1, new Intent());
                AdobeUXAssetOneUpViewerActivity.this.finish();
            }
        });
        this.mImageSelectbtn = (ImageButton) findViewById(R.id.adobe_csdk_library_items_image_selectbtn);
        this.mPhotoNumber.setText((this.mPos + 1) + " " + getString(R.string.adobe_csdk_IDS_ASSET_VIEWER_OF) + " " + this.assetViewerController.count());
        if (!this.filesOneUpViewerConfiguration.isMenuEnabled()) {
            this.mOpenBtnContainer.setVisibility(0);
        } else {
            this.mOpenBtnContainer.setVisibility(8);
        }
        if (!this.filesOneUpViewerConfiguration.isMenuEnabled() && this.assetViewerController.isMultiSelectModeActive()) {
            this.mImageSelectbtn.setVisibility(0);
        } else {
            this.mImageSelectbtn.setVisibility(8);
        }
        updateSelectionBtn();
        this.mImageSelectbtn.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdobeAsset assetAtPos2 = AdobeUXAssetOneUpViewerActivity.this.assetViewerController.getAssetAtPos(AdobeUXAssetOneUpViewerActivity.this.mPos);
                if (!AdobeUXAssetOneUpViewerActivity.this.mImageSelectbtn.isSelected()) {
                    AdobeUXAssetOneUpViewerActivity.this.mImageSelectbtn.setSelected(true);
                    AdobeUXAssetOneUpViewerActivity.this.assetViewerController.addSelectedAsset((AdobeAssetFile) assetAtPos2);
                } else {
                    AdobeUXAssetOneUpViewerActivity.this.mImageSelectbtn.setSelected(false);
                    AdobeUXAssetOneUpViewerActivity.this.assetViewerController.removeSelectedAsset((AdobeAssetFile) assetAtPos2);
                }
            }
        });
        handleAssetSelectionChanged();
        boolean booleanExtra = getIntent().getBooleanExtra("START_WITH_COMMENT_WINDOW", false);
        boolean booleanExtra2 = getIntent().getBooleanExtra("START_WITH_COMMENT_REPLY_WINDOW", false);
        Bundle bundle2 = new Bundle();
        if (booleanExtra) {
            bundle2.putBoolean("START_WITH_COMMENT_WINDOW", true);
        } else if (booleanExtra2) {
            bundle2.putBoolean("START_WITH_COMMENT_REPLY_WINDOW", true);
        }
        if (this.filesOneUpViewerConfiguration.getEventHandler() != null) {
            AdobeOneUpViewData adobeOneUpViewData = new AdobeOneUpViewData();
            adobeOneUpViewData.setOriginalAsset(assetAtPos);
            adobeOneUpViewData.setType(AdobeOneUpViewDataType.ADOBE_ONE_UP_VIEW_DATA_TYPE_FILES);
            this.filesOneUpViewerConfiguration.getEventHandler().handleCreationOfActivity(bundle2, adobeOneUpViewData, this, this._cloud);
        }
        disableShareOption();
    }

    class BottomBarClickListener implements View.OnClickListener {
        private Activity parentActivity;

        public BottomBarClickListener(Activity activity) {
            this.parentActivity = activity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == AdobeUXAssetOneUpViewerActivity.this.mCommentBottomBar.getId()) {
                AdobeUXAssetOneUpViewerActivity.this.filesOneUpViewerConfiguration.setCommentBottomBarId(id);
            } else if (id == AdobeUXAssetOneUpViewerActivity.this.mEditBottomBar.getId()) {
                AdobeUXAssetOneUpViewerActivity.this.filesOneUpViewerConfiguration.setEditBottomBarId(id);
            } else {
                if (id == AdobeUXAssetOneUpViewerActivity.this.mShareBottomBar.getId()) {
                    AdobeUXAssetOneUpViewerActivity.this.isSharing = true;
                    Intent shareIntent = AdobeUXAssetOneUpViewerActivity.this.getShareIntent();
                    if (shareIntent != null) {
                        AdobeUXAssetOneUpViewerActivity.this.startActivity(shareIntent);
                        return;
                    }
                    return;
                }
                AdobeUXAssetOneUpViewerActivity.this.filesOneUpViewerConfiguration.setInfoBottomBarId(id);
            }
            if (AdobeUXAssetOneUpViewerActivity.this.filesOneUpViewerConfiguration.getEventHandler() != null) {
                AdobeAssetFile adobeAssetFile = (AdobeAssetFile) AdobeUXAssetOneUpViewerActivity.this.assetViewerController.getAssetAtPos(AdobeUXAssetOneUpViewerActivity.this.mPos);
                AdobeOneUpViewData adobeOneUpViewData = new AdobeOneUpViewData();
                adobeOneUpViewData.setOriginalAsset(adobeAssetFile);
                adobeOneUpViewData.setType(AdobeOneUpViewDataType.ADOBE_ONE_UP_VIEW_DATA_TYPE_FILES);
                AdobeUXAssetOneUpViewerActivity.this.filesOneUpViewerConfiguration.getEventHandler().handleMenuClick(id, adobeOneUpViewData, this.parentActivity, AdobeUXAssetOneUpViewerActivity.this._cloud);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disableShareOption() {
        if (this.mShareBottomBarView != null) {
            this.mShareBottomBarView.setColorFilter(ContextCompat.getColor(getApplicationContext(), R.color.adobe_csdk_one_up_view_share_button_disabled_color));
        }
        if (this.mShareBottomBar != null) {
            this.mShareBottomBar.setClickable(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enableShareOption() {
        if (this.mShareBottomBarView != null) {
            this.mShareBottomBarView.setColorFilter(ContextCompat.getColor(getApplicationContext(), R.color.adobe_csdk_one_up_view_share_button_enabled_color));
        }
        if (this.mShareBottomBar != null) {
            this.mShareBottomBar.setClickable(true);
        }
    }

    private void initiateView() {
        RelativeLayout relativeLayout;
        ImageView imageView = (ImageView) this.mCommentBottomBar.findViewById(R.id.comments_bottombar);
        TextView textView = (TextView) findViewById(R.id.adobe_comment_count);
        this.filesOneUpViewerConfiguration.setCommentCountView(textView);
        this.filesOneUpViewerConfiguration.setCommentView(imageView);
        if (this._cloud.isPrivateCloud()) {
            if (textView != null) {
                textView.setVisibility(4);
            }
            if (imageView != null) {
                imageView.setImageResource(R.drawable.ic_forum_black_24dp_disabled);
            }
        }
        if (this.filesOneUpViewerConfiguration.getEventHandler() != null && this.mPos != -1) {
            AdobeOneUpViewData adobeOneUpViewData = new AdobeOneUpViewData();
            adobeOneUpViewData.setOriginalAsset(this.assetViewerController.getAssetAtPos(this.mPos));
            adobeOneUpViewData.setType(AdobeOneUpViewDataType.ADOBE_ONE_UP_VIEW_DATA_TYPE_FILES);
            this.filesOneUpViewerConfiguration.getEventHandler().handleNewPageForBottomBar(adobeOneUpViewData, this.mEditBottomBar, textView);
        }
        if (this.filesOneUpViewerConfiguration.getEventHandler() != null) {
            Handler handler = new Handler();
            if (!this.filesOneUpViewerConfiguration.getEventHandler().isAScreenshotFile()) {
                relativeLayout = null;
            } else {
                relativeLayout = this.mEditBottomBar;
            }
            final RelativeLayout relativeLayout2 = this.mCommentBottomBar;
            if (relativeLayout != null) {
                handler.postDelayed(new AnonymousClass3(handler, this, relativeLayout2, relativeLayout), 500L);
            } else if (relativeLayout2 != null) {
                handler.postDelayed(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity.4
                    @Override // java.lang.Runnable
                    public void run() {
                        int i = (int) (5.0f * Resources.getSystem().getDisplayMetrics().density);
                        AdobeUXAssetOneUpViewerActivity.this.isLastCoachMarkAlive = true;
                        AdobeUXAssetOneUpViewerActivity.this.filesOneUpViewerConfiguration.getEventHandler().showCoachMarks(this, this.getString(R.string.adobe_csdk_coach_mark_add_comments_title), this.getString(R.string.adobe_csdk_coach_mark_add_comments_body), this.getString(R.string.adobe_csdk_coach_mark_common_footer), relativeLayout2, false, i, new IAdobeCoachMarksDismissListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity.4.1
                            @Override // com.adobe.creativesdk.foundation.internal.utils.coachmarks.IAdobeCoachMarksDismissListener
                            public void onDismissCoachMark() {
                                AdobeUXAssetOneUpViewerActivity.this.isLastCoachMarkAlive = false;
                            }
                        });
                    }
                }, 500L);
            }
        }
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity$3, reason: invalid class name */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ Activity val$activity;
        final /* synthetic */ View val$commentsMenuView;
        final /* synthetic */ View val$editMenuView;
        final /* synthetic */ Handler val$handler;

        AnonymousClass3(Handler handler, Activity activity, View view, View view2) {
            this.val$handler = handler;
            this.val$activity = activity;
            this.val$commentsMenuView = view;
            this.val$editMenuView = view2;
        }

        /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity$3$1, reason: invalid class name */
        class AnonymousClass1 implements IAdobeCoachMarksDismissListener {
            AnonymousClass1() {
            }

            @Override // com.adobe.creativesdk.foundation.internal.utils.coachmarks.IAdobeCoachMarksDismissListener
            public void onDismissCoachMark() {
                AnonymousClass3.this.val$handler.postDelayed(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity.3.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int i = (int) (5.0f * Resources.getSystem().getDisplayMetrics().density);
                        AdobeUXAssetOneUpViewerActivity.this.isLastCoachMarkAlive = true;
                        AdobeUXAssetOneUpViewerActivity.this.filesOneUpViewerConfiguration.getEventHandler().showCoachMarks(AnonymousClass3.this.val$activity, AnonymousClass3.this.val$activity.getString(R.string.adobe_csdk_coach_mark_add_comments_title), AnonymousClass3.this.val$activity.getString(R.string.adobe_csdk_coach_mark_add_comments_body), AnonymousClass3.this.val$activity.getString(R.string.adobe_csdk_coach_mark_common_footer), AnonymousClass3.this.val$commentsMenuView, false, i, new IAdobeCoachMarksDismissListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity.3.1.1.1
                            @Override // com.adobe.creativesdk.foundation.internal.utils.coachmarks.IAdobeCoachMarksDismissListener
                            public void onDismissCoachMark() {
                                AdobeUXAssetOneUpViewerActivity.this.isLastCoachMarkAlive = false;
                            }
                        });
                    }
                }, 500L);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1();
            int i = (int) (5.0f * Resources.getSystem().getDisplayMetrics().density);
            AdobeUXAssetOneUpViewerActivity.this.isLastCoachMarkAlive = true;
            AdobeUXAssetOneUpViewerActivity.this.filesOneUpViewerConfiguration.getEventHandler().showCoachMarks(this.val$activity, this.val$activity.getString(R.string.adobe_csdk_coach_mark_screenshot_add_annotations_title), this.val$activity.getString(R.string.adobe_csdk_coach_mark_screenshot_add_annotations_body), this.val$activity.getString(R.string.adobe_csdk_coach_mark_common_footer), this.val$editMenuView, false, i, anonymousClass1);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        if (Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(this)).booleanValue()) {
            BottomBarClickListener bottomBarClickListener = new BottomBarClickListener(this);
            this.mBottomBar.setVisibility(0);
            this.mCommentBottomBar.setOnClickListener(bottomBarClickListener);
            this.mInfoBottomBar.setOnClickListener(bottomBarClickListener);
            this.mEditBottomBar.setOnClickListener(bottomBarClickListener);
            this.mShareBottomBar.setOnClickListener(bottomBarClickListener);
            initiateView();
        }
        if (_shouldForceRefreshScreenshot) {
            action_forceRefresh();
            _shouldForceRefreshScreenshot = false;
        }
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        this.assetViewerController.setSelectedIndex(this.mPos);
        bundle.putInt("ASSET_ONE_UP_ACTIVITY", this.mPos);
        super.onSaveInstanceState(bundle);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected ViewPager.SimpleOnPageChangeListener getItemPageChangeListener() {
        return new AdobeUXAssetViewerPageChangeListener();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAssetViewerActivity
    public View.OnTouchListener getItemTouchListener() {
        return this.mPagerOnTouchListener;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected void updateOpenBtnContainerVisibility() {
        if (this.filesOneUpViewerConfiguration != null && !this.filesOneUpViewerConfiguration.isMenuEnabled()) {
            this.mOpenBtnContainer.setVisibility(0);
        } else {
            this.mOpenBtnContainer.setVisibility(8);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected File getShareFile() {
        return new File(this.mImagePath, getUniqueNameForAsset(this.assetViewerController.getAssetAtPos(this.mPos)) + ".png");
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected void initializeConfiguration() {
        if (this._oneUpViewerController != null) {
            this.filesOneUpViewerConfiguration = (AdobeOneUpViewerFilesConfiguration) this._oneUpViewerController.getConfiguration(AdobeOneUpViewerController.ADOBE_ONE_UP_VIEW_ASSET_CONFIGURATION_KEY);
            this.assetViewerController = AdobeAssetViewerController.createAssetViewController(this.filesOneUpViewerConfiguration.getDataSource(), this.filesOneUpViewerConfiguration.getAssetFile());
            this.configuration = this.filesOneUpViewerConfiguration;
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected void updateSelectionBtnVisibility(boolean z) {
        if (this.filesOneUpViewerConfiguration != null && !this.filesOneUpViewerConfiguration.isMenuEnabled() && this.assetViewerController != null && this.assetViewerController.isMultiSelectModeActive()) {
            if (z) {
                this.mImageSelectbtn.setVisibility(0);
            } else {
                this.mImageSelectbtn.setVisibility(4);
            }
        }
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
                AdobeAsset assetAtPos = this.assetViewerController.getAssetAtPos(this.mPos);
                this.mImageSelectbtn.setSelected(false);
                this.assetViewerController.removeSelectedAsset((AdobeAssetFile) assetAtPos);
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

    private void updateSelectionBtn() {
        AdobeAsset assetAtPos = this.assetViewerController.getAssetAtPos(this.mPos);
        if (this.mImageSelectbtn != null) {
            if (this.assetViewerController.containsAsset((AdobeAssetFile) assetAtPos)) {
                this.mImageSelectbtn.setSelected(true);
            } else {
                this.mImageSelectbtn.setSelected(false);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity
    protected String getCurrentAssetName() {
        return this.assetViewerController.getAssetAtPos(this.mPos).getName();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity, com.adobe.creativesdk.foundation.internal.storage.controllers.IAssetViewerActivity
    public void hideOrShowActionsBar() {
        super.hideOrShowBaseActivityActionsBar();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAssetViewerActivity
    public void hideActionsBar() {
        if (getSupportActionBar().isShowing()) {
            hideOrShowBaseActivityActionsBar();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAssetViewerActivity
    public void showActionsBar() {
        if (!getSupportActionBar().isShowing()) {
            hideOrShowBaseActivityActionsBar();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAssetViewerActivity
    public void handleAssetSelectionChanged() {
        String localizedString;
        int selectedAssetCount = this.assetViewerController.getSelectedAssetCount();
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
        if (this.assetViewerController != null && !this.assetViewerController.isDataSourceValidForAssetViewerLaunch()) {
            return super.onCreateOptionsMenu(menu);
        }
        if (this._cloud != null) {
            if (this.filesOneUpViewerConfiguration.isMenuEnabled() && this.filesOneUpViewerConfiguration.getMenuLayout() != -1) {
                getMenuInflater().inflate(this.filesOneUpViewerConfiguration.getMenuLayout(), menu);
                for (final int i = 0; i < menu.size(); i++) {
                    menu.getItem(i).setTitle(getAdobeString(menu.getItem(i).getTitle().toString()));
                    Integer actionViewID = this.filesOneUpViewerConfiguration.getActionViewID(menu.getItem(i).getItemId());
                    if (actionViewID != null && (viewInflate = getLayoutInflater().inflate(actionViewID.intValue(), (ViewGroup) null)) != null) {
                        menu.getItem(i).setActionView(viewInflate);
                        this.filesOneUpViewerConfiguration.setActionView(menu.getItem(i).getItemId(), viewInflate);
                        viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity.5
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                if (AdobeUXAssetOneUpViewerActivity.this.filesOneUpViewerConfiguration.getEventHandler() != null) {
                                    AdobeAssetFile adobeAssetFile = (AdobeAssetFile) AdobeUXAssetOneUpViewerActivity.this.assetViewerController.getAssetAtPos(AdobeUXAssetOneUpViewerActivity.this.mPos);
                                    AdobeOneUpViewData adobeOneUpViewData = new AdobeOneUpViewData();
                                    adobeOneUpViewData.setOriginalAsset(adobeAssetFile);
                                    adobeOneUpViewData.setType(AdobeOneUpViewDataType.ADOBE_ONE_UP_VIEW_DATA_TYPE_FILES);
                                    AdobeUXAssetOneUpViewerActivity.this.filesOneUpViewerConfiguration.getEventHandler().handleMenuClick(menu.getItem(i).getItemId(), adobeOneUpViewData, this, AdobeUXAssetOneUpViewerActivity.this._cloud);
                                }
                            }
                        });
                    }
                }
            }
            this.menu = menu;
            this.filesOneUpViewerConfiguration.setMenuView(menu);
            if (this.filesOneUpViewerConfiguration.getEventHandler() != null) {
                this.filesOneUpViewerConfiguration.getEventHandler().openedInPrivateCloud(this._cloud.isPrivateCloud());
            }
            if (this.filesOneUpViewerConfiguration.getEventHandler() != null && this.mPos != -1) {
                AdobeOneUpViewData adobeOneUpViewData = new AdobeOneUpViewData();
                adobeOneUpViewData.setOriginalAsset(this.assetViewerController.getAssetAtPos(this.mPos));
                adobeOneUpViewData.setType(AdobeOneUpViewDataType.ADOBE_ONE_UP_VIEW_DATA_TYPE_FILES);
                this.filesOneUpViewerConfiguration.getEventHandler().handleNewPage(adobeOneUpViewData, this._cloud);
            }
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.isLastCoachMarkAlive && this.filesOneUpViewerConfiguration.getEventHandler() != null) {
            this.filesOneUpViewerConfiguration.getEventHandler().handleOrientationChangeForCoachMark(configuration.orientation);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getUniqueNameForAsset(AdobeAsset adobeAsset) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void setShareIntent() {
        if (this.shareGoingOnAssetPos != this.mPos) {
            this.shareGoingOnAssetPos = this.mPos;
            final int i = this.mPos;
            final AdobeAsset assetAtPos = this.assetViewerController.getAssetAtPos(this.mPos);
            if (this.filesOneUpViewerConfiguration.getEventHandler() != null) {
                IAdobeGenericRequestCallback<byte[], AdobeAssetException> iAdobeGenericRequestCallback = new IAdobeGenericRequestCallback<byte[], AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity.6
                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                    public final void onProgress(double d2) {
                    }

                    protected void handleNoPreview() {
                        if (!AdobeUXAssetOneUpViewerActivity.this.filesOneUpViewerConfiguration.isMenuEnabled()) {
                            AdobeUXAssetOneUpViewerActivity.this.enableOrDisableOpenBtn(i, false);
                        }
                    }

                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                    public void onCancellation() {
                        handleNoPreview();
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(byte[] bArr) {
                        AdobeUXAssetOneUpViewerActivity.this.new GetImageUri(assetAtPos, i).execute(bArr);
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeAssetException adobeAssetException) {
                        handleNoPreview();
                    }
                };
                if (new File(this.mImagePath, getUniqueNameForAsset(assetAtPos) + ".png").exists()) {
                    if (!this.filesOneUpViewerConfiguration.isMenuEnabled()) {
                        enableOrDisableOpenBtn(i, true);
                    }
                    enableShareOption();
                } else {
                    byte[] imageByteDataFromCache = this._reusableBitmapCacheWorker.getImageByteDataFromCache(assetAtPos.getGUID() + ((AdobeAssetFile) assetAtPos).getMd5Hash());
                    if (imageByteDataFromCache != null) {
                        new GetImageUri(assetAtPos, i).execute(imageByteDataFromCache);
                    } else {
                        ((AdobeAssetFile) assetAtPos).getRenditionWithType(AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, new AdobeAssetImageDimensions(0.0f, 0.0f), iAdobeGenericRequestCallback);
                    }
                }
            }
        }
    }

    class GetImageUri extends AsyncTask<byte[], Integer, Uri> {
        boolean _failed;
        AdobeAsset asset;
        int assetIndex;

        GetImageUri(AdobeAsset adobeAsset, int i) {
            this.asset = adobeAsset;
            this.assetIndex = i;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0085 A[EXC_TOP_SPLITTER, SYNTHETIC] */
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
                com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity r2 = com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity.this
                com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerFilesConfiguration r2 = r2.filesOneUpViewerConfiguration
                boolean r2 = r2.isMenuEnabled()
                if (r2 == 0) goto L9
                com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity r2 = com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity.this
                com.adobe.creativesdk.foundation.storage.AdobeAsset r3 = r6.asset
                java.lang.String r2 = com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity.access$700(r2, r3)
                java.io.File r3 = new java.io.File     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L80
                com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity r4 = com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity.this     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L80
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
                com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity r1 = com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity.this     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
                com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity r4 = com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity.this     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
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
                java.lang.String r4 = "AdobeUXAssetOneUpViewerActivity"
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
            throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity.GetImageUri.doInBackground(byte[][]):android.net.Uri");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onProgressUpdate(Integer... numArr) {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Uri uri) {
            AdobeUXAssetOneUpViewerActivity.this.enableShareOption();
            if (!AdobeUXAssetOneUpViewerActivity.this.filesOneUpViewerConfiguration.isMenuEnabled()) {
                if (!this._failed) {
                    AdobeUXAssetOneUpViewerActivity.this.enableOrDisableOpenBtn(this.assetIndex, true);
                } else {
                    AdobeUXAssetOneUpViewerActivity.this.enableOrDisableOpenBtn(this.assetIndex, false);
                }
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
        } else {
            AdobeAssetFile adobeAssetFile = (AdobeAssetFile) this.assetViewerController.getAssetAtPos(this.mPos);
            if (this.filesOneUpViewerConfiguration.getEventHandler() != null) {
                AdobeOneUpViewData adobeOneUpViewData = new AdobeOneUpViewData();
                adobeOneUpViewData.setOriginalAsset(adobeAssetFile);
                adobeOneUpViewData.setType(AdobeOneUpViewDataType.ADOBE_ONE_UP_VIEW_DATA_TYPE_FILES);
                this.filesOneUpViewerConfiguration.getEventHandler().handleMenuClick(menuItem.getItemId(), adobeOneUpViewData, this, this._cloud);
            }
        }
        return true;
    }

    public class AdobeUXAssetViewerAdapter extends FragmentStatePagerAdapter {
        protected AdobeUXAssetViewerAssetFragment _fragmentInstance;

        public AdobeUXAssetViewerAdapter(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // android.support.v4.app.FragmentStatePagerAdapter, android.support.v4.view.PagerAdapter
        public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
            if (this._fragmentInstance != obj) {
                this._fragmentInstance = (AdobeUXAssetViewerAssetFragment) obj;
            }
            super.setPrimaryItem(viewGroup, i, obj);
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getCount() {
            return AdobeUXAssetOneUpViewerActivity.this.assetViewerController.count();
        }

        @Override // android.support.v4.app.FragmentStatePagerAdapter
        public Fragment getItem(int i) {
            return AdobeUXAssetViewerAssetFragment.newInstance(i);
        }

        public AdobeUXAssetViewerAssetFragment getCurrentFragment() {
            return this._fragmentInstance;
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getItemPosition(Object obj) {
            return -2;
        }
    }

    public class AdobeUXAssetViewerAssetFragment extends Fragment implements IAdobeMultiPageOneUpFragmentController {
        private Observer _network_reachability_observer;
        AdobeMultiPageFragmentController fragmentController;
        int mNum;
        int num_pages = 1;
        AdobeOneUpSinglePageAssetController singlePageAssetController;

        static AdobeUXAssetViewerAssetFragment newInstance(int i) {
            AdobeUXAssetViewerAssetFragment adobeUXAssetViewerAssetFragment = new AdobeUXAssetViewerAssetFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("num", i);
            adobeUXAssetViewerAssetFragment.setArguments(bundle);
            return adobeUXAssetViewerAssetFragment;
        }

        @Override // android.support.v4.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            this.mNum = getArguments() != null ? getArguments().getInt("num") : 1;
        }

        @Override // android.support.v4.app.Fragment
        public void onDestroyView() {
            super.onDestroyView();
            if (this.singlePageAssetController != null) {
                this.singlePageAssetController.cancelAnyOneUpImageOperation();
                this.singlePageAssetController.setMainRootView(null);
                this.singlePageAssetController.clear();
                this.singlePageAssetController = null;
                return;
            }
            if (this.fragmentController != null) {
            }
        }

        private int checkPageCount(AdobeAsset adobeAsset) {
            if (!(adobeAsset instanceof AdobeAssetFile)) {
                return 0;
            }
            AdobeAssetFile adobeAssetFile = (AdobeAssetFile) adobeAsset;
            if (adobeAssetFile.getOptionalMetadata() != null) {
                this.num_pages = adobeAssetFile.getOptionalMetadata().optInt(AdobeStorageSession.PAGES, 1);
            }
            return this.num_pages;
        }

        ReusableImageBitmapWorker getReusableImageWorker() {
            AdobeUXAssetOneUpViewerActivity adobeUXAssetOneUpViewerActivity = (AdobeUXAssetOneUpViewerActivity) getActivity();
            if (adobeUXAssetOneUpViewerActivity == null) {
                return null;
            }
            return adobeUXAssetOneUpViewerActivity.getReusableBitmapCacheWorker();
        }

        @Override // android.support.v4.app.Fragment
        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            View viewInflate;
            AdobeUXAssetOneUpViewerActivity adobeUXAssetOneUpViewerActivity = (AdobeUXAssetOneUpViewerActivity) getActivity();
            AdobeAsset assetAtPos = adobeUXAssetOneUpViewerActivity.assetViewerController.getAssetAtPos(this.mNum);
            this.num_pages = checkPageCount(assetAtPos);
            if (this.num_pages == 1) {
                viewInflate = layoutInflater.inflate(R.layout.fragment_asset_image, viewGroup, false);
                viewInflate.findViewById(R.id.adobe_csdk_asset_image_view);
                this.singlePageAssetController = new AdobeOneUpSinglePageAssetController();
                this.singlePageAssetController.setReuseableBitmapCacheWorker(getReusableImageWorker());
                this.singlePageAssetController.setMainRootView(viewInflate);
                this.singlePageAssetController.setAsset(assetAtPos);
                this.singlePageAssetController.setCurrentAssetPos(this.mNum);
                this.singlePageAssetController.setAssetViewerController(adobeUXAssetOneUpViewerActivity.assetViewerController);
                this.singlePageAssetController.setOneUpControllerCode(adobeUXAssetOneUpViewerActivity.oneUpControllerCode);
                this.singlePageAssetController.performInitialization(getActivity(), adobeUXAssetOneUpViewerActivity.filesOneUpViewerConfiguration);
                this.singlePageAssetController.initiateDisplay();
            } else {
                View viewInflate2 = layoutInflater.inflate(R.layout.adobe_multipage_fragment_controller, viewGroup, false);
                this.fragmentController = new AdobeMultiPageFragmentController();
                this.fragmentController.setFragmentController(this);
                this.fragmentController.setFragmentView(viewInflate2);
                this.fragmentController.setAsset(assetAtPos);
                this.fragmentController.setState(AdobeMultiPageViewState.AdobeMultiPageGridView);
                this.fragmentController.performInitiallization(getActivity());
                this.fragmentController.setReuseableBitmapCacheWorker(getReusableImageWorker());
                this.fragmentController.provideViewToActivity();
                viewInflate = viewInflate2;
            }
            ((AdobeUXAssetOneUpViewerActivity) getActivity()).setShareIntent();
            return viewInflate;
        }

        public boolean handleBackPressed() {
            if (this.num_pages > 1 && this.fragmentController.getState() == AdobeMultiPageViewState.AdobeMultiPageViewPager) {
                if (this.fragmentController.getPreviousState() == AdobeMultiPageViewState.AdobeMultiPageGridView) {
                    this.fragmentController.displayGridView();
                    return true;
                }
                if (this.fragmentController.getPreviousState() != AdobeMultiPageViewState.AdobeMultiPageListView) {
                    return true;
                }
                this.fragmentController.displayListView();
                return true;
            }
            return false;
        }

        @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration configuration) {
            if (this.fragmentController != null) {
                this.fragmentController.handleOrientationChange();
            }
            super.onConfigurationChanged(configuration);
        }

        @Override // android.support.v4.app.Fragment
        public void onStart() {
            super.onStart();
            registerLocalNofications();
        }

        @Override // android.support.v4.app.Fragment
        public void onStop() {
            super.onStop();
            unRegisterLocalNotifications();
        }

        public void registerLocalNofications() {
            if (this._network_reachability_observer == null) {
                this._network_reachability_observer = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity.AdobeUXAssetViewerAssetFragment.1
                    @Override // java.util.Observer
                    public void update(Observable observable, Object obj) {
                        switch (((AdobeNetworkReachability.AdobeNetworkStatus) ((AdobeNotification) obj).getInfo().get(AdobeNetworkReachability.AdobeNetworkReachabilityStatusKey)).networkStatusCode) {
                            case AdobeNetworkReachableNonMetered:
                            case AdobeNetworkReachableMetered:
                                if (AdobeUXAssetViewerAssetFragment.this.fragmentController != null) {
                                    AdobeUXAssetViewerAssetFragment.this.fragmentController.wentOnline();
                                }
                                break;
                            default:
                                if (AdobeUXAssetViewerAssetFragment.this.fragmentController != null) {
                                    AdobeUXAssetViewerAssetFragment.this.fragmentController.wentOffline();
                                }
                                break;
                        }
                    }
                };
            }
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification, this._network_reachability_observer);
        }

        public void unRegisterLocalNotifications() {
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification, this._network_reachability_observer);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.IAdobeMultiPageOneUpFragmentController
        public AdobeAssetViewerController getController() {
            return ((AdobeUXAssetOneUpViewerActivity) getActivity()).assetViewerController;
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        this.isSharing = false;
        if (((AdobeUXAssetViewerAdapter) this.mAdapter).getCurrentFragment() == null || !((AdobeUXAssetViewerAdapter) this.mAdapter).getCurrentFragment().handleBackPressed()) {
            super.onBackPressed();
        }
    }

    public void action_forceRefresh() {
        synchronized (AdobeUXAssetOneUpViewerActivity.class) {
            if (_fileUploadedAsCopy != null) {
                this.assetViewerController._filteredAssetList.add(_fileUploadedAsCopy);
                _fileUploadedAsCopy = null;
            }
        }
        this.mAdapter.notifyDataSetChanged();
    }
}
