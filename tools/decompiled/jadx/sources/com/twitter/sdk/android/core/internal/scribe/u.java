package com.twitter.sdk.android.core.internal.scribe;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: QueueFile.java */
/* JADX INFO: loaded from: classes3.dex */
class u implements x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f4068a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ StringBuilder f4069b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ t f4070c;

    u(t tVar, StringBuilder sb) {
        this.f4070c = tVar;
        this.f4069b = sb;
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.x
    public void a(InputStream inputStream, int i) throws IOException {
        if (this.f4068a) {
            this.f4068a = false;
        } else {
            this.f4069b.append(", ");
        }
        this.f4069b.append(i);
    }
}
