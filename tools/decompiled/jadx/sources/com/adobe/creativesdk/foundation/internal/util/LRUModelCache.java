package com.adobe.creativesdk.foundation.internal.util;

import android.util.LruCache;

/* JADX INFO: loaded from: classes2.dex */
public class LRUModelCache<Key_t, Value_t> {
    private LruCache<Key_t, Value_t> _mLRUCache;
    int _maxItems;

    public LRUModelCache(int i) {
        this._maxItems = i;
        this._mLRUCache = new LruCache<>(this._maxItems);
    }

    public void addItem(Key_t key_t, Value_t value_t) {
        this._mLRUCache.put(key_t, value_t);
    }

    public void removeItem(Key_t key_t) {
        this._mLRUCache.remove(key_t);
    }

    public Value_t getItem(Key_t key_t) {
        return this._mLRUCache.get(key_t);
    }

    public void clear() {
        this._mLRUCache.evictAll();
    }
}
