package com.adobe.premiereclip.sharing;

import android.os.AsyncTask;
import android.util.Log;
import com.google.api.client.googleapis.extensions.android.gms.auth.GooglePlayServicesAvailabilityIOException;
import com.google.api.client.googleapis.extensions.android.gms.auth.UserRecoverableAuthIOException;
import com.google.api.services.youtube.YouTube;
import com.google.api.services.youtube.model.Video;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
abstract class YouTubeBaseAsync extends AsyncTask<Void, Integer, Video> {
    static final String TAG = "YoutubeBaseAsync";
    final YouTubeExport activity;
    String description;
    boolean error = false;
    String tag;
    String title;
    String videoAccess;
    final YouTube youtube;

    protected abstract Video doInBackground() throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public abstract void onPostExecute(Video video);

    YouTubeBaseAsync(YouTubeExport youTubeExport) {
        this.activity = youTubeExport;
        this.youtube = youTubeExport.youtube;
        this.title = youTubeExport.mTitle;
        this.description = youTubeExport.mDescription;
        this.tag = youTubeExport.mTag;
        this.videoAccess = youTubeExport.mVideoAccess;
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        super.onPreExecute();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onProgressUpdate(Integer... numArr) {
        Log.d("YouTubeProgress", "onProgressUpdate: " + numArr[0]);
        this.activity.mListener.onProgress(((double) numArr[0].intValue()) * 0.01d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public final Video doInBackground(Void... voidArr) {
        try {
            return doInBackground();
        } catch (GooglePlayServicesAvailabilityIOException e2) {
            Log.w(TAG, "GooglePlayServicesAvailabilityIOException");
            this.error = true;
            return null;
        } catch (UserRecoverableAuthIOException e3) {
            Log.e(TAG, "UserRecoverableAuthIOException");
            this.error = true;
            return null;
        } catch (IOException e4) {
            Log.e(TAG, "IOException");
            this.error = true;
            return null;
        }
    }
}
