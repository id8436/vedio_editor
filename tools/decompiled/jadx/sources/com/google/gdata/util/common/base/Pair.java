package com.google.gdata.util.common.base;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class Pair<A, B> implements Serializable, Cloneable {
    private static final long serialVersionUID = 747826592375603043L;
    public final A first;
    public final B second;

    public static <A, B> Pair<A, B> of(A a2, B b2) {
        return new Pair<>(a2, b2);
    }

    public Pair(A a2, B b2) {
        this.first = a2;
        this.second = b2;
    }

    public A getFirst() {
        return this.first;
    }

    public B getSecond() {
        return this.second;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Pair<A, B> m7clone() {
        try {
            return (Pair) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return eq(this.first, pair.first) && eq(this.second, pair.second);
    }

    public int hashCode() {
        return (hash(this.first, 0) - 559038737) ^ hash(this.second, 0);
    }

    public String toString() {
        return String.format("(%s, %s)", this.first, this.second);
    }

    private static boolean eq(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    private static int hash(Object obj, int i) {
        return obj == null ? i : obj.hashCode();
    }
}
