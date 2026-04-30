package com.adobe.creativesdk.foundation.internal.storage.controllers.designlibrary;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class DesignLibrarySpacingItemDecoration extends RecyclerView.ItemDecoration {
    int horizontalSpacing;
    private boolean isFixedColumn = false;
    private int numFixedColumnsCount = 0;
    int verticalSpacing;

    public interface MultiColumnDelegate {
        ItemPosDetails getItemDetailsAsPos(int i);
    }

    public DesignLibrarySpacingItemDecoration(int i, int i2) {
        i = (i & 1) == 0 ? i : i + 1;
        i2 = (i2 & 1) == 0 ? i2 : i2 + 1;
        this.verticalSpacing = i;
        this.horizontalSpacing = i2;
    }

    public void setFixedColumn(int i) {
        this.isFixedColumn = true;
        this.numFixedColumnsCount = i;
    }

    public void setMultiColumnDelegate() {
        this.isFixedColumn = false;
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        boolean z = false;
        int childPosition = recyclerView.getChildPosition(view);
        int i = this.verticalSpacing / 2;
        rect.left = i;
        rect.right = i;
        int i2 = this.horizontalSpacing / 2;
        rect.bottom = i2;
        rect.top = i2;
        if (this.isFixedColumn && childPosition < this.numFixedColumnsCount) {
            z = true;
        }
        if (childPosition == 0 || z) {
            rect.top = this.verticalSpacing;
        }
    }

    public class ItemPosDetails {
        private int itemPosInRow;
        private int numColumnsInRow;

        public int getNumColumnsInRow() {
            return this.numColumnsInRow;
        }

        public void setNumColumnsInRow(int i) {
            this.numColumnsInRow = i;
        }

        public int getItemPosInRow() {
            return this.itemPosInRow;
        }

        public void setItemPosInRow(int i) {
            this.itemPosInRow = i;
        }
    }
}
