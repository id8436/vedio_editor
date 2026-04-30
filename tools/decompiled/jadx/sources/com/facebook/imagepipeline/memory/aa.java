package com.facebook.imagepipeline.memory;

import javax.annotation.concurrent.Immutable;

/* JADX INFO: compiled from: PoolConfig.java */
/* JADX INFO: loaded from: classes2.dex */
@Immutable
public class aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ae f2881a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final af f2882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ae f2883c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.facebook.d.g.b f2884d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ae f2885e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final af f2886f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ae f2887g;
    private final af h;

    private aa(ac acVar) {
        ae aeVarA;
        af afVarA;
        ae aeVarA2;
        com.facebook.d.g.b bVarA;
        ae aeVarA3;
        af afVarA2;
        ae aeVarA4;
        af afVarA3;
        if (acVar.f2888a == null) {
            aeVarA = k.a();
        } else {
            aeVarA = acVar.f2888a;
        }
        this.f2881a = aeVarA;
        if (acVar.f2889b == null) {
            afVarA = x.a();
        } else {
            afVarA = acVar.f2889b;
        }
        this.f2882b = afVarA;
        if (acVar.f2890c == null) {
            aeVarA2 = m.a();
        } else {
            aeVarA2 = acVar.f2890c;
        }
        this.f2883c = aeVarA2;
        if (acVar.f2891d == null) {
            bVarA = com.facebook.d.g.c.a();
        } else {
            bVarA = acVar.f2891d;
        }
        this.f2884d = bVarA;
        if (acVar.f2892e == null) {
            aeVarA3 = n.a();
        } else {
            aeVarA3 = acVar.f2892e;
        }
        this.f2885e = aeVarA3;
        if (acVar.f2893f == null) {
            afVarA2 = x.a();
        } else {
            afVarA2 = acVar.f2893f;
        }
        this.f2886f = afVarA2;
        if (acVar.f2894g == null) {
            aeVarA4 = l.a();
        } else {
            aeVarA4 = acVar.f2894g;
        }
        this.f2887g = aeVarA4;
        if (acVar.h == null) {
            afVarA3 = x.a();
        } else {
            afVarA3 = acVar.h;
        }
        this.h = afVarA3;
    }

    public ae a() {
        return this.f2881a;
    }

    public af b() {
        return this.f2882b;
    }

    public com.facebook.d.g.b c() {
        return this.f2884d;
    }

    public ae d() {
        return this.f2885e;
    }

    public af e() {
        return this.f2886f;
    }

    public ae f() {
        return this.f2883c;
    }

    public ae g() {
        return this.f2887g;
    }

    public af h() {
        return this.h;
    }

    public static ac i() {
        return new ac();
    }
}
