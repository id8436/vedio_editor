package com.google.api.client.util;

/* JADX INFO: loaded from: classes3.dex */
public final class Joiner {
    private final com.google.api.client.repackaged.com.google.common.base.Joiner wrapped;

    public static Joiner on(char c2) {
        return new Joiner(com.google.api.client.repackaged.com.google.common.base.Joiner.on(c2));
    }

    private Joiner(com.google.api.client.repackaged.com.google.common.base.Joiner joiner) {
        this.wrapped = joiner;
    }

    public final String join(Iterable<?> iterable) {
        return this.wrapped.join(iterable);
    }
}
