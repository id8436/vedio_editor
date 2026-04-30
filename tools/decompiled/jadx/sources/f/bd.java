package f;

import com.google.gdata.data.analytics.Engagement;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;

/* JADX INFO: compiled from: Utils.java */
/* JADX INFO: loaded from: classes3.dex */
final class bd implements ParameterizedType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Type f4843a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Type f4844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Type[] f4845c;

    bd(Type type, Type type2, Type... typeArr) {
        if (type2 instanceof Class) {
            if ((type == null) != (((Class) type2).getEnclosingClass() == null)) {
                throw new IllegalArgumentException();
            }
        }
        for (Type type3 : typeArr) {
            bb.a(type3, "typeArgument == null");
            bb.c(type3);
        }
        this.f4843a = type;
        this.f4844b = type2;
        this.f4845c = (Type[]) typeArr.clone();
    }

    @Override // java.lang.reflect.ParameterizedType
    public Type[] getActualTypeArguments() {
        return (Type[]) this.f4845c.clone();
    }

    @Override // java.lang.reflect.ParameterizedType
    public Type getRawType() {
        return this.f4844b;
    }

    @Override // java.lang.reflect.ParameterizedType
    public Type getOwnerType() {
        return this.f4843a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof ParameterizedType) && bb.a((Type) this, (Type) obj);
    }

    public int hashCode() {
        return (Arrays.hashCode(this.f4845c) ^ this.f4844b.hashCode()) ^ bb.a((Object) this.f4843a);
    }

    public String toString() {
        if (this.f4845c.length == 0) {
            return bb.b(this.f4844b);
        }
        StringBuilder sb = new StringBuilder((this.f4845c.length + 1) * 30);
        sb.append(bb.b(this.f4844b));
        sb.append(Engagement.Comparison.LT).append(bb.b(this.f4845c[0]));
        for (int i = 1; i < this.f4845c.length; i++) {
            sb.append(", ").append(bb.b(this.f4845c[i]));
        }
        return sb.append(Engagement.Comparison.GT).toString();
    }
}
