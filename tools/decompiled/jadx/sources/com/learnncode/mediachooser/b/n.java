package com.learnncode.mediachooser.b;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.media.MediaMetadataRetriever;
import android.os.AsyncTask;

/* JADX INFO: compiled from: VideoLoadAsyncModified.java */
/* JADX INFO: loaded from: classes3.dex */
class n extends AsyncTask<String, Void, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.learnncode.mediachooser.c.a f3704a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f3705b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f3706c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3707d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3708e;

    n(String str, long j, int i, int i2, com.learnncode.mediachooser.c.a aVar) {
        this.f3705b = str;
        this.f3706c = j;
        this.f3704a = aVar;
        this.f3707d = i;
        this.f3708e = i2;
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        m.f3703a.add(this.f3705b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Bitmap doInBackground(String... strArr) {
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(strArr[0]);
            Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(this.f3706c * 1000, 2);
            Matrix matrix = new Matrix();
            matrix.setRectToRect(new RectF(0.0f, 0.0f, frameAtTime.getWidth(), frameAtTime.getHeight()), new RectF(0.0f, 0.0f, this.f3707d, this.f3708e), Matrix.ScaleToFit.CENTER);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(frameAtTime, 0, 0, frameAtTime.getWidth(), frameAtTime.getHeight(), matrix, true);
            frameAtTime.recycle();
            com.learnncode.mediachooser.b.a(this.f3705b, bitmapCreateBitmap);
            return bitmapCreateBitmap;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(Bitmap bitmap) {
        m.f3703a.remove(this.f3705b);
        if (bitmap != null && this.f3704a.a().equals(this.f3705b)) {
            this.f3704a.b().setImageBitmap(bitmap);
        }
    }
}
