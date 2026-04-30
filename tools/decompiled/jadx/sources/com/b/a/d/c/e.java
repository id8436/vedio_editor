package com.b.a.d.c;

import android.net.Uri;
import android.text.TextUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;

/* JADX INFO: compiled from: GlideUrl.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final URL f921a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f923c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f924d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private URL f925e;

    public e(URL url) {
        this(url, f.f927b);
    }

    public e(String str) {
        this(str, f.f927b);
    }

    public e(URL url, f fVar) {
        if (url == null) {
            throw new IllegalArgumentException("URL must not be null!");
        }
        if (fVar == null) {
            throw new IllegalArgumentException("Headers must not be null");
        }
        this.f921a = url;
        this.f923c = null;
        this.f922b = fVar;
    }

    public e(String str, f fVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("String url must not be empty or null: " + str);
        }
        if (fVar == null) {
            throw new IllegalArgumentException("Headers must not be null");
        }
        this.f923c = str;
        this.f921a = null;
        this.f922b = fVar;
    }

    public URL a() throws MalformedURLException {
        return d();
    }

    private URL d() throws MalformedURLException {
        if (this.f925e == null) {
            this.f925e = new URL(e());
        }
        return this.f925e;
    }

    private String e() {
        if (TextUtils.isEmpty(this.f924d)) {
            String string = this.f923c;
            if (TextUtils.isEmpty(string)) {
                string = this.f921a.toString();
            }
            this.f924d = Uri.encode(string, "@#&=*+-_.,:!?()/~'%");
        }
        return this.f924d;
    }

    public Map<String, String> b() {
        return this.f922b.a();
    }

    public String c() {
        return this.f923c != null ? this.f923c : this.f921a.toString();
    }

    public String toString() {
        return c() + '\n' + this.f922b.toString();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return c().equals(eVar.c()) && this.f922b.equals(eVar.f922b);
    }

    public int hashCode() {
        return (c().hashCode() * 31) + this.f922b.hashCode();
    }
}
