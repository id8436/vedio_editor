package com.crashlytics.android.answers;

import android.content.Context;
import c.a.a.a.a.b.aa;
import c.a.a.a.a.b.m;
import c.a.a.a.a.b.z;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
class SessionMetadataCollector {
    private final Context context;
    private final z idManager;
    private final String versionCode;
    private final String versionName;

    public SessionMetadataCollector(Context context, z zVar, String str, String str2) {
        this.context = context;
        this.idManager = zVar;
        this.versionCode = str;
        this.versionName = str2;
    }

    public SessionEventMetadata getMetadata() {
        Map<aa, String> mapG = this.idManager.g();
        return new SessionEventMetadata(this.context.getPackageName(), UUID.randomUUID().toString(), this.idManager.b(), mapG.get(aa.ANDROID_ID), mapG.get(aa.ANDROID_ADVERTISING_ID), this.idManager.j(), mapG.get(aa.FONT_TOKEN), m.m(this.context), this.idManager.d(), this.idManager.e(), this.versionCode, this.versionName);
    }
}
