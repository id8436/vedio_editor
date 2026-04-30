package f;

import java.io.IOException;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ParameterHandler.java */
/* JADX INFO: loaded from: classes3.dex */
final class ae<T> extends z<Map<String, T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k<T, String> f4775a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f4776b;

    ae(k<T, String> kVar, boolean z) {
        this.f4775a = kVar;
        this.f4776b = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // f.z
    public void a(at atVar, @Nullable Map<String, T> map) throws IOException {
        if (map == null) {
            throw new IllegalArgumentException("Field map was null.");
        }
        for (Map.Entry<String, T> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key == null) {
                throw new IllegalArgumentException("Field map contained null key.");
            }
            T value = entry.getValue();
            if (value == null) {
                throw new IllegalArgumentException("Field map contained null value for key '" + key + "'.");
            }
            String strA = this.f4775a.a(value);
            if (strA == null) {
                throw new IllegalArgumentException("Field map value '" + value + "' converted to null by " + this.f4775a.getClass().getName() + " for key '" + key + "'.");
            }
            atVar.c(key, strA, this.f4776b);
        }
    }
}
