package com.b.a.d.b.c;

import android.util.Log;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'b' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: FifoPriorityThreadPoolExecutor.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f847a = new f("IGNORE", 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final f f848b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final f f849c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ f[] f850d;

    private f(String str, int i) {
    }

    public static f valueOf(String str) {
        return (f) Enum.valueOf(f.class, str);
    }

    public static f[] values() {
        return (f[]) f850d.clone();
    }

    static {
        final int i = 2;
        final int i2 = 1;
        final String str = "LOG";
        f848b = new f(str, i2) { // from class: com.b.a.d.b.c.g
            @Override // com.b.a.d.b.c.f
            protected void a(Throwable th) {
                if (Log.isLoggable("PriorityExecutor", 6)) {
                    Log.e("PriorityExecutor", "Request threw uncaught throwable", th);
                }
            }
        };
        final String str2 = "THROW";
        f849c = new f(str2, i) { // from class: com.b.a.d.b.c.h
            @Override // com.b.a.d.b.c.f
            protected void a(Throwable th) {
                super.a(th);
                throw new RuntimeException(th);
            }
        };
        f850d = new f[]{f847a, f848b, f849c};
    }

    protected void a(Throwable th) {
    }
}
