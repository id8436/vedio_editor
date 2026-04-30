package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: EventsFilesManager.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class h<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Context f4044a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final g<T> f4045b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final com.twitter.sdk.android.core.internal.o f4046c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final o f4047d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected volatile long f4048e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final List<p> f4049f = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f4050g;

    protected abstract String b();

    public h(Context context, g<T> gVar, com.twitter.sdk.android.core.internal.o oVar, o oVar2, int i) throws IOException {
        this.f4044a = context.getApplicationContext();
        this.f4045b = gVar;
        this.f4047d = oVar2;
        this.f4046c = oVar;
        this.f4048e = this.f4046c.a();
        this.f4050g = i;
    }

    public void a(T t) throws IOException {
        byte[] bArrA = this.f4045b.a(t);
        a(bArrA.length);
        this.f4047d.a(bArrA);
    }

    public void a(p pVar) {
        if (pVar != null) {
            this.f4049f.add(pVar);
        }
    }

    public boolean a() throws IOException {
        boolean z = true;
        String strB = null;
        if (this.f4047d.b()) {
            z = false;
        } else {
            strB = b();
            this.f4047d.a(strB);
            com.twitter.sdk.android.core.internal.n.a(this.f4044a, 4, "Twitter", String.format(Locale.US, "generated new file %s", strB));
            this.f4048e = this.f4046c.a();
        }
        b(strB);
        return z;
    }

    private void a(int i) throws IOException {
        if (!this.f4047d.a(i, d())) {
            com.twitter.sdk.android.core.internal.n.a(this.f4044a, 4, "Twitter", String.format(Locale.US, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over", Integer.valueOf(this.f4047d.a()), Integer.valueOf(i), Integer.valueOf(d())));
            a();
        }
    }

    protected int c() {
        return this.f4050g;
    }

    protected int d() {
        return 8000;
    }

    private void b(String str) {
        Iterator<p> it = this.f4049f.iterator();
        while (it.hasNext()) {
            try {
                it.next().a(str);
            } catch (Exception e2) {
                com.twitter.sdk.android.core.internal.n.a(this.f4044a, "One of the roll over listeners threw an exception", e2);
            }
        }
    }

    public List<File> e() {
        return this.f4047d.a(1);
    }

    public void a(List<File> list) {
        this.f4047d.a(list);
    }

    public void f() {
        List<File> listC = this.f4047d.c();
        int iC = c();
        if (listC.size() > iC) {
            int size = listC.size() - iC;
            com.twitter.sdk.android.core.internal.n.a(this.f4044a, String.format(Locale.US, "Found %d files in  roll over directory, this is greater than %d, deleting %d oldest files", Integer.valueOf(listC.size()), Integer.valueOf(iC), Integer.valueOf(size)));
            TreeSet treeSet = new TreeSet(new i(this));
            for (File file : listC) {
                treeSet.add(new j(file, a(file.getName())));
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = treeSet.iterator();
            while (it.hasNext()) {
                arrayList.add(((j) it.next()).f4052a);
                if (arrayList.size() == size) {
                    break;
                }
            }
            this.f4047d.a(arrayList);
        }
    }

    public long a(String str) {
        String[] strArrSplit = str.split(c.a.a.a.a.d.d.ROLL_OVER_FILE_NAME_SEPARATOR);
        if (strArrSplit.length != 3) {
            return 0L;
        }
        try {
            return Long.valueOf(strArrSplit[2]).longValue();
        } catch (NumberFormatException e2) {
            return 0L;
        }
    }
}
