package com.behance.sdk.asynctasks;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Environment;
import android.support.v7.app.NotificationCompat;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeConstantsInternal;
import com.adobe.utility.AndroidMiscUtils;
import com.behance.sdk.R;
import com.behance.sdk.asynctask.params.BehanceSDKDownloadAndSaveImageAsyncTaskParams;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKDownloadAndSaveImageAsyncTask extends AsyncTask<BehanceSDKDownloadAndSaveImageAsyncTaskParams, Void, Void> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Void doInBackground(BehanceSDKDownloadAndSaveImageAsyncTaskParams... behanceSDKDownloadAndSaveImageAsyncTaskParamsArr) {
        final Context context = behanceSDKDownloadAndSaveImageAsyncTaskParamsArr[0].getContext();
        try {
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream((InputStream) new URL(behanceSDKDownloadAndSaveImageAsyncTaskParamsArr[0].getUrl()).getContent());
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmapDecodeStream.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
            final File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS) + File.separator + "behance_download_" + System.currentTimeMillis() + AndroidMiscUtils.IMAGE_TYPE);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                fileOutputStream.write(byteArrayOutputStream.toByteArray());
                fileOutputStream.close();
                MediaScannerConnection.scanFile(context, new String[]{file.getAbsolutePath()}, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: com.behance.sdk.asynctasks.BehanceSDKDownloadAndSaveImageAsyncTask.1
                    @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                    public void onScanCompleted(String str, Uri uri) {
                        Intent intent = new Intent();
                        intent.setAction("android.intent.action.VIEW");
                        intent.setDataAndType(Uri.fromFile(file), AdobeLibraryCompositeConstantsInternal.AdobeLibraryRenditionContentTypeJPG);
                        Notification notificationBuild = new NotificationCompat.Builder(context).setContentTitle(context.getString(R.string.bsdk_download_image_notification_success)).setContentText(file.getName()).setSmallIcon(R.drawable.bsdk_icon_notification_publish_progress).setContentIntent(PendingIntent.getActivity(context, 0, intent, 0)).build();
                        notificationBuild.flags |= 16;
                        ((NotificationManager) context.getSystemService("notification")).notify(0, notificationBuild);
                    }
                });
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        }
        return null;
    }
}
