package f;

import java.io.IOException;
import java.lang.reflect.Array;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ParameterHandler.java */
/* JADX INFO: loaded from: classes3.dex */
class ab extends z<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ z f4770a;

    ab(z zVar) {
        this.f4770a = zVar;
    }

    @Override // f.z
    void a(at atVar, @Nullable Object obj) throws IOException {
        if (obj != null) {
            int length = Array.getLength(obj);
            for (int i = 0; i < length; i++) {
                this.f4770a.a(atVar, Array.get(obj, i));
            }
        }
    }
}
