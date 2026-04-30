package d.a.a;

import d.ax;
import d.bd;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: CacheStrategy.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    public final ax f4194a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    public final bd f4195b;

    d(ax axVar, bd bdVar) {
        this.f4194a = axVar;
        this.f4195b = bdVar;
    }

    public static boolean a(bd bdVar, ax axVar) {
        switch (bdVar.b()) {
            case 200:
            case 203:
            case 204:
            case 300:
            case 301:
            case 308:
            case 404:
            case 405:
            case 410:
            case 414:
            case 501:
                break;
            case 302:
            case 307:
                if (bdVar.a("Expires") == null && bdVar.i().c() == -1 && !bdVar.i().e() && !bdVar.i().d()) {
                    return false;
                }
                break;
            default:
                return false;
        }
        return (bdVar.i().b() || axVar.f().b()) ? false : true;
    }
}
