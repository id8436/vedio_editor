package com.behance.sdk.mobeta.android.dslv;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.widget.CursorAdapter;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import com.behance.sdk.mobeta.android.dslv.DragSortListView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DragSortCursorAdapter extends CursorAdapter implements DragSortListView.DragSortListener {
    public static final int REMOVED = -1;
    private SparseIntArray mListMapping;
    private ArrayList<Integer> mRemovedCursorPositions;

    public DragSortCursorAdapter(Context context, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.mListMapping = new SparseIntArray();
        this.mRemovedCursorPositions = new ArrayList<>();
    }

    public DragSortCursorAdapter(Context context, Cursor cursor, int i) {
        super(context, cursor, i);
        this.mListMapping = new SparseIntArray();
        this.mRemovedCursorPositions = new ArrayList<>();
    }

    @Override // android.support.v4.widget.CursorAdapter
    public Cursor swapCursor(Cursor cursor) {
        Cursor cursorSwapCursor = super.swapCursor(cursor);
        resetMappings();
        return cursorSwapCursor;
    }

    @Override // android.support.v4.widget.CursorAdapter, android.support.v4.widget.CursorFilter.CursorFilterClient
    public void changeCursor(Cursor cursor) {
        super.changeCursor(cursor);
        resetMappings();
    }

    public void reset() {
        resetMappings();
        notifyDataSetChanged();
    }

    private void resetMappings() {
        this.mListMapping.clear();
        this.mRemovedCursorPositions.clear();
    }

    @Override // android.support.v4.widget.CursorAdapter, android.widget.Adapter
    public Object getItem(int i) {
        return super.getItem(this.mListMapping.get(i, i));
    }

    @Override // android.support.v4.widget.CursorAdapter, android.widget.Adapter
    public long getItemId(int i) {
        return super.getItemId(this.mListMapping.get(i, i));
    }

    @Override // android.support.v4.widget.CursorAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        return super.getDropDownView(this.mListMapping.get(i, i), view, viewGroup);
    }

    @Override // android.support.v4.widget.CursorAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return super.getView(this.mListMapping.get(i, i), view, viewGroup);
    }

    @Override // com.behance.sdk.mobeta.android.dslv.DragSortListView.DropListener
    public void drop(int i, int i2) {
        if (i != i2) {
            int i3 = this.mListMapping.get(i, i);
            if (i > i2) {
                while (i > i2) {
                    this.mListMapping.put(i, this.mListMapping.get(i - 1, i - 1));
                    i--;
                }
            } else {
                while (i < i2) {
                    this.mListMapping.put(i, this.mListMapping.get(i + 1, i + 1));
                    i++;
                }
            }
            this.mListMapping.put(i2, i3);
            cleanMapping();
            notifyDataSetChanged();
        }
    }

    @Override // com.behance.sdk.mobeta.android.dslv.DragSortListView.RemoveListener
    public void remove(int i) {
        int i2 = this.mListMapping.get(i, i);
        if (!this.mRemovedCursorPositions.contains(Integer.valueOf(i2))) {
            this.mRemovedCursorPositions.add(Integer.valueOf(i2));
        }
        int count = getCount();
        while (i < count) {
            this.mListMapping.put(i, this.mListMapping.get(i + 1, i + 1));
            i++;
        }
        this.mListMapping.delete(count);
        cleanMapping();
        notifyDataSetChanged();
    }

    @Override // com.behance.sdk.mobeta.android.dslv.DragSortListView.DragListener
    public void drag(int i, int i2) {
    }

    private void cleanMapping() {
        ArrayList arrayList = new ArrayList();
        int size = this.mListMapping.size();
        for (int i = 0; i < size; i++) {
            if (this.mListMapping.keyAt(i) == this.mListMapping.valueAt(i)) {
                arrayList.add(Integer.valueOf(this.mListMapping.keyAt(i)));
            }
        }
        int size2 = arrayList.size();
        for (int i2 = 0; i2 < size2; i2++) {
            this.mListMapping.delete(((Integer) arrayList.get(i2)).intValue());
        }
    }

    @Override // android.support.v4.widget.CursorAdapter, android.widget.Adapter
    public int getCount() {
        return super.getCount() - this.mRemovedCursorPositions.size();
    }

    public int getCursorPosition(int i) {
        return this.mListMapping.get(i, i);
    }

    public ArrayList<Integer> getCursorPositions() {
        ArrayList<Integer> arrayList = new ArrayList<>();
        for (int i = 0; i < getCount(); i++) {
            arrayList.add(Integer.valueOf(this.mListMapping.get(i, i)));
        }
        return arrayList;
    }

    public int getListPosition(int i) {
        if (this.mRemovedCursorPositions.contains(Integer.valueOf(i))) {
            return -1;
        }
        int iIndexOfValue = this.mListMapping.indexOfValue(i);
        return iIndexOfValue >= 0 ? this.mListMapping.keyAt(iIndexOfValue) : i;
    }
}
