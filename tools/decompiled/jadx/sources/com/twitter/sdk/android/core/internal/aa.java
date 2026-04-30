package com.twitter.sdk.android.core.internal;

import com.twitter.sdk.android.core.aj;
import com.twitter.sdk.android.core.internal.scribe.an;
import com.twitter.sdk.android.core.services.AccountService;
import java.io.IOException;

/* JADX INFO: compiled from: TwitterSessionVerifier.java */
/* JADX INFO: loaded from: classes3.dex */
public class aa implements x<aj> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ab f3912a = new ab();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.twitter.sdk.android.core.internal.scribe.a f3913b = an.a();

    @Override // com.twitter.sdk.android.core.internal.x
    public void a(aj ajVar) {
        AccountService accountServiceA = this.f3912a.a(ajVar);
        try {
            a();
            accountServiceA.verifyCredentials(true, false, false).a();
        } catch (IOException e2) {
        } catch (RuntimeException e3) {
        }
    }

    private void a() {
        if (this.f3913b != null) {
            this.f3913b.a(new com.twitter.sdk.android.core.internal.scribe.f().a(c.a.a.a.a.b.a.ANDROID_CLIENT_TYPE).b("credentials").c("").d("").e("").f("impression").a());
        }
    }
}
