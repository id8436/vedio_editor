package com.google.common.collect;

import com.google.common.base.Equivalence;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.MapMaker;
import com.google.common.collect.MapMakerInternalMap;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.ref.ReferenceQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes3.dex */
class ComputingConcurrentHashMap<K, V> extends MapMakerInternalMap<K, V> {
    private static final long serialVersionUID = 4;
    final Function<? super K, ? extends V> computingFunction;

    ComputingConcurrentHashMap(MapMaker mapMaker, Function<? super K, ? extends V> function) {
        super(mapMaker);
        this.computingFunction = (Function) Preconditions.checkNotNull(function);
    }

    @Override // com.google.common.collect.MapMakerInternalMap
    MapMakerInternalMap.Segment<K, V> createSegment(int i, int i2) {
        return new ComputingSegment(this, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.MapMakerInternalMap
    public ComputingSegment<K, V> segmentFor(int i) {
        return (ComputingSegment) super.segmentFor(i);
    }

    V getOrCompute(K k) throws ExecutionException {
        int iHash = hash(Preconditions.checkNotNull(k));
        return segmentFor(iHash).getOrCompute(k, iHash, this.computingFunction);
    }

    final class ComputingSegment<K, V> extends MapMakerInternalMap.Segment<K, V> {
        ComputingSegment(MapMakerInternalMap<K, V> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x005d, code lost:
        
            if (r5.getValueReference().isComputingReference() == false) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x005f, code lost:
        
            r6 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0083, code lost:
        
            r1 = r5.getValueReference().get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x008b, code lost:
        
            if (r1 != null) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x008d, code lost:
        
            enqueueNotification(r9, r13, r1, com.google.common.collect.MapMaker.RemovalCause.COLLECTED);
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0092, code lost:
        
            r11.evictionQueue.remove(r5);
            r11.expirationQueue.remove(r5);
            r11.count = r6;
            r6 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00a6, code lost:
        
            if (r11.map.expires() == false) goto L70;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00ae, code lost:
        
            if (r11.map.isExpired(r5) == false) goto L71;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00b0, code lost:
        
            enqueueNotification(r9, r13, r1, com.google.common.collect.MapMaker.RemovalCause.EXPIRED);
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00c3, code lost:
        
            recordLockedRead(r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:?, code lost:
        
            return r1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        V getOrCompute(K r12, int r13, com.google.common.base.Function<? super K, ? extends V> r14) throws java.util.concurrent.ExecutionException {
            /*
                Method dump skipped, instruction units count: 262
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.ComputingConcurrentHashMap.ComputingSegment.getOrCompute(java.lang.Object, int, com.google.common.base.Function):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0034  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0039  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        V compute(K r7, int r8, com.google.common.collect.MapMakerInternalMap.ReferenceEntry<K, V> r9, com.google.common.collect.ComputingConcurrentHashMap.ComputingValueReference<K, V> r10) throws java.lang.Throwable {
            /*
                r6 = this;
                r4 = 0
                r1 = 0
                java.lang.System.nanoTime()
                monitor-enter(r9)     // Catch: java.lang.Throwable -> L3d
                java.lang.Object r1 = r10.compute(r7, r8)     // Catch: java.lang.Throwable -> L2b
                long r2 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L2b
                monitor-exit(r9)     // Catch: java.lang.Throwable -> L40
                if (r1 == 0) goto L1e
                r0 = 1
                java.lang.Object r0 = r6.put(r7, r8, r1, r0)     // Catch: java.lang.Throwable -> L2f
                if (r0 == 0) goto L1e
                com.google.common.collect.MapMaker$RemovalCause r0 = com.google.common.collect.MapMaker.RemovalCause.REPLACED     // Catch: java.lang.Throwable -> L2f
                r6.enqueueNotification(r7, r8, r1, r0)     // Catch: java.lang.Throwable -> L2f
            L1e:
                int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r0 != 0) goto L25
                java.lang.System.nanoTime()
            L25:
                if (r1 != 0) goto L2a
                r6.clearValue(r7, r8, r10)
            L2a:
                return r1
            L2b:
                r0 = move-exception
                r2 = r4
            L2d:
                monitor-exit(r9)     // Catch: java.lang.Throwable -> L40
                throw r0     // Catch: java.lang.Throwable -> L2f
            L2f:
                r0 = move-exception
            L30:
                int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r2 != 0) goto L37
                java.lang.System.nanoTime()
            L37:
                if (r1 != 0) goto L3c
                r6.clearValue(r7, r8, r10)
            L3c:
                throw r0
            L3d:
                r0 = move-exception
                r2 = r4
                goto L30
            L40:
                r0 = move-exception
                goto L2d
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.ComputingConcurrentHashMap.ComputingSegment.compute(java.lang.Object, int, com.google.common.collect.MapMakerInternalMap$ReferenceEntry, com.google.common.collect.ComputingConcurrentHashMap$ComputingValueReference):java.lang.Object");
        }
    }

    final class ComputationExceptionReference<K, V> implements MapMakerInternalMap.ValueReference<K, V> {
        final Throwable t;

        ComputationExceptionReference(Throwable th) {
            this.t = th;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.ValueReference
        public V get() {
            return null;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.ValueReference
        public MapMakerInternalMap.ReferenceEntry<K, V> getEntry() {
            return null;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.ValueReference
        public MapMakerInternalMap.ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, MapMakerInternalMap.ReferenceEntry<K, V> referenceEntry) {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.ValueReference
        public boolean isComputingReference() {
            return false;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.ValueReference
        public V waitForValue() throws ExecutionException {
            throw new ExecutionException(this.t);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.ValueReference
        public void clear(MapMakerInternalMap.ValueReference<K, V> valueReference) {
        }
    }

    final class ComputedReference<K, V> implements MapMakerInternalMap.ValueReference<K, V> {
        final V value;

        ComputedReference(@Nullable V v) {
            this.value = v;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.ValueReference
        public V get() {
            return this.value;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.ValueReference
        public MapMakerInternalMap.ReferenceEntry<K, V> getEntry() {
            return null;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.ValueReference
        public MapMakerInternalMap.ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, MapMakerInternalMap.ReferenceEntry<K, V> referenceEntry) {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.ValueReference
        public boolean isComputingReference() {
            return false;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.ValueReference
        public V waitForValue() {
            return get();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.ValueReference
        public void clear(MapMakerInternalMap.ValueReference<K, V> valueReference) {
        }
    }

    final class ComputingValueReference<K, V> implements MapMakerInternalMap.ValueReference<K, V> {

        @GuardedBy("ComputingValueReference.this")
        volatile MapMakerInternalMap.ValueReference<K, V> computedReference = MapMakerInternalMap.unset();
        final Function<? super K, ? extends V> computingFunction;

        public ComputingValueReference(Function<? super K, ? extends V> function) {
            this.computingFunction = function;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.ValueReference
        public V get() {
            return null;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.ValueReference
        public MapMakerInternalMap.ReferenceEntry<K, V> getEntry() {
            return null;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.ValueReference
        public MapMakerInternalMap.ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, @Nullable V v, MapMakerInternalMap.ReferenceEntry<K, V> referenceEntry) {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.ValueReference
        public boolean isComputingReference() {
            return true;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.ValueReference
        public V waitForValue() throws ExecutionException {
            if (this.computedReference == MapMakerInternalMap.UNSET) {
                boolean z = false;
                try {
                    synchronized (this) {
                        while (this.computedReference == MapMakerInternalMap.UNSET) {
                            try {
                                wait();
                            } catch (InterruptedException e2) {
                                z = true;
                            }
                        }
                    }
                } finally {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
            return this.computedReference.waitForValue();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.ValueReference
        public void clear(MapMakerInternalMap.ValueReference<K, V> valueReference) {
            setValueReference(valueReference);
        }

        V compute(K k, int i) throws ExecutionException {
            try {
                V vApply = this.computingFunction.apply(k);
                setValueReference(new ComputedReference(vApply));
                return vApply;
            } catch (Throwable th) {
                setValueReference(new ComputationExceptionReference(th));
                throw new ExecutionException(th);
            }
        }

        void setValueReference(MapMakerInternalMap.ValueReference<K, V> valueReference) {
            synchronized (this) {
                if (this.computedReference == MapMakerInternalMap.UNSET) {
                    this.computedReference = valueReference;
                    notifyAll();
                }
            }
        }
    }

    @Override // com.google.common.collect.MapMakerInternalMap
    Object writeReplace() {
        return new ComputingSerializationProxy(this.keyStrength, this.valueStrength, this.keyEquivalence, this.valueEquivalence, this.expireAfterWriteNanos, this.expireAfterAccessNanos, this.maximumSize, this.concurrencyLevel, this.removalListener, this, this.computingFunction);
    }

    final class ComputingSerializationProxy<K, V> extends MapMakerInternalMap.AbstractSerializationProxy<K, V> {
        private static final long serialVersionUID = 4;
        final Function<? super K, ? extends V> computingFunction;

        ComputingSerializationProxy(MapMakerInternalMap.Strength strength, MapMakerInternalMap.Strength strength2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, long j, long j2, int i, int i2, MapMaker.RemovalListener<? super K, ? super V> removalListener, ConcurrentMap<K, V> concurrentMap, Function<? super K, ? extends V> function) {
            super(strength, strength2, equivalence, equivalence2, j, j2, i, i2, removalListener, concurrentMap);
            this.computingFunction = function;
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            writeMapTo(objectOutputStream);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.delegate = readMapMaker(objectInputStream).makeComputingMap(this.computingFunction);
            readEntries(objectInputStream);
        }

        Object readResolve() {
            return this.delegate;
        }
    }
}
