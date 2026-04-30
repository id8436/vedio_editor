package c.a.a.a.a.b;

import android.os.Build;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: compiled from: CommonUtils.java */
/* JADX INFO: loaded from: classes.dex */
enum o {
    X86_32,
    X86_64,
    ARM_UNKNOWN,
    PPC,
    PPC64,
    ARMV6,
    ARMV7,
    UNKNOWN,
    ARMV7S,
    ARM64;

    private static final Map<String, o> k = new HashMap(4);

    static {
        k.put("armeabi-v7a", ARMV7);
        k.put("armeabi", ARMV6);
        k.put("x86", X86_32);
    }

    static o a() {
        String str = Build.CPU_ABI;
        if (TextUtils.isEmpty(str)) {
            c.a.a.a.f.h().a("Fabric", "Architecture#getValue()::Build.CPU_ABI returned null or empty");
            return UNKNOWN;
        }
        o oVar = k.get(str.toLowerCase(Locale.US));
        if (oVar == null) {
            return UNKNOWN;
        }
        return oVar;
    }
}
