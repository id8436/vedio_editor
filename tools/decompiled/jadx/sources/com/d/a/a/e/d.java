package com.d.a.a.e;

import com.d.a.a.q;
import com.d.a.a.r;
import com.google.gdata.data.Category;
import java.io.IOException;
import java.io.Serializable;

/* JADX INFO: compiled from: DefaultPrettyPrinter.java */
/* JADX INFO: loaded from: classes2.dex */
public class d implements q, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final com.d.a.a.b.j f1469a = new com.d.a.a.b.j(" ");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected f f1470b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected f f1471c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final r f1472d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected boolean f1473e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected transient int f1474f;

    public d() {
        this(f1469a);
    }

    public d(r rVar) {
        this.f1470b = e.f1475a;
        this.f1471c = c.f1465b;
        this.f1473e = true;
        this.f1472d = rVar;
    }

    @Override // com.d.a.a.q
    public void a(com.d.a.a.g gVar) throws IOException {
        if (this.f1472d != null) {
            gVar.b(this.f1472d);
        }
    }

    @Override // com.d.a.a.q
    public void b(com.d.a.a.g gVar) throws IOException {
        gVar.a(Category.SCHEME_PREFIX);
        if (!this.f1471c.a()) {
            this.f1474f++;
        }
    }

    @Override // com.d.a.a.q
    public void h(com.d.a.a.g gVar) throws IOException {
        this.f1471c.a(gVar, this.f1474f);
    }

    @Override // com.d.a.a.q
    public void d(com.d.a.a.g gVar) throws IOException {
        if (this.f1473e) {
            gVar.c(" : ");
        } else {
            gVar.a(':');
        }
    }

    @Override // com.d.a.a.q
    public void c(com.d.a.a.g gVar) throws IOException {
        gVar.a(',');
        this.f1471c.a(gVar, this.f1474f);
    }

    @Override // com.d.a.a.q
    public void a(com.d.a.a.g gVar, int i) throws IOException {
        if (!this.f1471c.a()) {
            this.f1474f--;
        }
        if (i > 0) {
            this.f1471c.a(gVar, this.f1474f);
        } else {
            gVar.a(' ');
        }
        gVar.a(Category.SCHEME_SUFFIX);
    }

    @Override // com.d.a.a.q
    public void e(com.d.a.a.g gVar) throws IOException {
        if (!this.f1470b.a()) {
            this.f1474f++;
        }
        gVar.a('[');
    }

    @Override // com.d.a.a.q
    public void g(com.d.a.a.g gVar) throws IOException {
        this.f1470b.a(gVar, this.f1474f);
    }

    @Override // com.d.a.a.q
    public void f(com.d.a.a.g gVar) throws IOException {
        gVar.a(',');
        this.f1470b.a(gVar, this.f1474f);
    }

    @Override // com.d.a.a.q
    public void b(com.d.a.a.g gVar, int i) throws IOException {
        if (!this.f1470b.a()) {
            this.f1474f--;
        }
        if (i > 0) {
            this.f1470b.a(gVar, this.f1474f);
        } else {
            gVar.a(' ');
        }
        gVar.a(']');
    }
}
