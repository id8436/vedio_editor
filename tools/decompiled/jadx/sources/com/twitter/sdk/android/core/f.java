package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;

/* JADX INFO: compiled from: GuestSession.java */
/* JADX INFO: loaded from: classes3.dex */
public class f implements com.twitter.sdk.android.core.internal.b.e<e> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Gson f3871a = new GsonBuilder().registerTypeAdapter(GuestAuthToken.class, new b()).create();

    @Override // com.twitter.sdk.android.core.internal.b.e
    public String a(e eVar) {
        if (eVar != null && eVar.a() != null) {
            try {
                return this.f3871a.toJson(eVar);
            } catch (Exception e2) {
                v.h().a("Twitter", "Failed to serialize session " + e2.getMessage());
            }
        }
        return "";
    }

    @Override // com.twitter.sdk.android.core.internal.b.e
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public e b(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return (e) this.f3871a.fromJson(str, e.class);
            } catch (Exception e2) {
                v.h().a("Twitter", "Failed to deserialize session " + e2.getMessage());
            }
        }
        return null;
    }
}
