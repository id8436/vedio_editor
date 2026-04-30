package com.adobe.premiereclip.sharing;

import com.adobe.premiereclip.sharing.CustomTwitterApiClient;
import f.b.c;
import f.b.e;
import f.b.o;
import f.g;

/* JADX INFO: compiled from: CustomTwitterApiClient.java */
/* JADX INFO: loaded from: classes.dex */
interface FinalizeVideoUploadAPICustomService {
    @o(a = "https://upload.twitter.com/1.1/media/upload.json")
    @e
    g<CustomTwitterApiClient.VideoUploadEnd> finalize(@c(a = "command") String str, @c(a = "media_id") long j);
}
