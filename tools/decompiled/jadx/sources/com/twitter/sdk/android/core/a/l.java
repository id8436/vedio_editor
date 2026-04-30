package com.twitter.sdk.android.core.a;

import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: SafeListAdapter.java */
/* JADX INFO: loaded from: classes3.dex */
class l<T> extends TypeAdapter<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ TypeAdapter f3824a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ TypeToken f3825b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ k f3826c;

    l(k kVar, TypeAdapter typeAdapter, TypeToken typeToken) {
        this.f3826c = kVar;
        this.f3824a = typeAdapter;
        this.f3825b = typeToken;
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, T t) throws IOException {
        this.f3824a.write(jsonWriter, t);
    }

    @Override // com.google.gson.TypeAdapter
    public T read(JsonReader jsonReader) throws IOException {
        T t = (T) this.f3824a.read(jsonReader);
        if (List.class.isAssignableFrom(this.f3825b.getRawType())) {
            if (t == null) {
                return (T) Collections.EMPTY_LIST;
            }
            return (T) Collections.unmodifiableList((List) t);
        }
        return t;
    }
}
