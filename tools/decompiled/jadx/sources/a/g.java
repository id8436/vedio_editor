package a;

import java.util.Locale;

/* JADX INFO: compiled from: CancellationToken.java */
/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f10a;

    public boolean a() {
        return this.f10a.a();
    }

    public String toString() {
        return String.format(Locale.US, "%s@%s[cancellationRequested=%s]", getClass().getName(), Integer.toHexString(hashCode()), Boolean.toString(this.f10a.a()));
    }
}
