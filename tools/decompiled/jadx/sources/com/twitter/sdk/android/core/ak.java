package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.google.gson.Gson;

/* JADX INFO: compiled from: TwitterSession.java */
/* JADX INFO: loaded from: classes3.dex */
class ak implements com.twitter.sdk.android.core.internal.b.e<aj> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Gson f3867a = new Gson();

    @Override // com.twitter.sdk.android.core.internal.b.e
    public String a(aj ajVar) {
        if (ajVar != null && ajVar.a() != null) {
            try {
                return this.f3867a.toJson(ajVar);
            } catch (Exception e2) {
                v.h().a("Twitter", e2.getMessage());
            }
        }
        return "";
    }

    @Override // com.twitter.sdk.android.core.internal.b.e
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public aj b(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return (aj) this.f3867a.fromJson(str, aj.class);
            } catch (Exception e2) {
                v.h().a("Twitter", e2.getMessage());
            }
        }
        return null;
    }
}
