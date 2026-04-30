package com.c.a.a.a;

import com.c.a.a.g;
import java.util.LinkedList;

/* JADX INFO: compiled from: UriTemplateParser.java */
/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f1279a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f1280b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1281c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinkedList<g> f1282d = new LinkedList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private StringBuilder f1283e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1284f;

    public LinkedList<g> a(String str) throws com.c.a.a.d {
        char[] charArray = str.toCharArray();
        a();
        int i = 0;
        while (i < charArray.length) {
            char c2 = charArray[i];
            if (c2 == '{') {
                if (this.f1281c) {
                    c(i);
                }
                d(i);
            }
            if (c2 != '{' || c2 != '}') {
                b(i);
            }
            if (this.f1280b || this.f1281c) {
                a(c2);
            }
            if (c2 == '}') {
                e(i);
                b(i);
            }
            i++;
        }
        if (this.f1281c) {
            c(i);
        }
        a(i);
        return this.f1282d;
    }

    private void a(char c2) {
        if (this.f1283e == null) {
            this.f1283e = new StringBuilder();
        }
        this.f1283e.append(c2);
    }

    private void a() {
        this.f1279a = true;
    }

    private void a(int i) throws com.c.a.a.d {
        this.f1279a = false;
        if (this.f1280b) {
            throw new com.c.a.a.d("The expression at position " + this.f1284f + " was never terminated", this.f1284f);
        }
    }

    private void b(int i) throws com.c.a.a.d {
        if (this.f1279a) {
            if (!this.f1281c) {
                this.f1281c = true;
                this.f1284f = i;
                return;
            }
            return;
        }
        throw new IllegalStateException("Cannot start a literal without beginning the template");
    }

    private void c(int i) throws com.c.a.a.d {
        if (this.f1279a) {
            if (!this.f1281c) {
                throw new IllegalStateException("Can't end a literal without starting it first");
            }
            if (this.f1283e != null) {
                this.f1282d.add(new com.c.a.a.c(this.f1283e.toString(), this.f1284f));
                this.f1281c = false;
                this.f1283e = null;
                return;
            }
            return;
        }
        throw new IllegalStateException("Cannot end a literal without beginning the template");
    }

    private void d(int i) throws com.c.a.a.d {
        if (this.f1279a) {
            if (this.f1280b) {
                throw new com.c.a.a.d("A new expression start brace found at " + i + " but another unclosed expression was found at " + this.f1284f, i);
            }
            this.f1281c = false;
            this.f1280b = true;
            this.f1284f = i;
            return;
        }
        throw new IllegalStateException("Cannot start an expression without beginning the template");
    }

    private void e(int i) throws com.c.a.a.d {
        if (this.f1279a) {
            if (!this.f1280b) {
                throw new com.c.a.a.d("Expression close brace was found at position " + i + " yet there was no start brace.", i);
            }
            this.f1280b = false;
            this.f1282d.add(new com.c.a.a.b(this.f1283e.toString(), this.f1284f));
            this.f1283e = null;
            return;
        }
        throw new IllegalStateException("Cannot end an expression without beginning the template");
    }
}
