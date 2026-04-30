package com.facebook.imagepipeline.g;

import com.facebook.d.d.k;
import com.facebook.d.d.p;
import com.facebook.imagepipeline.memory.ag;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: ProgressiveJpegParser.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.j f2572g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2568c = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2567b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2569d = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f2571f = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2570e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2566a = 0;

    public f(com.facebook.imagepipeline.memory.j jVar) {
        this.f2572g = (com.facebook.imagepipeline.memory.j) k.a(jVar);
    }

    public boolean a(com.facebook.imagepipeline.h.d dVar) {
        if (this.f2566a != 6 && dVar.k() > this.f2568c) {
            ag agVar = new ag(dVar.d(), this.f2572g.a(16384), this.f2572g);
            try {
                com.facebook.d.m.d.a(agVar, this.f2568c);
                return a(agVar);
            } catch (IOException e2) {
                p.b(e2);
                return false;
            } finally {
                com.facebook.d.d.b.a(agVar);
            }
        }
        return false;
    }

    private boolean a(InputStream inputStream) {
        int i;
        int i2 = this.f2570e;
        while (this.f2566a != 6 && (i = inputStream.read()) != -1) {
            try {
                this.f2568c++;
                switch (this.f2566a) {
                    case 0:
                        if (i == 255) {
                            this.f2566a = 1;
                        } else {
                            this.f2566a = 6;
                        }
                        break;
                    case 1:
                        if (i == 216) {
                            this.f2566a = 2;
                        } else {
                            this.f2566a = 6;
                        }
                        break;
                    case 2:
                        if (i == 255) {
                            this.f2566a = 3;
                        }
                        break;
                    case 3:
                        if (i == 255) {
                            this.f2566a = 3;
                        } else if (i == 0) {
                            this.f2566a = 2;
                        } else {
                            if (i == 218 || i == 217) {
                                b(this.f2568c - 2);
                            }
                            if (a(i)) {
                                this.f2566a = 4;
                            } else {
                                this.f2566a = 2;
                            }
                        }
                        break;
                    case 4:
                        this.f2566a = 5;
                        break;
                    case 5:
                        int i3 = ((this.f2567b << 8) + i) - 2;
                        com.facebook.d.m.d.a(inputStream, i3);
                        this.f2568c = i3 + this.f2568c;
                        this.f2566a = 2;
                        break;
                    default:
                        k.b(false);
                        break;
                }
                this.f2567b = i;
            } catch (IOException e2) {
                p.b(e2);
            }
        }
        return (this.f2566a == 6 || this.f2570e == i2) ? false : true;
    }

    private static boolean a(int i) {
        if (i == 1) {
            return false;
        }
        if (i < 208 || i > 215) {
            return (i == 217 || i == 216) ? false : true;
        }
        return false;
    }

    private void b(int i) {
        if (this.f2569d > 0) {
            this.f2571f = i;
        }
        int i2 = this.f2569d;
        this.f2569d = i2 + 1;
        this.f2570e = i2;
    }

    public int a() {
        return this.f2571f;
    }

    public int b() {
        return this.f2570e;
    }
}
