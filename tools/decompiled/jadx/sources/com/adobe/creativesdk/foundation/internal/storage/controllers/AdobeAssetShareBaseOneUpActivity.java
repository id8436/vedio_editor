package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.support.v4.content.FileProvider;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.KeyCharacterMap;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachability;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerBaseConfiguration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerConfigurationFactory;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerController;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKActionBarController;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKTypeFace;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKTypefaceSpan;
import com.adobe.creativesdk.foundation.internal.utils.DrawShadowRelativeLayout;
import com.adobe.creativesdk.foundation.internal.utils.NavBarUtil;
import com.google.gdata.data.contacts.ContactLink;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public abstract class AdobeAssetShareBaseOneUpActivity extends AdobeTOUHandlerActivity {
    static AdobeNetworkReachability _network_reachbility_obj;
    protected AdobeOneUpViewerController _oneUpViewerController;
    protected AdobeOneUpViewerBaseConfiguration configuration;
    protected FragmentStatePagerAdapter mAdapter;
    protected RelativeLayout mBottomBar;
    protected RelativeLayout mCommentBottomBar;
    protected RelativeLayout mEditBottomBar;
    File mImagePath;
    protected RelativeLayout mInfoBottomBar;
    View mOpenBtn;
    protected View mOpenBtnContainer;
    TextView mOpenFileText;
    protected ViewPager mPager;
    TextView mPhotoNumber;
    protected int mPos;
    protected RelativeLayout mShareBottomBar;
    protected ImageView mShareBottomBarView;
    protected ViewGroup mainView;
    protected int oneUpControllerCode;
    private Toast previewNotAvailableToast;
    protected boolean pageChanged = false;
    private final String SHARE_ASSET_NAME = "Share_Asset_Name";
    protected View.OnTouchListener mPagerOnTouchListener = new View.OnTouchListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetShareBaseOneUpActivity.1
        private static final int thresholdY = 350;
        private static final int tolerance = 50;
        private boolean isTouchedDown = false;
        private float pointX;
        private float pointY;

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            switch (motionEvent.getAction()) {
                case 0:
                    this.isTouchedDown = true;
                    this.pointX = motionEvent.getX();
                    this.pointY = motionEvent.getY();
                    return false;
                case 1:
                    boolean z = this.pointX + 50.0f > motionEvent.getX() && this.pointX - 50.0f < motionEvent.getX();
                    boolean z2 = this.pointY + 50.0f > motionEvent.getY() && this.pointY - 50.0f < motionEvent.getY();
                    if (z && z2) {
                        AdobeAssetShareBaseOneUpActivity.this.hideOrShowActionsBar();
                    } else if (Math.abs(motionEvent.getY() - this.pointY) > 350.0f) {
                        if (!AdobeAssetShareBaseOneUpActivity.this.pageChanged && this.isTouchedDown) {
                            this.isTouchedDown = false;
                            AdobeAssetShareBaseOneUpActivity.this.onBackPressed();
                        } else {
                            AdobeAssetShareBaseOneUpActivity.this.pageChanged = false;
                        }
                    }
                    return false;
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                default:
                    return false;
            }
        }
    };

    protected abstract String getCurrentAssetName();

    protected abstract ViewPager.SimpleOnPageChangeListener getItemPageChangeListener();

    protected abstract File getShareFile();

    protected abstract void initializeConfiguration();

    protected abstract void updateOpenBtnContainerVisibility();

    protected abstract void updateSelectionBtnVisibility(boolean z);

    protected SpannableString getAdobeString(String str) {
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new AdobeCSDKTypefaceSpan(null, AdobeCSDKTypeFace.getTypeface(this)), 0, spannableString.length(), 33);
        spannableString.setSpan(new ForegroundColorSpan(getResources().getColor(R.color.adobe_csdk_asset_browser_dark_text)), 0, spannableString.length(), 33);
        return spannableString;
    }

    public DrawShadowRelativeLayout getShadowRelativeLayout() {
        return (DrawShadowRelativeLayout) this.mainView;
    }

    protected void setActionBarTitle(String str) {
        AdobeCSDKActionBarController.setTitle(findViewById(android.R.id.content), str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void hideOrShowActionsBar() {
        hideOrShowBaseActivityActionsBar();
    }

    @SuppressLint({"InlinedApi"})
    protected void hideOrShowBaseActivityActionsBar() {
        int i;
        ActionBar supportActionBar = getSupportActionBar();
        ViewConfiguration.get(this).hasPermanentMenuKey();
        KeyCharacterMap.deviceHasKey(4);
        this.mPager.setBackgroundColor(getResources().getColor(R.color.adobe_csdk_oneupview_background_color));
        if (supportActionBar != null) {
            if (supportActionBar.isShowing()) {
                supportActionBar.hide();
                ((DrawShadowRelativeLayout) this.mainView).setShadowVisible(false, false);
                this.mOpenBtnContainer.setVisibility(8);
                updateSelectionBtnVisibility(false);
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
            updateSelectionBtnVisibility(true);
            this.mPager.setPadding(0, supportActionBar.getHeight(), 0, 0);
            getWindow().getDecorView().setSystemUiVisibility(0);
        }
    }

    public Intent getShareIntent() {
        File shareFile = getShareFile();
        String currentAssetName = getCurrentAssetName();
        if (shareFile != null && shareFile.exists()) {
            Intent intent = new Intent("android.intent.action.SEND");
            if (this.configuration.isMenuEnabled()) {
                return createShareIntent(FileProvider.getUriForFile(this, this._oneUpViewerController.getFileProviderAuthority(), shareFile), currentAssetName);
            }
            return intent;
        }
        if (this.previewNotAvailableToast != null && this.previewNotAvailableToast.getView().isShown()) {
            return null;
        }
        this.previewNotAvailableToast = Toast.makeText(getApplicationContext(), getResources().getString(R.string.adobe_csdk_one_up_view_preview_not_availabe), 0);
        this.previewNotAvailableToast.show();
        return null;
    }

    Intent createShareIntent(Uri uri, String str) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(ContactLink.Type.IMAGE);
        intent.putExtra("android.intent.extra.STREAM", uri);
        intent.putExtra("Share_Asset_Name", str);
        intent.addFlags(1);
        return intent;
    }

    public int getCurrentIndex() {
        return this.mPos;
    }

    @Override // com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Boolean boolValueOf = Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(this));
        if (boolValueOf.booleanValue()) {
            setContentView(R.layout.adobe_library_item_collection_activity_loki);
        } else {
            setContentView(R.layout.adobe_library_item_collection_activity);
        }
        this.mainView = (ViewGroup) findViewById(R.id.adobe_csdk_library_oneup_rootview);
        ((DrawShadowRelativeLayout) this.mainView).setShadowTopOffset(getResources().getDimensionPixelSize(R.dimen.adobe_csdk_action_bar_size));
        this._oneUpViewerController = getOneUpViewerControllerFromBundle(getIntent().getExtras());
        initializeConfiguration();
        setActionBarConfiguration();
        this.mPager = (ViewPager) findViewById(R.id.adobe_csdk_library_item_pager);
        this.mPager.addOnPageChangeListener(getItemPageChangeListener());
        this.mPager.setOnTouchListener(this.mPagerOnTouchListener);
        this.mPager.setPageTransformer(true, new AdobeDepthPageTransformer());
        this.mOpenBtnContainer = findViewById(R.id.adobe_csdk_library_item_open_button_container);
        this.mOpenBtn = findViewById(R.id.adobe_csdk_library_item_selection_open_file_btn);
        this.mPhotoNumber = (TextView) findViewById(R.id.adobe_csdk_library_item_photo_number);
        this.mOpenFileText = (TextView) findViewById(R.id.adobe_csdk_library_item_selection_open_file_text);
        updateOpenBtnContainerVisibility();
        if (_network_reachbility_obj == null) {
            _network_reachbility_obj = AdobeNetworkReachabilityUtil.getSharedInstance();
        }
        if (boolValueOf.booleanValue()) {
            this.mBottomBar = (RelativeLayout) findViewById(R.id.adobe_csdk_bottombar);
            this.mBottomBar.setVisibility(8);
            this.mCommentBottomBar = (RelativeLayout) findViewById(R.id.comments_bottombar_layout);
            this.mEditBottomBar = (RelativeLayout) findViewById(R.id.edit_bottombar_layout);
            this.mShareBottomBar = (RelativeLayout) findViewById(R.id.share_bottombar_layout);
            this.mInfoBottomBar = (RelativeLayout) findViewById(R.id.info_bottombar_layout);
            this.mShareBottomBarView = (ImageView) findViewById(R.id.share_bottombar);
        }
        this.mImagePath = new File(getFilesDir(), "adobeassetviewerimages");
        if (!this.mImagePath.exists()) {
            this.mImagePath.mkdirs();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        cancelToast();
    }

    @Override // com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cancelToast();
    }

    protected void setActionBarConfiguration() {
        Toolbar toolbar;
        Boolean boolValueOf = Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(this));
        if (boolValueOf.booleanValue()) {
            if (Build.VERSION.SDK_INT >= 21) {
                getWindow().setStatusBarColor(ViewCompat.MEASURED_STATE_MASK);
            }
            toolbar = (Toolbar) findViewById(R.id.adobe_csdk_actionbar_toolbar_loki);
            toolbar.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        } else {
            toolbar = (Toolbar) findViewById(R.id.adobe_csdk_actionbar_toolbar);
        }
        setSupportActionBar(toolbar);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            if (boolValueOf.booleanValue()) {
                if (Build.VERSION.SDK_INT >= 21) {
                    supportActionBar.setHomeAsUpIndicator(getResources().getDrawable(R.drawable.ic_close_white_24dp, null));
                } else {
                    supportActionBar.setHomeAsUpIndicator(getResources().getDrawable(R.drawable.ic_close_white_24dp));
                }
            } else if (Build.VERSION.SDK_INT >= 21) {
                supportActionBar.setHomeAsUpIndicator(getResources().getDrawable(R.drawable.ic_close_black_24dp, null));
            } else {
                supportActionBar.setHomeAsUpIndicator(getResources().getDrawable(R.drawable.ic_close_black_24dp));
            }
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setHomeButtonEnabled(true);
            supportActionBar.setDisplayOptions(14);
            supportActionBar.setTitle("");
        }
    }

    private AdobeOneUpViewerController getOneUpViewerControllerFromBundle(Bundle bundle) {
        if (bundle != null) {
            this.oneUpControllerCode = bundle.getInt("one_up_controller_code");
            this._oneUpViewerController = AdobeOneUpViewerConfigurationFactory.getOneUpViewerController(this.oneUpControllerCode);
        }
        return this._oneUpViewerController;
    }

    protected boolean isTablet(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        cancelToast();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }

    private void cancelToast() {
        if (this.previewNotAvailableToast != null) {
            this.previewNotAvailableToast.cancel();
        }
    }

    public static boolean isNetworkAvailable() {
        if (_network_reachbility_obj == null) {
            _network_reachbility_obj = AdobeNetworkReachabilityUtil.getSharedInstance();
        }
        return _network_reachbility_obj.isOnline();
    }
}
