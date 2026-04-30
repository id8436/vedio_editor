package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.a.q;
import f.b.f;
import f.b.t;
import f.g;

/* JADX INFO: loaded from: classes.dex */
public interface AccountService {
    @f(a = "/1.1/account/verify_credentials.json")
    g<q> verifyCredentials(@t(a = "include_entities") Boolean bool, @t(a = "skip_status") Boolean bool2, @t(a = "include_email") Boolean bool3);
}
