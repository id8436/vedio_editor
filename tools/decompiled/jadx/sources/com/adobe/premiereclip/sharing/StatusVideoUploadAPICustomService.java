package com.adobe.premiereclip.sharing;

import com.adobe.premiereclip.sharing.CustomTwitterApiClient;
import f.b.f;
import f.b.t;
import f.g;

/* JADX INFO: compiled from: CustomTwitterApiClient.java */
/* JADX INFO: loaded from: classes.dex */
interface StatusVideoUploadAPICustomService {
    @f(a = "https://upload.twitter.com/1.1/media/upload.json")
    g<CustomTwitterApiClient.VideoUploadStatus> status(@t(a = "command") String str, @t(a = "media_id") long j);
}
