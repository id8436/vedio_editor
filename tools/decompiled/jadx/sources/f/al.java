package f;

import java.io.IOException;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ParameterHandler.java */
/* JADX INFO: loaded from: classes3.dex */
final class al<T> extends z<Map<String, T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k<T, String> f4790a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f4791b;

    al(k<T, String> kVar, boolean z) {
        this.f4790a = kVar;
        this.f4791b = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // f.z
    public void a(at atVar, @Nullable Map<String, T> map) throws IOException {
        if (map == null) {
            throw new IllegalArgumentException("Query map was null.");
        }
        for (Map.Entry<String, T> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key == null) {
                throw new IllegalArgumentException("Query map contained null key.");
            }
            T value = entry.getValue();
            if (value == null) {
                throw new IllegalArgumentException("Query map contained null value for key '" + key + "'.");
            }
            String strA = this.f4790a.a(value);
            if (strA == null) {
                throw new IllegalArgumentException("Query map value '" + value + "' converted to null by " + this.f4790a.getClass().getName() + " for key '" + key + "'.");
            }
            atVar.b(key, strA, this.f4791b);
        }
    }
}
