package com.a.a.a.a;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.a.a.a.aa;
import com.a.a.a.j;
import com.a.a.a.s;
import java.util.Set;

/* JADX INFO: compiled from: CachedJobQueue.java */
/* JADX INFO: loaded from: classes.dex */
public class a implements aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private aa f408a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Integer f409b;

    public a(aa aaVar) {
        this.f408a = aaVar;
    }

    @Override // com.a.a.a.aa
    public boolean a(@NonNull s sVar) {
        c();
        return this.f408a.a(sVar);
    }

    private void c() {
        this.f409b = null;
    }

    @Override // com.a.a.a.aa
    public boolean b(@NonNull s sVar) {
        c();
        return this.f408a.b(sVar);
    }

    @Override // com.a.a.a.aa
    public void a(@NonNull s sVar, @NonNull s sVar2) {
        c();
        this.f408a.a(sVar, sVar2);
    }

    @Override // com.a.a.a.aa
    public void c(@NonNull s sVar) {
        c();
        this.f408a.c(sVar);
    }

    @Override // com.a.a.a.aa
    public int a() {
        if (this.f409b == null) {
            this.f409b = Integer.valueOf(this.f408a.a());
        }
        return this.f409b.intValue();
    }

    private boolean d() {
        return this.f409b != null && this.f409b.intValue() == 0;
    }

    @Override // com.a.a.a.aa
    public int a(@NonNull j jVar) {
        if (d()) {
            return 0;
        }
        return this.f408a.a(jVar);
    }

    @Override // com.a.a.a.aa
    public s b(@NonNull j jVar) {
        if (d()) {
            return null;
        }
        s sVarB = this.f408a.b(jVar);
        if (sVarB != null && this.f409b != null) {
            this.f409b = Integer.valueOf(this.f409b.intValue() - 1);
            return sVarB;
        }
        return sVarB;
    }

    @Override // com.a.a.a.aa
    public Long c(@NonNull j jVar) {
        return this.f408a.c(jVar);
    }

    @Override // com.a.a.a.aa
    public void b() {
        c();
        this.f408a.b();
    }

    @Override // com.a.a.a.aa
    @NonNull
    public Set<s> d(@NonNull j jVar) {
        return this.f408a.d(jVar);
    }

    @Override // com.a.a.a.aa
    public void d(@NonNull s sVar) {
        c();
        this.f408a.d(sVar);
    }

    @Override // com.a.a.a.aa
    @Nullable
    public s a(@NonNull String str) {
        return this.f408a.a(str);
    }
}
