package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Table;
import java.lang.reflect.Array;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
@Immutable
final class DenseImmutableTable<R, C, V> extends RegularImmutableTable<R, C, V> {
    private final int[] columnCounts;
    private final ImmutableMap<C, Integer> columnKeyToIndex;
    private final ImmutableMap<C, Map<R, V>> columnMap;
    private final int[] iterationOrderColumn;
    private final int[] iterationOrderRow;
    private final int[] rowCounts;
    private final ImmutableMap<R, Integer> rowKeyToIndex;
    private final ImmutableMap<R, Map<C, V>> rowMap;
    private final V[][] values;

    private static <E> ImmutableMap<E, Integer> makeIndex(ImmutableSet<E> immutableSet) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        int i = 0;
        Iterator it = immutableSet.iterator();
        while (it.hasNext()) {
            builder.put(it.next(), Integer.valueOf(i));
            i++;
        }
        return builder.build();
    }

    DenseImmutableTable(ImmutableList<Table.Cell<R, C, V>> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        this.values = (V[][]) ((Object[][]) Array.newInstance((Class<?>) Object.class, immutableSet.size(), immutableSet2.size()));
        this.rowKeyToIndex = makeIndex(immutableSet);
        this.columnKeyToIndex = makeIndex(immutableSet2);
        this.rowCounts = new int[this.rowKeyToIndex.size()];
        this.columnCounts = new int[this.columnKeyToIndex.size()];
        int[] iArr = new int[immutableList.size()];
        int[] iArr2 = new int[immutableList.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < immutableList.size()) {
                Table.Cell<R, C, V> cell = immutableList.get(i2);
                R rowKey = cell.getRowKey();
                C columnKey = cell.getColumnKey();
                int iIntValue = this.rowKeyToIndex.get(rowKey).intValue();
                int iIntValue2 = this.columnKeyToIndex.get(columnKey).intValue();
                Preconditions.checkArgument(this.values[iIntValue][iIntValue2] == null, "duplicate key: (%s, %s)", rowKey, columnKey);
                this.values[iIntValue][iIntValue2] = cell.getValue();
                int[] iArr3 = this.rowCounts;
                iArr3[iIntValue] = iArr3[iIntValue] + 1;
                int[] iArr4 = this.columnCounts;
                iArr4[iIntValue2] = iArr4[iIntValue2] + 1;
                iArr[i2] = iIntValue;
                iArr2[i2] = iIntValue2;
                i = i2 + 1;
            } else {
                this.iterationOrderRow = iArr;
                this.iterationOrderColumn = iArr2;
                this.rowMap = new RowMap();
                this.columnMap = new ColumnMap();
                return;
            }
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    abstract class ImmutableArrayMap<K, V> extends ImmutableMap<K, V> {
        private final int size;

        @Nullable
        abstract V getValue(int i);

        abstract ImmutableMap<K, Integer> keyToIndex();

        ImmutableArrayMap(int i) {
            this.size = i;
        }

        private boolean isFull() {
            return this.size == keyToIndex().size();
        }

        K getKey(int i) {
            return keyToIndex().keySet().asList().get(i);
        }

        @Override // com.google.common.collect.ImmutableMap
        ImmutableSet<K> createKeySet() {
            return isFull() ? keyToIndex().keySet() : super.createKeySet();
        }

        @Override // java.util.Map
        public int size() {
            return this.size;
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public V get(@Nullable Object obj) {
            Integer num = keyToIndex().get(obj);
            if (num == null) {
                return null;
            }
            return getValue(num.intValue());
        }

        @Override // com.google.common.collect.ImmutableMap
        ImmutableSet<Map.Entry<K, V>> createEntrySet() {
            return new ImmutableMapEntrySet<K, V>() { // from class: com.google.common.collect.DenseImmutableTable.ImmutableArrayMap.1
                @Override // com.google.common.collect.ImmutableMapEntrySet
                ImmutableMap<K, V> map() {
                    return ImmutableArrayMap.this;
                }

                @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                public UnmodifiableIterator<Map.Entry<K, V>> iterator() {
                    return new AbstractIterator<Map.Entry<K, V>>() { // from class: com.google.common.collect.DenseImmutableTable.ImmutableArrayMap.1.1
                        private int index = -1;
                        private final int maxIndex;

                        {
                            this.maxIndex = ImmutableArrayMap.this.keyToIndex().size();
                        }

                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // com.google.common.collect.AbstractIterator
                        public Map.Entry<K, V> computeNext() {
                            this.index++;
                            while (this.index < this.maxIndex) {
                                Object value = ImmutableArrayMap.this.getValue(this.index);
                                if (value == null) {
                                    this.index++;
                                } else {
                                    return Maps.immutableEntry(ImmutableArrayMap.this.getKey(this.index), value);
                                }
                            }
                            return endOfData();
                        }
                    };
                }
            };
        }
    }

    final class Row extends ImmutableArrayMap<C, V> {
        private final int rowIndex;

        Row(int i) {
            super(DenseImmutableTable.this.rowCounts[i]);
            this.rowIndex = i;
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        ImmutableMap<C, Integer> keyToIndex() {
            return DenseImmutableTable.this.columnKeyToIndex;
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        V getValue(int i) {
            return (V) DenseImmutableTable.this.values[this.rowIndex][i];
        }

        @Override // com.google.common.collect.ImmutableMap
        boolean isPartialView() {
            return true;
        }
    }

    final class Column extends ImmutableArrayMap<R, V> {
        private final int columnIndex;

        Column(int i) {
            super(DenseImmutableTable.this.columnCounts[i]);
            this.columnIndex = i;
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        ImmutableMap<R, Integer> keyToIndex() {
            return DenseImmutableTable.this.rowKeyToIndex;
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        V getValue(int i) {
            return (V) DenseImmutableTable.this.values[i][this.columnIndex];
        }

        @Override // com.google.common.collect.ImmutableMap
        boolean isPartialView() {
            return true;
        }
    }

    final class RowMap extends ImmutableArrayMap<R, Map<C, V>> {
        private RowMap() {
            super(DenseImmutableTable.this.rowCounts.length);
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        ImmutableMap<R, Integer> keyToIndex() {
            return DenseImmutableTable.this.rowKeyToIndex;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        public Map<C, V> getValue(int i) {
            return new Row(i);
        }

        @Override // com.google.common.collect.ImmutableMap
        boolean isPartialView() {
            return false;
        }
    }

    final class ColumnMap extends ImmutableArrayMap<C, Map<R, V>> {
        private ColumnMap() {
            super(DenseImmutableTable.this.columnCounts.length);
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        ImmutableMap<C, Integer> keyToIndex() {
            return DenseImmutableTable.this.columnKeyToIndex;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        public Map<R, V> getValue(int i) {
            return new Column(i);
        }

        @Override // com.google.common.collect.ImmutableMap
        boolean isPartialView() {
            return false;
        }
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return this.columnMap;
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    public ImmutableMap<R, Map<C, V>> rowMap() {
        return this.rowMap;
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.AbstractTable, com.google.common.collect.Table
    public V get(@Nullable Object obj, @Nullable Object obj2) {
        Integer num = this.rowKeyToIndex.get(obj);
        Integer num2 = this.columnKeyToIndex.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return this.values[num.intValue()][num2.intValue()];
    }

    @Override // com.google.common.collect.Table
    public int size() {
        return this.iterationOrderRow.length;
    }

    @Override // com.google.common.collect.RegularImmutableTable
    Table.Cell<R, C, V> getCell(int i) {
        int i2 = this.iterationOrderRow[i];
        int i3 = this.iterationOrderColumn[i];
        return cellOf(rowKeySet().asList().get(i2), columnKeySet().asList().get(i3), this.values[i2][i3]);
    }

    @Override // com.google.common.collect.RegularImmutableTable
    V getValue(int i) {
        return this.values[this.iterationOrderRow[i]][this.iterationOrderColumn[i]];
    }
}
