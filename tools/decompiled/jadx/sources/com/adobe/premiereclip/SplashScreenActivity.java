package com.adobe.premiereclip;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.adobe.premiereclip.dcx.DCXModelController;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.source.CreativeCloudSource;
import com.adobe.premiereclip.util.ScreenUtils;
import com.adobe.premiereclip.util.Utilities;

/* JADX INFO: loaded from: classes.dex */
public class SplashScreenActivity extends Activity {
    private static final int SPLASH_DISPLAY_TIME = 1000;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_splashscreen);
        ScreenUtils.fullscreen(this);
        Utilities.setStatusBar(this);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        Metrics.sharedInstance().didShowSplashScreen();
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        new Handler().postDelayed(new Runnable() { // from class: com.adobe.premiereclip.SplashScreenActivity.1
            @Override // java.lang.Runnable
            public void run() {
                if (!CreativeCloudSource.getInstance().isLoggedIn()) {
                    SplashScreenActivity.this.switchToTourView();
                } else {
                    String adobeIdWrapped = Utilities.getAdobeIdWrapped();
                    if (adobeIdWrapped == null) {
                        SplashScreenActivity.this.switchToTourView();
                        SplashScreenActivity.this.finish();
                        return;
                    }
                    Log.d("ADOBE ID", adobeIdWrapped);
                    if (!DCXModelController.getInstance().isInitialized()) {
                        DCXModelController.getInstance().initalize(SplashScreenActivity.this.getApplicationContext(), adobeIdWrapped);
                    }
                    if (!DCXModelController.getInstance().isProjectSyncing() && DCXModelController.getInstance().isInitialized() && !DCXModelController.getInstance().isSyncInitialized()) {
                        DCXModelController.getInstance().initializeSync();
                    }
                    SplashScreenActivity.this.switchToMainView();
                }
                SplashScreenActivity.this.finish();
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchToMainView() {
        startActivity(new Intent(this, (Class<?>) MainActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchToTourView() {
        startActivity(new Intent(this, (Class<?>) TourViewActivity.class));
    }
}
