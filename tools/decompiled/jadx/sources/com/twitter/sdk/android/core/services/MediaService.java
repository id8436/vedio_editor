package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.a.h;
import d.az;
import f.b.l;
import f.b.o;
import f.b.q;
import f.g;

/* JADX INFO: loaded from: classes.dex */
public interface MediaService {
    @o(a = "https://upload.twitter.com/1.1/media/upload.json")
    @l
    g<h> upload(@q(a = "media") az azVar, @q(a = "media_data") az azVar2, @q(a = "additional_owners") az azVar3);
}
