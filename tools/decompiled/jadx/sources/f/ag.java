package f;

import java.io.IOException;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ParameterHandler.java */
/* JADX INFO: loaded from: classes3.dex */
final class ag<T> extends z<Map<String, T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k<T, String> f4779a;

    ag(k<T, String> kVar) {
        this.f4779a = kVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // f.z
    public void a(at atVar, @Nullable Map<String, T> map) throws IOException {
        if (map == null) {
            throw new IllegalArgumentException("Header map was null.");
        }
        for (Map.Entry<String, T> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key == null) {
                throw new IllegalArgumentException("Header map contained null key.");
            }
            T value = entry.getValue();
            if (value == null) {
                throw new IllegalArgumentException("Header map contained null value for key '" + key + "'.");
            }
            atVar.a(key, this.f4779a.a(value));
        }
    }
}
