package com.adobe.creativesdk.foundation.internal.twowayview.widget;

import com.adobe.creativesdk.foundation.internal.twowayview.widget.BaseLayoutManager;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class ItemEntries {
    private static final int MIN_SIZE = 10;
    private int mAdapterSize;
    private BaseLayoutManager.ItemEntry[] mItemEntries;
    private boolean mRestoringItem;

    ItemEntries() {
    }

    private int sizeForPosition(int i) {
        int length = this.mItemEntries.length;
        while (length <= i) {
            length *= 2;
        }
        if (!this.mRestoringItem && length > this.mAdapterSize) {
            return this.mAdapterSize;
        }
        return length;
    }

    private void ensureSize(int i) {
        if (this.mItemEntries == null) {
            this.mItemEntries = new BaseLayoutManager.ItemEntry[Math.max(i, 10) + 1];
            Arrays.fill(this.mItemEntries, (Object) null);
        } else if (i >= this.mItemEntries.length) {
            BaseLayoutManager.ItemEntry[] itemEntryArr = this.mItemEntries;
            this.mItemEntries = new BaseLayoutManager.ItemEntry[sizeForPosition(i)];
            System.arraycopy(itemEntryArr, 0, this.mItemEntries, 0, itemEntryArr.length);
            Arrays.fill(this.mItemEntries, itemEntryArr.length, this.mItemEntries.length, (Object) null);
        }
    }

    public BaseLayoutManager.ItemEntry getItemEntry(int i) {
        if (this.mItemEntries == null || i >= this.mItemEntries.length) {
            return null;
        }
        return this.mItemEntries[i];
    }

    public void putItemEntry(int i, BaseLayoutManager.ItemEntry itemEntry) {
        ensureSize(i);
        this.mItemEntries[i] = itemEntry;
    }

    public void restoreItemEntry(int i, BaseLayoutManager.ItemEntry itemEntry) {
        this.mRestoringItem = true;
        putItemEntry(i, itemEntry);
        this.mRestoringItem = false;
    }

    public int size() {
        if (this.mItemEntries != null) {
            return this.mItemEntries.length;
        }
        return 0;
    }

    public void setAdapterSize(int i) {
        this.mAdapterSize = i;
    }

    public void invalidateItemLanesAfter(int i) {
        if (this.mItemEntries != null && i < this.mItemEntries.length) {
            while (i < this.mItemEntries.length) {
                BaseLayoutManager.ItemEntry itemEntry = this.mItemEntries[i];
                if (itemEntry != null) {
                    itemEntry.invalidateLane();
                }
                i++;
            }
        }
    }

    public void clear() {
        if (this.mItemEntries != null) {
            Arrays.fill(this.mItemEntries, (Object) null);
        }
    }

    void offsetForRemoval(int i, int i2) {
        if (this.mItemEntries != null && i < this.mItemEntries.length) {
            ensureSize(i + i2);
            System.arraycopy(this.mItemEntries, i + i2, this.mItemEntries, i, (this.mItemEntries.length - i) - i2);
            Arrays.fill(this.mItemEntries, this.mItemEntries.length - i2, this.mItemEntries.length, (Object) null);
        }
    }

    void offsetForAddition(int i, int i2) {
        if (this.mItemEntries != null && i < this.mItemEntries.length) {
            ensureSize(i + i2);
            System.arraycopy(this.mItemEntries, i, this.mItemEntries, i + i2, (this.mItemEntries.length - i) - i2);
            Arrays.fill(this.mItemEntries, i, i + i2, (Object) null);
        }
    }
}
