package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: EnabledScribeStrategy.java */
/* JADX INFO: loaded from: classes3.dex */
class d extends c<ab> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final s f4031f;

    public d(Context context, ScheduledExecutorService scheduledExecutorService, ae aeVar, aa aaVar, ScribeFilesSender scribeFilesSender) {
        super(context, scheduledExecutorService, aeVar);
        this.f4031f = scribeFilesSender;
        a(aaVar.h);
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.q
    public s d() {
        return this.f4031f;
    }
}
