package com.dropbox.core.util;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Collector<E, L> {
    public abstract void add(E e2);

    public abstract L finish();

    public final class ArrayListCollector<E> extends Collector<E, ArrayList<E>> {
        private ArrayList<E> list = new ArrayList<>();

        @Override // com.dropbox.core.util.Collector
        public void add(E e2) {
            if (this.list == null) {
                throw new IllegalStateException("already called finish()");
            }
            this.list.add(e2);
        }

        @Override // com.dropbox.core.util.Collector
        public ArrayList<E> finish() {
            ArrayList<E> arrayList = this.list;
            if (arrayList == null) {
                throw new IllegalStateException("already called finish()");
            }
            this.list = null;
            return arrayList;
        }
    }

    public final class NullSkipper<E, L> extends Collector<E, L> {
        private final Collector<E, L> underlying;

        public NullSkipper(Collector<E, L> collector) {
            this.underlying = collector;
        }

        public static <E, L> Collector<E, L> mk(Collector<E, L> collector) {
            return new NullSkipper(collector);
        }

        @Override // com.dropbox.core.util.Collector
        public void add(E e2) {
            if (e2 != null) {
                this.underlying.add(e2);
            }
        }

        @Override // com.dropbox.core.util.Collector
        public L finish() {
            return this.underlying.finish();
        }
    }
}
