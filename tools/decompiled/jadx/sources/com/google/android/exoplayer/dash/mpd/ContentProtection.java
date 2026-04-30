package com.google.android.exoplayer.dash.mpd;

import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class ContentProtection {
    public final byte[] data;
    public final String schemeUriId;
    public final UUID uuid;

    public ContentProtection(String str, UUID uuid, byte[] bArr) {
        this.schemeUriId = str;
        this.uuid = uuid;
        this.data = bArr;
    }
}
