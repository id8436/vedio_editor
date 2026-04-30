package com.facebook.a;

import android.content.Context;
import android.util.Log;
import com.facebook.i.as;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: AppEventsLogger.java */
/* JADX INFO: loaded from: classes2.dex */
class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Object f1736a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f1737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private HashMap<h, List<i>> f1738c = new HashMap<>();

    private p(Context context) {
        this.f1737b = context;
    }

    public static p a(Context context) {
        p pVar;
        synchronized (f1736a) {
            pVar = new p(context);
            pVar.c();
        }
        return pVar;
    }

    public static void a(Context context, h hVar, q qVar) {
        HashMap map = new HashMap();
        map.put(hVar, qVar);
        a(context, map);
    }

    public static void a(Context context, Map<h, q> map) {
        synchronized (f1736a) {
            p pVarA = a(context);
            for (Map.Entry<h, q> entry : map.entrySet()) {
                List<i> listB = entry.getValue().b();
                if (listB.size() != 0) {
                    pVarA.a(entry.getKey(), listB);
                }
            }
            pVarA.b();
        }
    }

    public Set<h> a() {
        return this.f1738c.keySet();
    }

    public List<i> a(h hVar) {
        return this.f1738c.get(hVar);
    }

    private void b() throws Throwable {
        ObjectOutputStream objectOutputStream;
        try {
            objectOutputStream = new ObjectOutputStream(new BufferedOutputStream(this.f1737b.openFileOutput("AppEventsLogger.persistedevents", 0)));
            try {
                try {
                    objectOutputStream.writeObject(this.f1738c);
                    as.a(objectOutputStream);
                } catch (Exception e2) {
                    e = e2;
                    Log.d(a.f1690a, "Got unexpected exception: " + e.toString());
                    as.a(objectOutputStream);
                }
            } catch (Throwable th) {
                th = th;
                as.a(objectOutputStream);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            objectOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            objectOutputStream = null;
            as.a(objectOutputStream);
            throw th;
        }
    }

    private void c() throws Throwable {
        ObjectInputStream objectInputStream;
        Throwable th;
        Exception e2;
        ObjectInputStream objectInputStream2 = null;
        try {
            try {
                objectInputStream = new ObjectInputStream(new BufferedInputStream(this.f1737b.openFileInput("AppEventsLogger.persistedevents")));
                try {
                    HashMap<h, List<i>> map = (HashMap) objectInputStream.readObject();
                    this.f1737b.getFileStreamPath("AppEventsLogger.persistedevents").delete();
                    this.f1738c = map;
                    as.a((Closeable) objectInputStream);
                } catch (FileNotFoundException e3) {
                    objectInputStream2 = objectInputStream;
                    as.a((Closeable) objectInputStream2);
                } catch (Exception e4) {
                    e2 = e4;
                    Log.d(a.f1690a, "Got unexpected exception: " + e2.toString());
                    as.a((Closeable) objectInputStream);
                }
            } catch (Throwable th2) {
                th = th2;
                as.a((Closeable) objectInputStream);
                throw th;
            }
        } catch (FileNotFoundException e5) {
        } catch (Exception e6) {
            objectInputStream = null;
            e2 = e6;
        } catch (Throwable th3) {
            objectInputStream = null;
            th = th3;
            as.a((Closeable) objectInputStream);
            throw th;
        }
    }

    public void a(h hVar, List<i> list) {
        if (!this.f1738c.containsKey(hVar)) {
            this.f1738c.put(hVar, new ArrayList());
        }
        this.f1738c.get(hVar).addAll(list);
    }
}
