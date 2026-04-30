package com.a.a.a;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: CallbackManager.java */
/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final com.a.a.a.g.h f449a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.a.a.a.g.c f451c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.a.a.a.k.b f453e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicInteger f452d = new AtomicInteger(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AtomicBoolean f454f = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CopyOnWriteArrayList<com.a.a.a.b.a> f450b = new CopyOnWriteArrayList<>();

    public d(com.a.a.a.g.c cVar, com.a.a.a.k.b bVar) {
        this.f453e = bVar;
        this.f449a = new com.a.a.a.g.h(bVar, cVar, "jq_callback");
        this.f451c = cVar;
    }

    private void a() {
        if (!this.f454f.getAndSet(true)) {
            b();
        }
    }

    private void b() {
        new Thread(new e(this), "job-manager-callbacks").start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@NonNull com.a.a.a.g.a.d dVar) {
        dVar.c().a(dVar.d());
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@NonNull com.a.a.a.g.a.b bVar) {
        switch (bVar.c()) {
            case 1:
                d(bVar.f());
                break;
            case 2:
                c(bVar.f(), bVar.d());
                break;
            case 3:
                b(bVar.f(), bVar.e(), bVar.g());
                break;
            case 4:
                c(bVar.f());
                break;
            case 5:
                d(bVar.f(), bVar.d());
                break;
        }
    }

    private void b(@NonNull r rVar, boolean z, @Nullable Throwable th) {
        Iterator<com.a.a.a.b.a> it = this.f450b.iterator();
        while (it.hasNext()) {
            it.next().a(rVar, z, th);
        }
    }

    private void c(@NonNull r rVar, int i) {
        Iterator<com.a.a.a.b.a> it = this.f450b.iterator();
        while (it.hasNext()) {
            it.next().a(rVar, i);
        }
    }

    private void d(@NonNull r rVar, int i) {
        Iterator<com.a.a.a.b.a> it = this.f450b.iterator();
        while (it.hasNext()) {
            it.next().b(rVar, i);
        }
    }

    private void c(@NonNull r rVar) {
        Iterator<com.a.a.a.b.a> it = this.f450b.iterator();
        while (it.hasNext()) {
            it.next().b(rVar);
        }
    }

    private void d(@NonNull r rVar) {
        Iterator<com.a.a.a.b.a> it = this.f450b.iterator();
        while (it.hasNext()) {
            it.next().a(rVar);
        }
    }

    public void a(@NonNull r rVar, int i) {
        if (c()) {
            com.a.a.a.g.a.b bVar = (com.a.a.a.g.a.b) this.f451c.a(com.a.a.a.g.a.b.class);
            bVar.a(rVar, 2, i);
            this.f449a.a(bVar);
        }
    }

    private boolean c() {
        return this.f452d.get() > 0;
    }

    public void b(@NonNull r rVar, int i) {
        if (c()) {
            com.a.a.a.g.a.b bVar = (com.a.a.a.g.a.b) this.f451c.a(com.a.a.a.g.a.b.class);
            bVar.a(rVar, 5, i);
            this.f449a.a(bVar);
        }
    }

    public void a(@NonNull r rVar, boolean z, @Nullable Throwable th) {
        if (c()) {
            com.a.a.a.g.a.b bVar = (com.a.a.a.g.a.b) this.f451c.a(com.a.a.a.g.a.b.class);
            bVar.a(rVar, 3, z, th);
            this.f449a.a(bVar);
        }
    }

    public void a(@NonNull r rVar) {
        if (c()) {
            com.a.a.a.g.a.b bVar = (com.a.a.a.g.a.b) this.f451c.a(com.a.a.a.g.a.b.class);
            bVar.a(rVar, 1);
            this.f449a.a(bVar);
        }
    }

    public void b(@NonNull r rVar) {
        if (c()) {
            com.a.a.a.g.a.b bVar = (com.a.a.a.g.a.b) this.f451c.a(com.a.a.a.g.a.b.class);
            bVar.a(rVar, 4);
            this.f449a.a(bVar);
        }
    }

    public void a(@NonNull h hVar, @NonNull i iVar) {
        com.a.a.a.g.a.d dVar = (com.a.a.a.g.a.d) this.f451c.a(com.a.a.a.g.a.d.class);
        dVar.a(iVar, hVar);
        this.f449a.a(dVar);
        a();
    }
}
