package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Table;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
abstract class RegularImmutableTable<R, C, V> extends ImmutableTable<R, C, V> {
    abstract Table.Cell<R, C, V> getCell(int i);

    abstract V getValue(int i);

    RegularImmutableTable() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.AbstractTable
    public final ImmutableSet<Table.Cell<R, C, V>> createCellSet() {
        return isEmpty() ? ImmutableSet.of() : new CellSet();
    }

    final class CellSet extends ImmutableSet<Table.Cell<R, C, V>> {
        private CellSet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return RegularImmutableTable.this.size();
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<Table.Cell<R, C, V>> iterator() {
            return asList().iterator();
        }

        @Override // com.google.common.collect.ImmutableCollection
        ImmutableList<Table.Cell<R, C, V>> createAsList() {
            return new ImmutableAsList<Table.Cell<R, C, V>>() { // from class: com.google.common.collect.RegularImmutableTable.CellSet.1
                @Override // java.util.List
                public Table.Cell<R, C, V> get(int i) {
                    return RegularImmutableTable.this.getCell(i);
                }

                @Override // com.google.common.collect.ImmutableAsList
                ImmutableCollection<Table.Cell<R, C, V>> delegateCollection() {
                    return CellSet.this;
                }
            };
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@Nullable Object obj) {
            if (!(obj instanceof Table.Cell)) {
                return false;
            }
            Table.Cell cell = (Table.Cell) obj;
            Object obj2 = RegularImmutableTable.this.get(cell.getRowKey(), cell.getColumnKey());
            return obj2 != null && obj2.equals(cell.getValue());
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean isPartialView() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.AbstractTable
    public final ImmutableCollection<V> createValues() {
        return isEmpty() ? ImmutableList.of() : new Values();
    }

    final class Values extends ImmutableList<V> {
        private Values() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return RegularImmutableTable.this.size();
        }

        @Override // java.util.List
        public V get(int i) {
            return (V) RegularImmutableTable.this.getValue(i);
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean isPartialView() {
            return true;
        }
    }

    static <R, C, V> RegularImmutableTable<R, C, V> forCells(List<Table.Cell<R, C, V>> list, @Nullable final Comparator<? super R> comparator, @Nullable final Comparator<? super C> comparator2) {
        Preconditions.checkNotNull(list);
        if (comparator != null || comparator2 != null) {
            Collections.sort(list, new Comparator<Table.Cell<R, C, V>>() { // from class: com.google.common.collect.RegularImmutableTable.1
                @Override // java.util.Comparator
                public int compare(Table.Cell<R, C, V> cell, Table.Cell<R, C, V> cell2) {
                    int iCompare = comparator == null ? 0 : comparator.compare(cell.getRowKey(), cell2.getRowKey());
                    if (iCompare != 0) {
                        return iCompare;
                    }
                    if (comparator2 != null) {
                        return comparator2.compare(cell.getColumnKey(), cell2.getColumnKey());
                    }
                    return 0;
                }
            });
        }
        return forCellsInternal(list, comparator, comparator2);
    }

    static <R, C, V> RegularImmutableTable<R, C, V> forCells(Iterable<Table.Cell<R, C, V>> iterable) {
        return forCellsInternal(iterable, null, null);
    }

    private static final <R, C, V> RegularImmutableTable<R, C, V> forCellsInternal(Iterable<Table.Cell<R, C, V>> iterable, @Nullable Comparator<? super R> comparator, @Nullable Comparator<? super C> comparator2) {
        ImmutableSet.Builder builder = ImmutableSet.builder();
        ImmutableSet.Builder builder2 = ImmutableSet.builder();
        ImmutableList<Table.Cell> immutableListCopyOf = ImmutableList.copyOf(iterable);
        for (Table.Cell cell : immutableListCopyOf) {
            builder.add(cell.getRowKey());
            builder2.add(cell.getColumnKey());
        }
        ImmutableSet immutableSetBuild = builder.build();
        if (comparator != null) {
            ArrayList arrayListNewArrayList = Lists.newArrayList(immutableSetBuild);
            Collections.sort(arrayListNewArrayList, comparator);
            immutableSetBuild = ImmutableSet.copyOf((Collection) arrayListNewArrayList);
        }
        ImmutableSet immutableSetBuild2 = builder2.build();
        if (comparator2 != null) {
            ArrayList arrayListNewArrayList2 = Lists.newArrayList(immutableSetBuild2);
            Collections.sort(arrayListNewArrayList2, comparator2);
            immutableSetBuild2 = ImmutableSet.copyOf((Collection) arrayListNewArrayList2);
        }
        return ((long) immutableListCopyOf.size()) > (((long) immutableSetBuild.size()) * ((long) immutableSetBuild2.size())) / 2 ? new DenseImmutableTable(immutableListCopyOf, immutableSetBuild, immutableSetBuild2) : new SparseImmutableTable(immutableListCopyOf, immutableSetBuild, immutableSetBuild2);
    }
}
