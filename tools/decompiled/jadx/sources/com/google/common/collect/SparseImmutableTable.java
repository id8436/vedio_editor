package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Table;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
@Immutable
final class SparseImmutableTable<R, C, V> extends RegularImmutableTable<R, C, V> {
    private final ImmutableMap<C, Map<R, V>> columnMap;
    private final int[] iterationOrderColumn;
    private final int[] iterationOrderRow;
    private final ImmutableMap<R, Map<C, V>> rowMap;

    SparseImmutableTable(ImmutableList<Table.Cell<R, C, V>> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        HashMap mapNewHashMap = Maps.newHashMap();
        LinkedHashMap linkedHashMapNewLinkedHashMap = Maps.newLinkedHashMap();
        for (Object obj : immutableSet) {
            mapNewHashMap.put(obj, Integer.valueOf(linkedHashMapNewLinkedHashMap.size()));
            linkedHashMapNewLinkedHashMap.put(obj, new LinkedHashMap());
        }
        LinkedHashMap linkedHashMapNewLinkedHashMap2 = Maps.newLinkedHashMap();
        Iterator it = immutableSet2.iterator();
        while (it.hasNext()) {
            linkedHashMapNewLinkedHashMap2.put(it.next(), new LinkedHashMap());
        }
        int[] iArr = new int[immutableList.size()];
        int[] iArr2 = new int[immutableList.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < immutableList.size()) {
                Table.Cell<R, C, V> cell = immutableList.get(i2);
                R rowKey = cell.getRowKey();
                C columnKey = cell.getColumnKey();
                V value = cell.getValue();
                iArr[i2] = ((Integer) mapNewHashMap.get(rowKey)).intValue();
                Map map = (Map) linkedHashMapNewLinkedHashMap.get(rowKey);
                iArr2[i2] = map.size();
                Object objPut = map.put(columnKey, value);
                if (objPut != null) {
                    throw new IllegalArgumentException("Duplicate value for row=" + rowKey + ", column=" + columnKey + ": " + value + ", " + objPut);
                }
                ((Map) linkedHashMapNewLinkedHashMap2.get(columnKey)).put(rowKey, value);
                i = i2 + 1;
            } else {
                this.iterationOrderRow = iArr;
                this.iterationOrderColumn = iArr2;
                ImmutableMap.Builder builder = ImmutableMap.builder();
                for (Map.Entry entry : linkedHashMapNewLinkedHashMap.entrySet()) {
                    builder.put(entry.getKey(), ImmutableMap.copyOf((Map) entry.getValue()));
                }
                this.rowMap = builder.build();
                ImmutableMap.Builder builder2 = ImmutableMap.builder();
                for (Map.Entry entry2 : linkedHashMapNewLinkedHashMap2.entrySet()) {
                    builder2.put(entry2.getKey(), ImmutableMap.copyOf((Map) entry2.getValue()));
                }
                this.columnMap = builder2.build();
                return;
            }
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

    @Override // com.google.common.collect.Table
    public int size() {
        return this.iterationOrderRow.length;
    }

    @Override // com.google.common.collect.RegularImmutableTable
    Table.Cell<R, C, V> getCell(int i) {
        Map.Entry<R, Map<C, V>> entry = this.rowMap.entrySet().asList().get(this.iterationOrderRow[i]);
        ImmutableMap immutableMap = (ImmutableMap) entry.getValue();
        Map.Entry entry2 = (Map.Entry) immutableMap.entrySet().asList().get(this.iterationOrderColumn[i]);
        return cellOf(entry.getKey(), entry2.getKey(), entry2.getValue());
    }

    @Override // com.google.common.collect.RegularImmutableTable
    V getValue(int i) {
        ImmutableMap immutableMap = (ImmutableMap) this.rowMap.values().asList().get(this.iterationOrderRow[i]);
        return immutableMap.values().asList().get(this.iterationOrderColumn[i]);
    }
}
