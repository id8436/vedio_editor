package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import com.behance.sdk.ui.adapters.helpers.BehanceSDKAdapterTouchHelper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BehanceSDKProjectEditorSettingSelectorAbstractAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements TextWatcher, BehanceSDKAdapterTouchHelper {
    protected static final int VIEW_TYPE_ADD = 1;
    protected static final int VIEW_TYPE_SELECTABLE = 2;
    protected static final int VIEW_TYPE_SELECTED = 0;
    protected final int ADD_RES_ID;
    private Callbacks callbacks;
    protected Context context;
    protected String inputString;
    protected List selectableItems = new ArrayList();
    protected List selectedItems;

    public interface Callbacks {
        void onSearchTextChanged(String str);

        void onSelectedItemsChanged(List list);
    }

    BehanceSDKProjectEditorSettingSelectorAbstractAdapter(Context context, List<?> list, Callbacks callbacks, int i) {
        this.context = context;
        this.selectedItems = list;
        this.callbacks = callbacks;
        this.ADD_RES_ID = i;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        switch (getItemViewType(i)) {
            case 0:
                bindSelectedItem(viewHolder, i);
                break;
            case 1:
                bindAddItem(viewHolder, i);
                break;
            case 2:
                bindSelectableItem(viewHolder, i);
                break;
        }
    }

    protected void bindSelectedItem(RecyclerView.ViewHolder viewHolder, int i) {
        viewHolder.itemView.setTag(0);
        viewHolder.itemView.setOnClickListener(null);
    }

    protected void bindAddItem(RecyclerView.ViewHolder viewHolder, int i) {
        viewHolder.itemView.setTag(1);
    }

    protected void bindSelectableItem(final RecyclerView.ViewHolder viewHolder, int i) {
        viewHolder.itemView.setTag(2);
        viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorSettingSelectorAbstractAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.inputString = "";
                BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.selectedItems.add(BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.selectableItems.get((viewHolder.getAdapterPosition() - BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.selectedItems.size()) - 1));
                BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.callbacks.onSelectedItemsChanged(BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.selectedItems);
                final int size = BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.selectableItems.size();
                BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.selectableItems.clear();
                new Handler().post(new Runnable() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorSettingSelectorAbstractAdapter.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.notifyItemRangeRemoved(BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.getItemCount(), size - 1);
                        BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.notifyItemRangeChanged(BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.getItemCount() - 2, 2);
                    }
                });
            }
        });
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.selectedItems.size() + 1 + this.selectableItems.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (i < this.selectedItems.size()) {
            return 0;
        }
        if (i == this.selectedItems.size()) {
            return 1;
        }
        return 2;
    }

    @Override // com.behance.sdk.ui.adapters.helpers.BehanceSDKAdapterTouchHelper
    public void onItemMoved(int i, int i2) {
    }

    @Override // com.behance.sdk.ui.adapters.helpers.BehanceSDKAdapterTouchHelper
    public void onItemRemoved(int i) {
        this.selectedItems.remove(i);
        notifyItemRemoved(i);
        this.callbacks.onSelectedItemsChanged(this.selectedItems);
    }

    public void updateSelectableItems(@Nullable List list) {
        if (this.selectableItems == null) {
            this.selectableItems = new ArrayList();
        }
        if (this.selectableItems.size() > 0) {
            final int size = this.selectableItems.size();
            this.selectableItems.clear();
            if (list != null) {
                this.selectableItems.addAll(list);
            }
            new Handler().post(new Runnable() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorSettingSelectorAbstractAdapter.2
                @Override // java.lang.Runnable
                public void run() {
                    int size2 = BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.selectableItems.size();
                    BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.notifyItemRangeChanged(BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.selectedItems.size() + 1, Math.min(size, size2));
                    if (size2 > size) {
                        BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.notifyItemRangeInserted(BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.selectedItems.size() + 1 + size, size2 - size);
                    } else if (size > size2) {
                        BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.notifyItemRangeRemoved(BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.selectedItems.size() + 1 + size2, size - size2);
                    }
                }
            });
            return;
        }
        if (list != null) {
            this.selectableItems.addAll(list);
        }
        new Handler().post(new Runnable() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorSettingSelectorAbstractAdapter.3
            @Override // java.lang.Runnable
            public void run() {
                BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.notifyItemRangeInserted(BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.selectedItems.size() + 1, BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.selectableItems.size());
            }
        });
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        if (this.inputString == null || !this.inputString.equals(editable.toString())) {
            this.inputString = editable.toString();
            new Handler().post(new Runnable() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorSettingSelectorAbstractAdapter.4
                @Override // java.lang.Runnable
                public void run() {
                    BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.notifyItemRangeRemoved(BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.selectedItems.size() + 1, BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.selectableItems.size());
                    BehanceSDKProjectEditorSettingSelectorAbstractAdapter.this.selectableItems.clear();
                }
            });
            this.callbacks.onSearchTextChanged(this.inputString);
        }
    }
}
