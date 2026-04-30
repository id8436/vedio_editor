package com.adobe.premiereclip;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.support.v4.content.FileProvider;
import com.adobe.premiereclip.editor.MediaCaptureOptionsView;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.util.CameraHelper;
import com.adobe.premiereclip.util.Utilities;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class CameraCaptureManager {
    private static CameraCaptureManager instance;
    private String captureFilePath = "";
    private Uri captureFileUri = null;

    private CameraCaptureManager() {
    }

    public static CameraCaptureManager getInstance() {
        if (instance == null) {
            instance = new CameraCaptureManager();
        }
        return instance;
    }

    public void showMediaCaptureOptions(final Activity activity, MediaCaptureOptionsView mediaCaptureOptionsView, final int i) {
        mediaCaptureOptionsView.setListener(new MediaCaptureOptionsView.OptionSelectionListener() { // from class: com.adobe.premiereclip.CameraCaptureManager.1
            @Override // com.adobe.premiereclip.editor.MediaCaptureOptionsView.OptionSelectionListener
            public void optionSelected(int i2) {
                if (i2 == 101) {
                    CameraCaptureManager.this.captureImage(activity, i);
                } else {
                    CameraCaptureManager.this.captureVideo(activity, i);
                }
            }
        });
        mediaCaptureOptionsView.openView();
    }

    public void captureImage(Activity activity, int i) {
        boolean zCheckCameraHardware = CameraHelper.checkCameraHardware(activity.getApplicationContext());
        boolean zIsIntentAvailable = CameraHelper.isIntentAvailable(activity.getApplicationContext(), "android.media.action.IMAGE_CAPTURE");
        if (zCheckCameraHardware && zIsIntentAvailable) {
            Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
            File capturedMediaFile = Utilities.getCapturedMediaFile(activity.getApplicationContext(), 101);
            this.captureFilePath = capturedMediaFile.getPath();
            if (Build.VERSION.SDK_INT > 21) {
                this.captureFileUri = FileProvider.getUriForFile(activity.getApplicationContext(), activity.getApplicationContext().getPackageName() + ".provider", capturedMediaFile);
                intent.addFlags(2);
            } else {
                this.captureFileUri = Uri.fromFile(capturedMediaFile);
            }
            intent.putExtra("output", this.captureFileUri);
            Metrics.sharedInstance().didShowCameraCaptureView();
            try {
                activity.startActivityForResult(intent, i);
            } catch (ActivityNotFoundException e2) {
                e2.printStackTrace();
            }
        }
    }

    public void captureVideo(Activity activity, int i) {
        boolean zCheckCameraHardware = CameraHelper.checkCameraHardware(activity.getApplicationContext());
        boolean zIsIntentAvailable = CameraHelper.isIntentAvailable(activity.getApplicationContext(), "android.media.action.VIDEO_CAPTURE");
        if (zCheckCameraHardware && zIsIntentAvailable) {
            Intent intent = new Intent("android.media.action.VIDEO_CAPTURE");
            File capturedMediaFile = Utilities.getCapturedMediaFile(activity.getApplicationContext(), 102);
            this.captureFilePath = capturedMediaFile.getPath();
            if (Build.VERSION.SDK_INT > 21) {
                this.captureFileUri = FileProvider.getUriForFile(activity.getApplicationContext(), activity.getApplicationContext().getPackageName() + ".provider", capturedMediaFile);
                intent.addFlags(2);
            } else {
                this.captureFileUri = Uri.fromFile(capturedMediaFile);
            }
            intent.putExtra("output", this.captureFileUri);
            intent.putExtra("android.intent.extra.videoQuality", 1);
            Metrics.sharedInstance().didShowCameraCaptureView();
            try {
                activity.startActivityForResult(intent, i);
            } catch (ActivityNotFoundException e2) {
                e2.printStackTrace();
            }
        }
    }

    public String getCaptureFilePath() {
        return this.captureFilePath;
    }

    public Uri getCaptureFileUri() {
        return Uri.fromFile(new File(this.captureFilePath));
    }
}
