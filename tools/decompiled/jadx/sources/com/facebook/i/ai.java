package com.facebook.i;

import java.util.Iterator;

/* JADX INFO: compiled from: NativeProtocol.java */
/* JADX INFO: loaded from: classes2.dex */
final class ai implements Runnable {
    ai() {
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Iterator it = ah.f2289b.iterator();
            while (it.hasNext()) {
                ((al) it.next()).a(true);
            }
        } finally {
            ah.f2291d.set(false);
        }
    }
}
