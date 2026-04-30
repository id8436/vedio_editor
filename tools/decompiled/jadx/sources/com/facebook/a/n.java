package com.facebook.a;

import android.content.Context;
import android.util.Log;
import com.facebook.av;
import com.facebook.i.ag;
import com.facebook.i.as;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: AppEventsLogger.java */
/* JADX INFO: loaded from: classes2.dex */
class n {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Map<h, r> f1734d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f1731a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f1732b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f1733c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Runnable f1735e = new o();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v9 */
    private static void b(Context context) {
        ObjectInputStream objectInputStream;
        Exception e2;
        ObjectInputStream objectInputStream2 = null;
        synchronized (f1731a) {
            ?? r1 = f1733c;
            try {
                if (r1 == 0) {
                    try {
                        objectInputStream = new ObjectInputStream(context.openFileInput("AppEventsLogger.persistedsessioninfo"));
                        try {
                            f1734d = (HashMap) objectInputStream.readObject();
                            ag.a(av.APP_EVENTS, "AppEvents", "App session info loaded");
                            as.a((Closeable) objectInputStream);
                            context.deleteFile("AppEventsLogger.persistedsessioninfo");
                            if (f1734d == null) {
                                f1734d = new HashMap();
                            }
                            f1733c = true;
                            f1732b = false;
                            r1 = objectInputStream;
                        } catch (FileNotFoundException e3) {
                            objectInputStream2 = objectInputStream;
                            as.a((Closeable) objectInputStream2);
                            context.deleteFile("AppEventsLogger.persistedsessioninfo");
                            if (f1734d == null) {
                                f1734d = new HashMap();
                            }
                            f1733c = true;
                            f1732b = false;
                        } catch (Exception e4) {
                            e2 = e4;
                            Log.d(a.f1690a, "Got unexpected exception: " + e2.toString());
                            as.a((Closeable) objectInputStream);
                            context.deleteFile("AppEventsLogger.persistedsessioninfo");
                            if (f1734d == null) {
                                f1734d = new HashMap();
                            }
                            f1733c = true;
                            f1732b = false;
                            r1 = objectInputStream;
                        }
                    } catch (FileNotFoundException e5) {
                    } catch (Exception e6) {
                        objectInputStream = null;
                        e2 = e6;
                    } catch (Throwable th) {
                        r1 = 0;
                        th = th;
                        as.a((Closeable) r1);
                        context.deleteFile("AppEventsLogger.persistedsessioninfo");
                        if (f1734d == null) {
                            f1734d = new HashMap();
                        }
                        f1733c = true;
                        f1732b = false;
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    static void a(Context context) {
        ObjectOutputStream objectOutputStream;
        synchronized (f1731a) {
            try {
                if (f1732b) {
                    try {
                        objectOutputStream = new ObjectOutputStream(new BufferedOutputStream(context.openFileOutput("AppEventsLogger.persistedsessioninfo", 0)));
                        try {
                            objectOutputStream.writeObject(f1734d);
                            f1732b = false;
                            ag.a(av.APP_EVENTS, "AppEvents", "App session info saved");
                            as.a(objectOutputStream);
                        } catch (Exception e2) {
                            e = e2;
                            Log.d(a.f1690a, "Got unexpected exception: " + e.toString());
                            as.a(objectOutputStream);
                        }
                    } catch (Exception e3) {
                        e = e3;
                        objectOutputStream = null;
                    } catch (Throwable th) {
                        th = th;
                        objectOutputStream = null;
                        as.a(objectOutputStream);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    static void a(Context context, h hVar, a aVar, long j, String str) {
        synchronized (f1731a) {
            a(context, hVar).a(aVar, j, str);
            a();
        }
    }

    private static r a(Context context, h hVar) {
        b(context);
        r rVar = f1734d.get(hVar);
        if (rVar == null) {
            r rVar2 = new r();
            f1734d.put(hVar, rVar2);
            return rVar2;
        }
        return rVar;
    }

    private static void a() {
        if (!f1732b) {
            f1732b = true;
            a.f1692e.schedule(f1735e, 30L, TimeUnit.SECONDS);
        }
    }
}
