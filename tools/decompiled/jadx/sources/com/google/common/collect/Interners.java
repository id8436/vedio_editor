package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Equivalence;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.MapMakerInternalMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes3.dex */
@Beta
public final class Interners {
    private Interners() {
    }

    public static <E> Interner<E> newStrongInterner() {
        final ConcurrentMap concurrentMapMakeMap = new MapMaker().makeMap();
        return new Interner<E>() { // from class: com.google.common.collect.Interners.1
            @Override // com.google.common.collect.Interner
            public E intern(E e2) {
                E e3 = (E) concurrentMapMakeMap.putIfAbsent(Preconditions.checkNotNull(e2), e2);
                return e3 == null ? e2 : e3;
            }
        };
    }

    @GwtIncompatible("java.lang.ref.WeakReference")
    public static <E> Interner<E> newWeakInterner() {
        return new WeakInterner();
    }

    class WeakInterner<E> implements Interner<E> {
        private final MapMakerInternalMap<E, Dummy> map;

        enum Dummy {
            VALUE
        }

        private WeakInterner() {
            this.map = (MapMakerInternalMap<E, Dummy>) new MapMaker().weakKeys().keyEquivalence2(Equivalence.equals()).makeCustomMap();
        }

        @Override // com.google.common.collect.Interner
        public E intern(E e2) {
            E key;
            do {
                MapMakerInternalMap.ReferenceEntry<E, Dummy> entry = this.map.getEntry(e2);
                if (entry != null && (key = entry.getKey()) != null) {
                    return key;
                }
            } while (this.map.putIfAbsent(e2, Dummy.VALUE) != null);
            return e2;
        }
    }

    public static <E> Function<E, E> asFunction(Interner<E> interner) {
        return new InternerFunction((Interner) Preconditions.checkNotNull(interner));
    }

    class InternerFunction<E> implements Function<E, E> {
        private final Interner<E> interner;

        public InternerFunction(Interner<E> interner) {
            this.interner = interner;
        }

        @Override // com.google.common.base.Function
        public E apply(E e2) {
            return this.interner.intern(e2);
        }

        public int hashCode() {
            return this.interner.hashCode();
        }

        @Override // com.google.common.base.Function
        public boolean equals(Object obj) {
            if (obj instanceof InternerFunction) {
                return this.interner.equals(((InternerFunction) obj).interner);
            }
            return false;
        }
    }
}
