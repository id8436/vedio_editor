package f.a.a;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import d.bf;
import f.k;
import java.io.IOException;

/* JADX INFO: compiled from: GsonResponseBodyConverter.java */
/* JADX INFO: loaded from: classes3.dex */
final class c<T> implements k<bf, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Gson f4767a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TypeAdapter<T> f4768b;

    c(Gson gson, TypeAdapter<T> typeAdapter) {
        this.f4767a = gson;
        this.f4768b = typeAdapter;
    }

    @Override // f.k
    public T a(bf bfVar) throws IOException {
        try {
            return this.f4768b.read(this.f4767a.newJsonReader(bfVar.e()));
        } finally {
            bfVar.close();
        }
    }
}
