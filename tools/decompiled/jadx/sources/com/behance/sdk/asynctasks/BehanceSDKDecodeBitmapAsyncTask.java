package com.behance.sdk.asynctasks;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.os.Environment;
import com.adobe.utility.AndroidMiscUtils;
import com.behance.sdk.asynctask.listeners.IBehanceSDKDecodeBitmapAsyncTaskListener;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKDecodeBitmapAsyncTask extends AsyncTask<InputStream, Void, Void> {
    private IBehanceSDKDecodeBitmapAsyncTaskListener listener;

    public BehanceSDKDecodeBitmapAsyncTask(IBehanceSDKDecodeBitmapAsyncTaskListener iBehanceSDKDecodeBitmapAsyncTaskListener) {
        this.listener = iBehanceSDKDecodeBitmapAsyncTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Void doInBackground(InputStream... inputStreamArr) {
        try {
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamArr[0]);
            File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS) + File.separator + "behance_project_" + System.currentTimeMillis() + AndroidMiscUtils.IMAGE_TYPE);
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmapDecodeStream.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            fileOutputStream.close();
            this.listener.onBitmapSavedToFile(file);
            return null;
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
            return null;
        } catch (IOException e3) {
            e3.printStackTrace();
            return null;
        }
    }
}
