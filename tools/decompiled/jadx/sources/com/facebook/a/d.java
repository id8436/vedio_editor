package com.facebook.a;

import com.facebook.i.as;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: AppEventsLogger.java */
/* JADX INFO: loaded from: classes2.dex */
final class d implements Runnable {
    d() {
    }

    @Override // java.lang.Runnable
    public void run() {
        HashSet hashSet = new HashSet();
        synchronized (a.i) {
            Iterator it = a.f1691d.keySet().iterator();
            while (it.hasNext()) {
                hashSet.add(((h) it.next()).b());
            }
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            as.a((String) it2.next(), true);
        }
    }
}
