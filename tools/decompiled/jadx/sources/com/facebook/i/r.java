package com.facebook.i;

import android.content.Intent;
import com.google.gdata.client.GDataProtocol;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: CallbackManagerImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public final class r implements com.facebook.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Map<Integer, s> f2364a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<Integer, s> f2365b = new HashMap();

    public static synchronized void a(int i, s sVar) {
        az.a(sVar, GDataProtocol.Parameter.CALLBACK);
        if (!f2364a.containsKey(Integer.valueOf(i))) {
            f2364a.put(Integer.valueOf(i), sVar);
        }
    }

    private static synchronized s a(Integer num) {
        return f2364a.get(num);
    }

    private static boolean b(int i, int i2, Intent intent) {
        s sVarA = a(Integer.valueOf(i));
        if (sVarA != null) {
            return sVarA.a(i2, intent);
        }
        return false;
    }

    public void b(int i, s sVar) {
        az.a(sVar, GDataProtocol.Parameter.CALLBACK);
        this.f2365b.put(Integer.valueOf(i), sVar);
    }

    @Override // com.facebook.k
    public boolean a(int i, int i2, Intent intent) {
        s sVar = this.f2365b.get(Integer.valueOf(i));
        return sVar != null ? sVar.a(i2, intent) : b(i, i2, intent);
    }
}
