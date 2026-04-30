package f;

import java.io.IOException;
import java.util.Iterator;
import javax.annotation.Nullable;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: ParameterHandler.java */
/* JADX INFO: loaded from: classes3.dex */
class aa<T> extends z<Iterable<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ z f4769a;

    aa(z zVar) {
        this.f4769a = zVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // f.z
    public void a(at atVar, @Nullable Iterable<T> iterable) throws IOException {
        if (iterable != null) {
            Iterator<T> it = iterable.iterator();
            while (it.hasNext()) {
                this.f4769a.a(atVar, it.next());
            }
        }
    }
}
