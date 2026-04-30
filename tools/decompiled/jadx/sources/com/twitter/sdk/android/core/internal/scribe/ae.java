package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import java.io.IOException;
import java.util.UUID;

/* JADX INFO: compiled from: ScribeFilesManager.java */
/* JADX INFO: loaded from: classes3.dex */
class ae extends h<ab> {
    public ae(Context context, g<ab> gVar, com.twitter.sdk.android.core.internal.o oVar, y yVar, int i) throws IOException {
        super(context, gVar, oVar, yVar, i);
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.h
    protected String b() {
        return "se" + c.a.a.a.a.d.d.ROLL_OVER_FILE_NAME_SEPARATOR + UUID.randomUUID().toString() + c.a.a.a.a.d.d.ROLL_OVER_FILE_NAME_SEPARATOR + this.f4046c.a() + ".tap";
    }
}
