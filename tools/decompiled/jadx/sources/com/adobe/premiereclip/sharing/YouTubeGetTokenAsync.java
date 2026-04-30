package com.adobe.premiereclip.sharing;

import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.api.client.googleapis.extensions.android.gms.auth.GoogleAccountCredential;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class YouTubeGetTokenAsync extends AsyncTask<Void, Void, String> {
    final YouTubeSettingsActivity activity;
    String mAccountName;
    GoogleAccountCredential mCredential;
    String token;
    String TAG = "YouTubeGetTokenTask";
    boolean error = false;
    boolean nWError = false;

    YouTubeGetTokenAsync(YouTubeSettingsActivity youTubeSettingsActivity) {
        this.activity = youTubeSettingsActivity;
        this.mAccountName = youTubeSettingsActivity.accountName;
        this.mCredential = youTubeSettingsActivity.credential;
        Log.d(this.TAG, this.mAccountName);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        this.token = null;
        try {
            this.token = this.mCredential.getToken();
            Log.d(this.TAG, "Got Token for YouTube" + this.token);
        } catch (UserRecoverableAuthException e2) {
            Log.e(this.TAG, e2.toString());
            Intent intent = e2.getIntent();
            YouTubeSettingsActivity youTubeSettingsActivity = this.activity;
            YouTubeSettingsActivity youTubeSettingsActivity2 = this.activity;
            youTubeSettingsActivity.startActivityForResult(intent, 3);
            cancel(true);
        } catch (GoogleAuthException e3) {
            Log.e(this.TAG, e3.toString());
            this.error = true;
        } catch (IOException e4) {
            Log.e(this.TAG, e4.toString());
            this.nWError = true;
        } catch (Exception e5) {
            Log.e(this.TAG, e5.toString());
            this.error = true;
        }
        return this.token;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        Log.d(this.TAG, "In Post Execute");
        if (this.nWError) {
            this.activity.showNetworkError();
        } else if (this.error) {
            this.activity.showGenericError();
        } else if (str != null) {
            this.activity.publishVideoToYouTube();
        }
    }

    static void run(YouTubeSettingsActivity youTubeSettingsActivity) {
        new YouTubeGetTokenAsync(youTubeSettingsActivity).execute(new Void[0]);
    }
}
