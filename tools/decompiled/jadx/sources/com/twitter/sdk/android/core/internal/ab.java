package com.twitter.sdk.android.core.internal;

import com.twitter.sdk.android.core.aj;
import com.twitter.sdk.android.core.services.AccountService;

/* JADX INFO: compiled from: TwitterSessionVerifier.java */
/* JADX INFO: loaded from: classes3.dex */
public class ab {
    protected ab() {
    }

    public AccountService a(aj ajVar) {
        return new com.twitter.sdk.android.core.w(ajVar).getAccountService();
    }
}
