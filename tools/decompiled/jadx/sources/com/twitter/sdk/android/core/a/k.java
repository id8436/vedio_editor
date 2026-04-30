package com.twitter.sdk.android.core.a;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

/* JADX INFO: compiled from: SafeListAdapter.java */
/* JADX INFO: loaded from: classes3.dex */
public class k implements TypeAdapterFactory {
    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        return new l(this, gson.getDelegateAdapter(this, typeToken), typeToken);
    }
}
