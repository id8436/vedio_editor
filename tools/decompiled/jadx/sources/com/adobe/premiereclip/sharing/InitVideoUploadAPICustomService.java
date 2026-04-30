package com.adobe.premiereclip.sharing;

import com.adobe.premiereclip.mediabrowser.GalleryActivity;
import com.adobe.premiereclip.sharing.CustomTwitterApiClient;
import f.b.c;
import f.b.e;
import f.b.o;
import f.g;

/* JADX INFO: compiled from: CustomTwitterApiClient.java */
/* JADX INFO: loaded from: classes.dex */
interface InitVideoUploadAPICustomService {
    @o(a = "https://upload.twitter.com/1.1/media/upload.json")
    @e
    g<CustomTwitterApiClient.VideoUploadInit> init(@c(a = "command") String str, @c(a = "total_bytes") String str2, @c(a = GalleryActivity.INTENT_ARG_MEDIA_TYPE) String str3, @c(a = "media_category") String str4);
}
