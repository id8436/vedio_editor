package com.facebook.login;

import com.facebook.AccessToken;
import java.util.Set;

/* JADX INFO: compiled from: LoginResult.java */
/* JADX INFO: loaded from: classes2.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AccessToken f3025a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<String> f3026b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<String> f3027c;

    public x(AccessToken accessToken, Set<String> set, Set<String> set2) {
        this.f3025a = accessToken;
        this.f3026b = set;
        this.f3027c = set2;
    }

    public AccessToken a() {
        return this.f3025a;
    }

    public Set<String> b() {
        return this.f3026b;
    }
}
