package f;

import com.adobe.xmp.XMPConst;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

/* JADX INFO: compiled from: Utils.java */
/* JADX INFO: loaded from: classes3.dex */
final class bc implements GenericArrayType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Type f4842a;

    bc(Type type) {
        this.f4842a = type;
    }

    @Override // java.lang.reflect.GenericArrayType
    public Type getGenericComponentType() {
        return this.f4842a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof GenericArrayType) && bb.a((Type) this, (Type) obj);
    }

    public int hashCode() {
        return this.f4842a.hashCode();
    }

    public String toString() {
        return bb.b(this.f4842a) + XMPConst.ARRAY_ITEM_NAME;
    }
}
