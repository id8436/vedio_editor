package com.twitter.sdk.android.core.a;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

/* JADX INFO: compiled from: SafeMapAdapter.java */
/* JADX INFO: loaded from: classes3.dex */
public class m implements TypeAdapterFactory {
    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        return new n(this, gson.getDelegateAdapter(this, typeToken), typeToken);
    }
}
