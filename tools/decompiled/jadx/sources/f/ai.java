package f;

import java.io.IOException;
import java.util.Map;
import javax.annotation.Nullable;
import org.apache.http.entity.mime.MIME;

/* JADX INFO: compiled from: ParameterHandler.java */
/* JADX INFO: loaded from: classes3.dex */
final class ai<T> extends z<Map<String, T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k<T, d.az> f4782a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4783b;

    ai(k<T, d.az> kVar, String str) {
        this.f4782a = kVar;
        this.f4783b = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // f.z
    public void a(at atVar, @Nullable Map<String, T> map) throws IOException {
        if (map == null) {
            throw new IllegalArgumentException("Part map was null.");
        }
        for (Map.Entry<String, T> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key == null) {
                throw new IllegalArgumentException("Part map contained null key.");
            }
            T value = entry.getValue();
            if (value == null) {
                throw new IllegalArgumentException("Part map contained null value for key '" + key + "'.");
            }
            atVar.a(d.ag.a("Content-Disposition", "form-data; name=\"" + key + "\"", MIME.CONTENT_TRANSFER_ENC, this.f4783b), this.f4782a.a(value));
        }
    }
}
