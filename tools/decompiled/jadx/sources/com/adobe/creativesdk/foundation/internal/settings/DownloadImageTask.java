package com.adobe.creativesdk.foundation.internal.settings;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.ImageView;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import java.io.InputStream;
import java.net.URL;

/* JADX INFO: compiled from: CloudPickerActivity.java */
/* JADX INFO: loaded from: classes.dex */
class DownloadImageTask extends AsyncTask<String, Void, Bitmap> {
    private ImageView bmImage;

    DownloadImageTask(ImageView imageView) {
        this.bmImage = imageView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Bitmap doInBackground(String... strArr) {
        Bitmap bitmapDecodeStream;
        Exception e2;
        try {
            InputStream inputStreamOpenStream = new URL(strArr[0]).openStream();
            bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenStream);
            try {
                inputStreamOpenStream.close();
            } catch (Exception e3) {
                e2 = e3;
                Log.e(AdobeNotification.Error, e2.getMessage());
                e2.printStackTrace();
            }
        } catch (Exception e4) {
            bitmapDecodeStream = null;
            e2 = e4;
        }
        return bitmapDecodeStream;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(Bitmap bitmap) {
        this.bmImage.setImageBitmap(bitmap);
    }
}
