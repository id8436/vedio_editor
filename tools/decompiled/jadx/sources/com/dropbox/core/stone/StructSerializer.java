package com.dropbox.core.stone;

import com.d.a.a.g;
import com.d.a.a.k;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class StructSerializer<T> extends CompositeSerializer<T> {
    public abstract T deserialize(k kVar, boolean z) throws IOException;

    public abstract void serialize(T t, g gVar, boolean z) throws IOException;

    @Override // com.dropbox.core.stone.StoneSerializer
    public void serialize(T t, g gVar) throws IOException {
        serialize((Object) t, gVar, false);
    }

    @Override // com.dropbox.core.stone.StoneSerializer
    public T deserialize(k kVar) throws IOException {
        return deserialize(kVar, false);
    }
}
