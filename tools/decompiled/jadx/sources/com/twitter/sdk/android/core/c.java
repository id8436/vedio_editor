package com.twitter.sdk.android.core;

import f.av;

/* JADX INFO: compiled from: Callback.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c<T> implements f.j<T> {
    public abstract void failure(ah ahVar);

    public abstract void success(s<T> sVar);

    @Override // f.j
    public final void onResponse(f.g<T> gVar, av<T> avVar) {
        if (avVar.c()) {
            success(new s<>(avVar.d(), avVar));
        } else {
            failure(new x(avVar));
        }
    }

    @Override // f.j
    public final void onFailure(f.g<T> gVar, Throwable th) {
        failure(new ah("Request Failure", th));
    }
}
