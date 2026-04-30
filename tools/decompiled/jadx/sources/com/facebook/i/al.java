package com.facebook.i;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import java.util.HashSet;
import java.util.TreeSet;

/* JADX INFO: compiled from: NativeProtocol.java */
/* JADX INFO: loaded from: classes2.dex */
abstract class al {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final HashSet<String> f2293a = c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TreeSet<Integer> f2294b;

    protected abstract String a();

    private al() {
    }

    /* synthetic */ al(ai aiVar) {
        this();
    }

    private static HashSet<String> c() {
        HashSet<String> hashSet = new HashSet<>();
        hashSet.add("8a3c4b262d721acd49a4bf97d5213199c86fa2b9");
        hashSet.add("a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc");
        hashSet.add("5e8f16062ea3cd2c4a0d547876baa6f38cabf625");
        return hashSet;
    }

    public boolean a(Context context, String str) {
        String str2 = Build.BRAND;
        int i = context.getApplicationInfo().flags;
        if (str2.startsWith("generic") && (i & 2) != 0) {
            return true;
        }
        try {
            for (Signature signature : context.getPackageManager().getPackageInfo(str, 64).signatures) {
                if (f2293a.contains(as.a(signature.toByteArray()))) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }

    public TreeSet<Integer> b() {
        if (this.f2294b == null) {
            a(false);
        }
        return this.f2294b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(boolean z) {
        if (!z) {
            if (this.f2294b == null) {
            }
        }
        this.f2294b = ah.b(this);
    }
}
