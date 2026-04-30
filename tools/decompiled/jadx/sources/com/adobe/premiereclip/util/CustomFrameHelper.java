package com.adobe.premiereclip.util;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.adobe.customextractor.ClipExtractor;
import com.adobe.premiereclip.PremiereClipApplication;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class CustomFrameHelper extends AsyncTask<Void, Void, Bitmap> {
    private static CustomFrameHelper instance;
    private int height;
    private OnCompletionListener onCompletionListener;
    private String path;
    private int width;

    public interface OnCompletionListener {
        void onComplete(Bitmap bitmap);
    }

    private CustomFrameHelper() {
    }

    public static CustomFrameHelper getInstance() {
        if (instance == null) {
            instance = new CustomFrameHelper();
        }
        return instance;
    }

    public void setParams(String str, int i, int i2) {
        this.path = str;
        this.width = i;
        this.height = i2;
    }

    public void setOnCompletionListener(OnCompletionListener onCompletionListener) {
        this.onCompletionListener = onCompletionListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Bitmap doInBackground(Void... voidArr) {
        ClipExtractor clipExtractor = new ClipExtractor(PremiereClipApplication.getContext());
        try {
            if (clipExtractor.setDataSource(this.path, true)) {
                Bitmap frameAtTime = clipExtractor.getFrameAtTime(600000L, this.width, this.height, false);
                clipExtractor.release();
                return frameAtTime;
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(Bitmap bitmap) {
        if (this.onCompletionListener != null) {
            this.onCompletionListener.onComplete(bitmap);
        }
        instance = new CustomFrameHelper();
    }
}
