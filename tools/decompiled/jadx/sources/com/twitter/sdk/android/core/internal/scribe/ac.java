package com.twitter.sdk.android.core.internal.scribe;

import com.google.gson.Gson;
import java.io.IOException;

/* JADX INFO: compiled from: ScribeEvent.java */
/* JADX INFO: loaded from: classes3.dex */
public class ac implements g<ab> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Gson f4009a;

    public ac(Gson gson) {
        this.f4009a = gson;
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.g
    public byte[] a(ab abVar) throws IOException {
        return this.f4009a.toJson(abVar).getBytes("UTF-8");
    }
}
