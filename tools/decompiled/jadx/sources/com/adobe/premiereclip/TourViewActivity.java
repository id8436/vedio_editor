package com.adobe.premiereclip;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.creativeapps.settings.activity.CloudPickerActivity;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.premiereclip.dcx.DCXModelController;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.notification.NotificationHelper;
import com.adobe.premiereclip.source.CreativeCloudSource;
import com.adobe.premiereclip.util.CloudUtil;
import com.adobe.premiereclip.util.Utilities;
import com.adobe.sync.s3utils.S3TransferManager;
import com.adobe.utility.AndroidMiscUtils;
import com.dd.crop.TextureVideoView;
import com.h.a.d;
import com.viewpagerindicator.CirclePageIndicator;
import java.util.ArrayList;
import java.util.List;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class TourViewActivity extends FragmentActivity implements CreativeCloudSource.ICreativeCloudLoginCallback {
    private static String PACKAGE_NAME = null;
    private static final String TAG = "TourViewActivity";
    private SectionsPagerAdapter mSectionsPagerAdapter;
    private ViewPager mViewPager;
    private ArrayList<Uri> savedMediaUris;
    private ImageView spinner;
    private boolean spinnerActive;
    private RelativeLayout spinnerBackground;
    private final int CLOUD_CHANGE_REQUEST_CODE = 101;
    private boolean passOnDataToMain = false;

    /* JADX INFO: loaded from: classes2.dex */
    enum TOURVIEWPAGES {
        PAGE_MAIN,
        PAGE_PREMIEREPRO,
        PAGE_COUNT
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        Bundle extras = intent.getExtras();
        handleMediaFromExternalApp(intent);
        PACKAGE_NAME = getApplicationContext().getPackageName();
        if (CreativeCloudSource.getInstance().isLoggedIn() && Utilities.getAdobeIdWrapped() != null) {
            switchToMainView();
            finish();
            return;
        }
        setContentView(R.layout.activity_tourview);
        if (extras != null) {
            Log.d(TAG, "not signed in");
            if (extras.getBoolean("LightroomProject")) {
                openSignInPage();
            }
        }
        this.mSectionsPagerAdapter = new SectionsPagerAdapter(this, getSupportFragmentManager());
        this.mViewPager = (ViewPager) findViewById(R.id.pager);
        this.mViewPager.setAdapter(this.mSectionsPagerAdapter);
        this.mViewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.adobe.premiereclip.TourViewActivity.1
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f2, int i2) {
                TourViewActivity.this.mSectionsPagerAdapter.pauseVideo(TourViewActivity.this.mSectionsPagerAdapter.getCurrentPageIndex());
                TourViewActivity.this.mSectionsPagerAdapter.setCurrentPage(i);
                TourViewActivity.this.mSectionsPagerAdapter.resumeVideo(i);
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }
        });
        ((CirclePageIndicator) findViewById(R.id.circlePageIndicator)).setViewPager(this.mViewPager);
        prepareButtonListeners();
        this.spinnerBackground = (RelativeLayout) findViewById(R.id.spinner_background);
        this.spinner = (ImageView) findViewById(R.id.tourview_spinner);
        this.spinnerBackground.setOnTouchListener(new View.OnTouchListener() { // from class: com.adobe.premiereclip.TourViewActivity.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.spinnerBackground.setVisibility(8);
        Metrics.sharedInstance().didShowWelcomeView();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mSectionsPagerAdapter.pauseVideo(this.mSectionsPagerAdapter.getCurrentPageIndex());
        CreativeCloudSource.getInstance().handleOnPause();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!this.spinnerActive) {
            this.mSectionsPagerAdapter.restartVideo(this.mSectionsPagerAdapter.getCurrentPageIndex());
        }
        CreativeCloudSource.getInstance().handleOnResume();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        Log.d(TAG, "onActivityResult called");
        switch (i) {
            case 101:
                ClipPreferences clipPreferences = ClipPreferences.getInstance(getApplicationContext());
                PremiereClipApplication premiereClipApplication = PremiereClipApplication.getInstance();
                String adobeId = CreativeCloudSource.getInstance().getAdobeId();
                AdobeCloud defaultCloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
                if (defaultCloud != null) {
                    if (!clipPreferences.contains("hasLoggedInOnce_" + adobeId + defaultCloud.getGUID())) {
                        clipPreferences.setPreference("hasLoggedInOnce_" + adobeId + defaultCloud.getGUID(), true);
                        premiereClipApplication.setFirstLogin(true);
                    } else {
                        premiereClipApplication.setFirstLogin(false);
                    }
                }
                DCXModelController.getInstance().setRefreshCloud(true);
                DCXModelController.getInstance().initalize(getApplicationContext(), adobeId);
                switchToMainView();
                break;
            case 1000:
                if (i2 == -1) {
                    CreativeCloudSource.getInstance().handleLoginActivityResponse(i, i2, intent, this);
                } else if (i2 == 0) {
                    Metrics.sharedInstance().didCancelSignIn();
                } else {
                    Metrics.sharedInstance().didFailSignInWithError(i2);
                }
                break;
            case 1001:
                if (i2 == -1) {
                    CreativeCloudSource.getInstance().handleLoginActivityResponse(i, i2, intent, this);
                }
                break;
            default:
                Log.d("App", "Unhandled Intent on MainActivity");
                break;
        }
    }

    private void handleMediaFromExternalApp(Intent intent) {
        String action = intent.getAction();
        String type = intent.getType();
        boolean booleanExtra = intent.getBooleanExtra(NotificationHelper.INTENT_ARG_CLIP_NOTIFICATION, false);
        if ("android.intent.action.SEND".equals(action) && type != null) {
            Log.d(TAG, "ACTION_SEND " + type);
            if (type.startsWith("image/") || type.startsWith("video/")) {
                Uri uri = (Uri) intent.getParcelableExtra("android.intent.extra.STREAM");
                this.savedMediaUris = new ArrayList<>();
                this.savedMediaUris.add(uri);
                this.passOnDataToMain = true;
            }
        } else if ("android.intent.action.SEND_MULTIPLE".equals(action) && type != null) {
            Log.d(TAG, "ACTION_SEND_MULTIPLE " + type);
            this.savedMediaUris = intent.getParcelableArrayListExtra("android.intent.extra.STREAM");
            this.passOnDataToMain = true;
        }
        if (this.passOnDataToMain) {
            Metrics.sharedInstance().didAttemptExternalLaunch(booleanExtra);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchToMainView() {
        Intent intent = new Intent(this, (Class<?>) MainActivity.class);
        if (this.passOnDataToMain) {
            intent.setAction("android.intent.action.SEND_MULTIPLE");
            intent.setType("multiple");
            intent.putParcelableArrayListExtra("android.intent.extra.STREAM", this.savedMediaUris);
        }
        Metrics.sharedInstance().didAuthenticateUserWithAdobeID(CreativeCloudSource.getInstance().getAdobeId());
        Metrics.sharedInstance().didRetrieveDeviceFreeSpaceBytes(AndroidMiscUtils.getFreeDiskspace());
        startActivity(intent);
        toggleSpinner();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchToCloudPickerView() {
        AdobeCloudManager.getSharedCloudManager().refreshClouds(new IAdobeGenericCompletionCallback<ArrayList<AdobeCloud>>() { // from class: com.adobe.premiereclip.TourViewActivity.3
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(ArrayList<AdobeCloud> arrayList) {
                ClipPreferences clipPreferences = ClipPreferences.getInstance(TourViewActivity.this.getApplicationContext());
                PremiereClipApplication premiereClipApplication = PremiereClipApplication.getInstance();
                String adobeId = CreativeCloudSource.getInstance().getAdobeId();
                AdobeCloud defaultCloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
                if (defaultCloud == null) {
                    TourViewActivity.this.switchToMainView();
                    return;
                }
                if (arrayList.isEmpty()) {
                    TourViewActivity.this.switchToMainView();
                    return;
                }
                if (arrayList.size() > 1) {
                    Intent intent = new Intent(TourViewActivity.this, (Class<?>) CloudPickerActivity.class);
                    intent.putExtra("firstLogin", true);
                    TourViewActivity.this.startActivityForResult(intent, 101);
                    return;
                }
                if (!clipPreferences.contains("hasLoggedInOnce_" + adobeId + defaultCloud.getGUID())) {
                    clipPreferences.setPreference("hasLoggedInOnce_" + adobeId + defaultCloud.getGUID(), true);
                    premiereClipApplication.setFirstLogin(true);
                } else {
                    premiereClipApplication.setFirstLogin(false);
                }
                DCXModelController.getInstance().setRefreshCloud(true);
                DCXModelController.getInstance().initalize(TourViewActivity.this.getApplicationContext(), adobeId);
                TourViewActivity.this.switchToMainView();
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.premiereclip.TourViewActivity.4
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                TourViewActivity.this.switchToMainView();
            }
        }, new Handler());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openSignInPage() {
        Metrics.sharedInstance().didAttemptSignIn();
        CreativeCloudSource.getInstance().login(this);
    }

    private void prepareButtonListeners() {
        Button button = (Button) findViewById(R.id.loginButton);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.TourViewActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TourViewActivity.this.openSignInPage();
            }
        });
        button.setTransformationMethod(null);
        Button button2 = (Button) findViewById(R.id.signUpButton);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.TourViewActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Metrics.sharedInstance().didAttemptSignUp();
                CreativeCloudSource.getInstance().signup(TourViewActivity.this);
            }
        });
        button2.setTransformationMethod(null);
        d.a(button);
        d.a(button2);
    }

    /* JADX INFO: loaded from: classes2.dex */
    public class SectionsPagerAdapter extends FragmentPagerAdapter {
        private int currentPageIndex;
        private List<SectionFragment> fragmentList;
        final /* synthetic */ TourViewActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SectionsPagerAdapter(TourViewActivity tourViewActivity, FragmentManager fragmentManager) {
            super(fragmentManager);
            this.this$0 = tourViewActivity;
            this.fragmentList = new ArrayList();
            this.currentPageIndex = 0;
            for (int i = 0; i < getCount(); i++) {
                this.fragmentList.add(null);
            }
        }

        @Override // android.support.v4.app.FragmentPagerAdapter
        public final Fragment getItem(int i) {
            SectionFragment sectionFragment = this.fragmentList.get(i);
            if (sectionFragment == null) {
                SectionFragment sectionFragment2 = new SectionFragment();
                Bundle bundle = new Bundle();
                bundle.putInt(SectionFragment.ARG_SECTION_NUMBER, i);
                sectionFragment2.setArguments(bundle);
                this.fragmentList.set(i, sectionFragment2);
                return sectionFragment2;
            }
            return sectionFragment;
        }

        @Override // android.support.v4.view.PagerAdapter
        public final int getCount() {
            return TOURVIEWPAGES.PAGE_COUNT.ordinal();
        }

        public void pauseVideo(int i) {
            SectionFragment sectionFragment = this.fragmentList.get(i);
            if (sectionFragment != null) {
                sectionFragment.pause();
            }
        }

        public void resumeVideo(int i) {
            SectionFragment sectionFragment = this.fragmentList.get(i);
            if (sectionFragment != null) {
                sectionFragment.resume();
            }
        }

        public void restartVideo(int i) {
            SectionFragment sectionFragment = this.fragmentList.get(i);
            if (sectionFragment != null) {
                sectionFragment.restart();
            }
        }

        public void stopVideo(int i) {
            SectionFragment sectionFragment = this.fragmentList.get(i);
            if (sectionFragment != null) {
                sectionFragment.stop();
            }
        }

        public void preventPlayback(int i) {
            SectionFragment sectionFragment = this.fragmentList.get(i);
            if (sectionFragment != null) {
                sectionFragment.preventPlayback();
            }
        }

        public void setCurrentPage(int i) {
            this.currentPageIndex = i;
        }

        public int getCurrentPageIndex() {
            return this.currentPageIndex;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public class SectionFragment extends Fragment {
        public static final String ARG_SECTION_NUMBER = "section_number";
        public TextureVideoView tourVideo = null;
        private Uri videoUri;

        @Override // android.support.v4.app.Fragment
        public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            View viewInflate = layoutInflater.inflate(R.layout.fragment_tourview_page, viewGroup, false);
            TextView textView = (TextView) viewInflate.findViewById(R.id.tourViewPageTitle);
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.tourViewPageDescription);
            ImageView imageView = (ImageView) viewInflate.findViewById(R.id.tourview_image);
            if (getArguments().getInt(ARG_SECTION_NUMBER) == TOURVIEWPAGES.PAGE_MAIN.ordinal()) {
                textView.setText(R.string.tour_view_page_1_title);
                textView2.setText(R.string.tour_view_page_1_description);
                this.tourVideo = (TextureVideoView) viewInflate.findViewById(R.id.tourview_video);
                this.tourVideo.setVisibility(0);
                this.videoUri = Uri.parse("android.resource://" + TourViewActivity.PACKAGE_NAME + URIUtil.SLASH + R.raw.premierecliptour_2);
                this.tourVideo.a(getActivity(), this.videoUri);
                this.tourVideo.setLooping(true);
                this.tourVideo.a();
            } else if (getArguments().getInt(ARG_SECTION_NUMBER) == TOURVIEWPAGES.PAGE_PREMIEREPRO.ordinal()) {
                textView.setText(R.string.tour_view_page_2_title);
                textView2.setText(R.string.tour_view_page_2_description);
                imageView.setVisibility(0);
                imageView.setImageResource(R.drawable.gra_welcome_s4);
            }
            d.a(viewInflate);
            return viewInflate;
        }

        public void pause() {
            if (this.tourVideo != null && this.tourVideo.e()) {
                this.tourVideo.b();
            }
        }

        public void resume() {
            if (this.tourVideo != null) {
                if (this.tourVideo.h()) {
                    this.tourVideo.a();
                } else {
                    restart();
                }
            }
        }

        public void restart() {
            if (this.tourVideo != null) {
                this.tourVideo.a(getActivity(), this.videoUri);
                this.tourVideo.setLooping(true);
                this.tourVideo.g();
                this.tourVideo.a();
            }
        }

        public void stop() {
            if (this.tourVideo != null) {
                this.tourVideo.c();
                this.tourVideo.f();
                this.tourVideo = null;
            }
        }

        public void preventPlayback() {
            if (this.tourVideo != null) {
                Log.d(TourViewActivity.TAG, "PREVENT playback");
                this.tourVideo.b();
                this.tourVideo.d();
                this.tourVideo = null;
            }
        }
    }

    @Override // com.adobe.premiereclip.source.CreativeCloudSource.ICreativeCloudLoginCallback
    public void didLogin(AdobeAuthException adobeAuthException) {
        Log.d(TAG, "didLogin()");
        if (adobeAuthException != null) {
            Log.d("App", "Error in Login: " + adobeAuthException);
            return;
        }
        S3TransferManager.getInstance().setReadyForTransfers();
        this.mSectionsPagerAdapter.preventPlayback(this.mSectionsPagerAdapter.getCurrentPageIndex());
        clearAccountPreferences();
        toggleSpinner();
        CloudUtil.initCloud(PremiereClipApplication.getContext(), new CloudUtil.Listener() { // from class: com.adobe.premiereclip.TourViewActivity.7
            @Override // com.adobe.premiereclip.util.CloudUtil.Listener
            public void onCloudInit() {
                TourViewActivity.this.chooseMainOrCloudPickerView();
            }

            @Override // com.adobe.premiereclip.util.CloudUtil.Listener
            public void onNewCloud() {
                TourViewActivity.this.chooseMainOrCloudPickerView();
            }

            @Override // com.adobe.premiereclip.util.CloudUtil.Listener
            public void onCloudError() {
            }
        });
    }

    private void clearAccountPreferences() {
        ClipPreferences.getInstance(this).removePreference("googleAccount");
        ClipPreferences.getInstance(this).removePreference("ACCESS_KEY");
        ClipPreferences.getInstance(this).removePreference("ACCESS_SECRET");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void chooseMainOrCloudPickerView() {
        this.mSectionsPagerAdapter.pauseVideo(this.mSectionsPagerAdapter.getCurrentPageIndex());
        ((Button) findViewById(R.id.loginButton)).setEnabled(false);
        String adobeId = CreativeCloudSource.getInstance().getAdobeId();
        Metrics.sharedInstance().didSignInWithAdobeID(adobeId);
        Log.i(TAG, adobeId);
        ClipPreferences clipPreferences = ClipPreferences.getInstance(getApplicationContext());
        AdobeCloud defaultCloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
        if (defaultCloud != null) {
            if (!clipPreferences.contains("hasLoggedInOnce_" + adobeId + defaultCloud.getGUID())) {
                PremiereClipApplication.getInstance().setFirstLogin(true);
            } else {
                PremiereClipApplication.getInstance().setFirstLogin(false);
            }
            if (!PremiereClipApplication.getInstance().isFirstLogin()) {
                DCXModelController.getInstance().initalize(getApplicationContext(), adobeId);
            }
            runOnUiThread(new TourViewRunnable(PremiereClipApplication.getInstance().isFirstLogin()));
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public class TourViewRunnable implements Runnable {
        private boolean isFirstLaunch;

        public TourViewRunnable(boolean z) {
            this.isFirstLaunch = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.isFirstLaunch) {
                TourViewActivity.this.switchToCloudPickerView();
            } else {
                TourViewActivity.this.switchToMainView();
            }
        }
    }

    private void toggleSpinner() {
        if (this.spinnerBackground != null) {
            if (this.spinnerBackground.getVisibility() == 8) {
                this.spinnerActive = true;
                this.spinnerBackground.setVisibility(0);
                this.spinner.startAnimation(AnimationUtils.loadAnimation(this, R.anim.rotate_indefinitely));
            } else {
                this.spinnerActive = false;
                this.spinner.clearAnimation();
                this.spinnerBackground.setVisibility(8);
                this.mSectionsPagerAdapter.resumeVideo(this.mSectionsPagerAdapter.getCurrentPageIndex());
            }
        }
    }
}
