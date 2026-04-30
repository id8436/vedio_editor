package f;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

/* JADX INFO: compiled from: Utils.java */
/* JADX INFO: loaded from: classes3.dex */
final class be implements WildcardType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Type f4846a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Type f4847b;

    be(Type[] typeArr, Type[] typeArr2) {
        if (typeArr2.length > 1) {
            throw new IllegalArgumentException();
        }
        if (typeArr.length != 1) {
            throw new IllegalArgumentException();
        }
        if (typeArr2.length == 1) {
            if (typeArr2[0] == null) {
                throw new NullPointerException();
            }
            bb.c(typeArr2[0]);
            if (typeArr[0] != Object.class) {
                throw new IllegalArgumentException();
            }
            this.f4847b = typeArr2[0];
            this.f4846a = Object.class;
            return;
        }
        if (typeArr[0] == null) {
            throw new NullPointerException();
        }
        bb.c(typeArr[0]);
        this.f4847b = null;
        this.f4846a = typeArr[0];
    }

    @Override // java.lang.reflect.WildcardType
    public Type[] getUpperBounds() {
        return new Type[]{this.f4846a};
    }

    @Override // java.lang.reflect.WildcardType
    public Type[] getLowerBounds() {
        return this.f4847b != null ? new Type[]{this.f4847b} : bb.f4841a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof WildcardType) && bb.a((Type) this, (Type) obj);
    }

    public int hashCode() {
        return (this.f4847b != null ? this.f4847b.hashCode() + 31 : 1) ^ (this.f4846a.hashCode() + 31);
    }

    public String toString() {
        return this.f4847b != null ? "? super " + bb.b(this.f4847b) : this.f4846a == Object.class ? "?" : "? extends " + bb.b(this.f4846a);
    }
}
