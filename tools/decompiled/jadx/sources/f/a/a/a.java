package f.a.a;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import d.az;
import d.bf;
import f.aw;
import f.k;
import f.l;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

/* JADX INFO: compiled from: GsonConverterFactory.java */
/* JADX INFO: loaded from: classes3.dex */
public final class a extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Gson f4762a;

    public static a a() {
        return a(new Gson());
    }

    public static a a(Gson gson) {
        if (gson == null) {
            throw new NullPointerException("gson == null");
        }
        return new a(gson);
    }

    private a(Gson gson) {
        this.f4762a = gson;
    }

    @Override // f.l
    public k<bf, ?> a(Type type, Annotation[] annotationArr, aw awVar) {
        return new c(this.f4762a, this.f4762a.getAdapter(TypeToken.get(type)));
    }

    @Override // f.l
    public k<?, az> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, aw awVar) {
        return new b(this.f4762a, this.f4762a.getAdapter(TypeToken.get(type)));
    }
}
