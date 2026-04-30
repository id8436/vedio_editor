package com.e.a.a.a.d;

import android.support.v7.widget.RecyclerView;

/* JADX INFO: compiled from: WrapperAdapterUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {
    public static <T> T a(RecyclerView.Adapter adapter, Class<T> cls) {
        if (cls.isInstance(adapter)) {
            return cls.cast(adapter);
        }
        if (adapter instanceof b) {
            return (T) a(((b) adapter).g(), cls);
        }
        return null;
    }

    public static RecyclerView.Adapter a(RecyclerView.Adapter adapter) {
        return b(adapter);
    }

    private static RecyclerView.Adapter b(RecyclerView.Adapter adapter) {
        if (adapter instanceof b) {
            b bVar = (b) adapter;
            RecyclerView.Adapter adapterG = bVar.g();
            bVar.f();
            return b(adapterG);
        }
        return adapter;
    }
}
