package f.a.a;

import com.google.api.client.json.Json;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonWriter;
import d.an;
import d.az;
import e.f;
import f.k;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: GsonRequestBodyConverter.java */
/* JADX INFO: loaded from: classes3.dex */
final class b<T> implements k<T, az> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final an f4763a = an.a(Json.MEDIA_TYPE);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Charset f4764b = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Gson f4765c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TypeAdapter<T> f4766d;

    b(Gson gson, TypeAdapter<T> typeAdapter) {
        this.f4765c = gson;
        this.f4766d = typeAdapter;
    }

    @Override // f.k
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public az a(T t) throws IOException {
        f fVar = new f();
        JsonWriter jsonWriterNewJsonWriter = this.f4765c.newJsonWriter(new OutputStreamWriter(fVar.d(), f4764b));
        this.f4766d.write(jsonWriterNewJsonWriter, t);
        jsonWriterNewJsonWriter.close();
        return az.create(f4763a, fVar.o());
    }
}
