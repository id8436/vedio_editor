package com.adobe.premiereclip.sharing;

import com.adobe.premiereclip.sharing.CustomTwitterApiClient;
import d.az;
import f.b.l;
import f.b.o;
import f.b.q;
import f.g;

/* JADX INFO: compiled from: CustomTwitterApiClient.java */
/* JADX INFO: loaded from: classes.dex */
interface AppendVideoUploadAPICustomService {
    @o(a = "https://upload.twitter.com/1.1/media/upload.json")
    @l
    g<CustomTwitterApiClient.VideoUploadPart> append(@q(a = "command") az azVar, @q(a = "media_id") az azVar2, @q(a = "media") az azVar3, @q(a = "segment_index") az azVar4);
}
