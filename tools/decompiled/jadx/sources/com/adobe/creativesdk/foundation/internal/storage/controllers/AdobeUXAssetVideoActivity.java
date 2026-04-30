package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.app.Activity;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.MediaController;
import android.widget.ProgressBar;
import android.widget.Toast;
import android.widget.VideoView;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachability;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerConfigurationFactory;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerFilesConfiguration;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.google.gdata.client.spreadsheet.ListQuery;
import java.util.HashMap;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes.dex */
public class AdobeUXAssetVideoActivity extends Activity {
    private int _assetPos;
    private MediaController _mediaController;
    private Observer _network_reachability_observer;
    private ProgressBar _progressBar;
    private int _stopPosition;
    private VideoView _vidView;
    AdobeAssetViewerController assetViewerController;
    private boolean noInternet = false;
    private View no_network_banner;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        setContentView(R.layout.activity_videoview);
        this._vidView = (VideoView) findViewById(R.id.adobe_csdk_asset_video_viewContainer);
        this._progressBar = (ProgressBar) findViewById(R.id.adobe_csdk_asset_videoInit_progressBar);
        this._mediaController = new MediaController(this) { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetVideoActivity.1
            @Override // android.widget.MediaController, android.view.ViewGroup, android.view.View
            public boolean dispatchKeyEvent(KeyEvent keyEvent) {
                if (keyEvent.getKeyCode() != 4) {
                    return super.dispatchKeyEvent(keyEvent);
                }
                ((Activity) getContext()).finish();
                return true;
            }
        };
        this._mediaController.setAnchorView(this._vidView);
        this._mediaController.setMediaPlayer(this._vidView);
        this._vidView.setMediaController(this._mediaController);
        this.no_network_banner = findViewById(R.id.adobe_csdk_video_container_no_network_notification_bar);
        initializeAssetViewerController(getIntent().getExtras());
        if (this.assetViewerController == null || !this.assetViewerController.isDataSourceValidForAssetViewerLaunch()) {
            finish();
            return;
        }
        if (bundle != null) {
            this._stopPosition = bundle.getInt(ListQuery.ORDERBY_POSITION);
        } else {
            this._stopPosition = 0;
        }
        this._assetPos = getIntent().getExtras().getInt("current_asset_position");
    }

    private void initializeAssetViewerController(Bundle bundle) {
        AdobeOneUpViewerController oneUpViewerControllerFromBundle = getOneUpViewerControllerFromBundle(bundle);
        if (oneUpViewerControllerFromBundle != null) {
            AdobeOneUpViewerFilesConfiguration adobeOneUpViewerFilesConfiguration = (AdobeOneUpViewerFilesConfiguration) oneUpViewerControllerFromBundle.getConfiguration(AdobeOneUpViewerController.ADOBE_ONE_UP_VIEW_ASSET_CONFIGURATION_KEY);
            if (bundle != null) {
                final String string = bundle.getString("current_asset_name", null);
                final String string2 = bundle.getString("current_asset_guid", null);
                AdobeAnalyticsSDKReporter.trackAction(AdobeAnalyticsSDKReporter.AnalyticPlayVideo, new HashMap<String, String>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetVideoActivity.2
                    {
                        put(AdobeAnalyticsSDKReporter.AnalyticArea, "assets");
                        put("type", "video");
                        put(AdobeAnalyticsSDKReporter.AnalyticAction, "play");
                        put("assetName", string);
                        put(AdobeAnalyticsSDKReporter.AnalyticAssetId, string2);
                    }
                }, null);
            }
            this.assetViewerController = AdobeAssetViewerController.createAssetViewController(adobeOneUpViewerFilesConfiguration.getDataSource(), adobeOneUpViewerFilesConfiguration.getAssetFile());
        }
    }

    private AdobeOneUpViewerController getOneUpViewerControllerFromBundle(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        return AdobeOneUpViewerConfigurationFactory.getOneUpViewerController(bundle.getInt("one_up_controller_code"));
    }

    private void refreshVideoView() {
        String hlsHref = ((AdobeAssetFileInternal) this.assetViewerController.getAssetAtPos(this._assetPos)).getHlsHref();
        Uri uri = Uri.parse(hlsHref);
        this._vidView.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetVideoActivity.3
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                AdobeLogger.log(Level.ERROR, "VideoActivity-onError", String.format("error code is %d:%d", Integer.valueOf(i), Integer.valueOf(i2)));
                AdobeUXAssetVideoActivity.this._progressBar.setVisibility(4);
                Toast.makeText(AdobeUXAssetVideoActivity.this, "Can't play this video", 0).show();
                AdobeUXAssetVideoActivity.this.finish();
                return true;
            }
        });
        AdobeLogger.log(Level.INFO, "VideoActivity", String.format("VideoUrl is %s", hlsHref));
        this._vidView.setOnPreparedListener(new AnonymousClass4());
        this._vidView.setVideoURI(uri);
        this._vidView.start();
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetVideoActivity$4, reason: invalid class name */
    class AnonymousClass4 implements MediaPlayer.OnPreparedListener {
        boolean progressBarShown = true;

        AnonymousClass4() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            if (AdobeUXAssetVideoActivity.this._stopPosition != 0) {
                mediaPlayer.seekTo(AdobeUXAssetVideoActivity.this._stopPosition);
            }
            mediaPlayer.setOnBufferingUpdateListener(new MediaPlayer.OnBufferingUpdateListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetVideoActivity.4.1
                @Override // android.media.MediaPlayer.OnBufferingUpdateListener
                public void onBufferingUpdate(MediaPlayer mediaPlayer2, int i) {
                    if (AnonymousClass4.this.progressBarShown) {
                        AdobeUXAssetVideoActivity.this._progressBar.setVisibility(4);
                        AnonymousClass4.this.progressBarShown = false;
                    }
                }
            });
            mediaPlayer.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetVideoActivity.4.2
                @Override // android.media.MediaPlayer.OnErrorListener
                public boolean onError(MediaPlayer mediaPlayer2, int i, int i2) {
                    AdobeUXAssetVideoActivity.this._stopPosition = mediaPlayer2.getCurrentPosition();
                    return true;
                }
            });
            mediaPlayer.setOnInfoListener(new MediaPlayer.OnInfoListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetVideoActivity.4.3
                @Override // android.media.MediaPlayer.OnInfoListener
                public boolean onInfo(MediaPlayer mediaPlayer2, int i, int i2) {
                    if (i == 701) {
                        AdobeUXAssetVideoActivity.this._progressBar.setVisibility(0);
                    }
                    if (i == 702 || i == 3) {
                        AdobeUXAssetVideoActivity.this._progressBar.setVisibility(4);
                    }
                    return false;
                }
            });
            mediaPlayer.start();
        }
    }

    protected void registerLocalNofications() {
        if (this._network_reachability_observer == null) {
            this._network_reachability_observer = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetVideoActivity.5
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    switch (AnonymousClass6.$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$net$AdobeNetworkReachability$AdobeNetworkStatusCode[((AdobeNetworkReachability.AdobeNetworkStatus) ((AdobeNotification) obj).getInfo().get(AdobeNetworkReachability.AdobeNetworkReachabilityStatusKey)).networkStatusCode.ordinal()]) {
                        case 1:
                        case 2:
                            AdobeUXAssetVideoActivity.this.wentOnline();
                            break;
                        default:
                            AdobeUXAssetVideoActivity.this.wentOffline();
                            break;
                    }
                }
            };
        }
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification, this._network_reachability_observer);
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetVideoActivity$6, reason: invalid class name */
    /* synthetic */ class AnonymousClass6 {
        static final /* synthetic */ int[] $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$net$AdobeNetworkReachability$AdobeNetworkStatusCode = new int[AdobeNetworkReachability.AdobeNetworkStatusCode.values().length];

        static {
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$net$AdobeNetworkReachability$AdobeNetworkStatusCode[AdobeNetworkReachability.AdobeNetworkStatusCode.AdobeNetworkReachableNonMetered.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$net$AdobeNetworkReachability$AdobeNetworkStatusCode[AdobeNetworkReachability.AdobeNetworkStatusCode.AdobeNetworkReachableMetered.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$net$AdobeNetworkReachability$AdobeNetworkStatusCode[AdobeNetworkReachability.AdobeNetworkStatusCode.AdobeNetworkNotReachable.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wentOffline() {
        this.noInternet = true;
        this.no_network_banner.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wentOnline() {
        this.noInternet = false;
        this.no_network_banner.setVisibility(8);
        this._progressBar.setVisibility(0);
        refreshVideoView();
    }

    protected void unRegisterLocalNotifications() {
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification, this._network_reachability_observer);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        refreshVideoView();
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        registerLocalNofications();
    }

    @Override // android.app.Activity
    protected void onPause() {
        this._stopPosition = this._vidView.getCurrentPosition();
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onStop() {
        unRegisterLocalNotifications();
        super.onStop();
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putInt(ListQuery.ORDERBY_POSITION, this._vidView.getCurrentPosition());
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        this._mediaController.hide();
        this._vidView.stopPlayback();
        this._vidView.setMediaController(null);
        this._vidView.setVisibility(4);
        super.onDestroy();
    }
}
