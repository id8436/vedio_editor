package com.adobe.premiereclip.sharing;

import android.support.v4.app.NotificationCompat;
import com.adobe.premiereclip.sharing.CustomTwitterApiClient;
import f.b.c;
import f.b.e;
import f.b.o;
import f.g;

/* JADX INFO: compiled from: CustomTwitterApiClient.java */
/* JADX INFO: loaded from: classes.dex */
interface TweetVideoAPICustomService {
    @o(a = "https://api.twitter.com/1.1/statuses/update.json")
    @e
    g<CustomTwitterApiClient.VideoTweet> tweet(@c(a = NotificationCompat.CATEGORY_STATUS) String str, @c(a = "media_ids") long j);
}
