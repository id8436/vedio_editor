package com.twitter.sdk.android.core.a;

import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: SafeMapAdapter.java */
/* JADX INFO: loaded from: classes3.dex */
class n<T> extends TypeAdapter<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ TypeAdapter f3827a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ TypeToken f3828b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ m f3829c;

    n(m mVar, TypeAdapter typeAdapter, TypeToken typeToken) {
        this.f3829c = mVar;
        this.f3827a = typeAdapter;
        this.f3828b = typeToken;
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, T t) throws IOException {
        this.f3827a.write(jsonWriter, t);
    }

    @Override // com.google.gson.TypeAdapter
    public T read(JsonReader jsonReader) throws IOException {
        T t = (T) this.f3827a.read(jsonReader);
        if (Map.class.isAssignableFrom(this.f3828b.getRawType())) {
            if (t == null) {
                return (T) Collections.EMPTY_MAP;
            }
            return (T) Collections.unmodifiableMap((Map) t);
        }
        return t;
    }
}
