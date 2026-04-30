package com.twitter.sdk.android.tweetcomposer;

import android.app.IntentService;
import android.content.Intent;
import android.net.Uri;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.ah;
import com.twitter.sdk.android.core.aj;
import d.an;
import d.az;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class TweetUploadService extends IntentService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ab f4139a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Intent f4140b;

    public TweetUploadService() {
        this(new ab());
    }

    TweetUploadService(ab abVar) {
        super("TweetUploadService");
        this.f4139a = abVar;
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        TwitterAuthToken twitterAuthToken = (TwitterAuthToken) intent.getParcelableExtra("EXTRA_USER_TOKEN");
        this.f4140b = intent;
        a(new aj(twitterAuthToken, -1L, ""), intent.getStringExtra("EXTRA_TWEET_TEXT"), (Uri) intent.getParcelableExtra("EXTRA_IMAGE_URI"));
    }

    void a(aj ajVar, String str, Uri uri) {
        if (uri != null) {
            a(ajVar, uri, new z(this, ajVar, str));
        } else {
            a(ajVar, str, (String) null);
        }
    }

    void a(aj ajVar, String str, String str2) {
        this.f4139a.a(ajVar).getStatusesService().update(str, null, null, null, null, null, null, true, str2).a(new aa(this));
    }

    void a(aj ajVar, Uri uri, com.twitter.sdk.android.core.c<com.twitter.sdk.android.core.a.h> cVar) {
        com.twitter.sdk.android.core.w wVarA = this.f4139a.a(ajVar);
        String strA = o.a(this, uri);
        if (strA == null) {
            a(new ah("Uri file path resolved to null"));
            return;
        }
        File file = new File(strA);
        wVarA.getMediaService().upload(az.create(an.a(o.a(file)), file), null, null).a(cVar);
    }

    void a(ah ahVar) {
        a(this.f4140b);
        com.twitter.sdk.android.core.v.h().c("TweetUploadService", "Post Tweet failed", ahVar);
        stopSelf();
    }

    void a(long j) {
        Intent intent = new Intent("com.twitter.sdk.android.tweetcomposer.UPLOAD_SUCCESS");
        intent.putExtra("EXTRA_TWEET_ID", j);
        intent.setPackage(getApplicationContext().getPackageName());
        sendBroadcast(intent);
    }

    void a(Intent intent) {
        Intent intent2 = new Intent("com.twitter.sdk.android.tweetcomposer.UPLOAD_FAILURE");
        intent2.putExtra("EXTRA_RETRY_INTENT", intent);
        intent2.setPackage(getApplicationContext().getPackageName());
        sendBroadcast(intent2);
    }
}
