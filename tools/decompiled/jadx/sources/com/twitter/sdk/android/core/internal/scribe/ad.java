package com.twitter.sdk.android.core.internal.scribe;

import java.util.List;

/* JADX INFO: compiled from: ScribeEventFactory.java */
/* JADX INFO: loaded from: classes3.dex */
public class ad {
    public static ab a(e eVar, String str, long j, String str2, String str3, List<Object> list) {
        switch (eVar.f4032a) {
            case "tfw":
                return new ak(eVar, str, j, str2, str3, list);
            default:
                return new ai(eVar, j, str2, str3, list);
        }
    }
}
