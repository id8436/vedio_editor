package com.adobe.creativesdk.foundation.internal.twowayview;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.util.LongSparseArray;
import android.support.v7.widget.RecyclerView;
import android.util.SparseBooleanArray;
import android.view.View;
import android.widget.Checkable;
import com.adobe.creativesdk.foundation.assetux.R;

/* JADX INFO: loaded from: classes2.dex */
public class ItemSelectionSupport {
    private static final int CHECK_POSITION_SEARCH_DISTANCE = 20;
    public static final int INVALID_POSITION = -1;
    private static final String STATE_KEY_CHECKED_COUNT = "checkedCount";
    private static final String STATE_KEY_CHECKED_ID_STATES = "checkedIdStates";
    private static final String STATE_KEY_CHECKED_STATES = "checkedStates";
    private static final String STATE_KEY_CHOICE_MODE = "choiceMode";
    private int mCheckedCount;
    private CheckedIdStates mCheckedIdStates;
    private CheckedStates mCheckedStates;
    private ChoiceMode mChoiceMode = ChoiceMode.NONE;
    private final RecyclerView mRecyclerView;
    private final TouchListener mTouchListener;

    public enum ChoiceMode {
        NONE,
        SINGLE,
        MULTIPLE
    }

    static /* synthetic */ int access$608(ItemSelectionSupport itemSelectionSupport) {
        int i = itemSelectionSupport.mCheckedCount;
        itemSelectionSupport.mCheckedCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$610(ItemSelectionSupport itemSelectionSupport) {
        int i = itemSelectionSupport.mCheckedCount;
        itemSelectionSupport.mCheckedCount = i - 1;
        return i;
    }

    private ItemSelectionSupport(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
        this.mTouchListener = new TouchListener(recyclerView);
        recyclerView.addOnItemTouchListener(this.mTouchListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateOnScreenCheckedViews() {
        int childCount = this.mRecyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.mRecyclerView.getChildAt(i);
            setViewChecked(childAt, this.mCheckedStates.get(this.mRecyclerView.getChildPosition(childAt)));
        }
    }

    public int getCheckedItemCount() {
        return this.mCheckedCount;
    }

    public boolean isItemChecked(int i) {
        if (this.mChoiceMode == ChoiceMode.NONE || this.mCheckedStates == null) {
            return false;
        }
        return this.mCheckedStates.get(i);
    }

    public int getCheckedItemPosition() {
        if (this.mChoiceMode == ChoiceMode.SINGLE && this.mCheckedStates != null && this.mCheckedStates.size() == 1) {
            return this.mCheckedStates.keyAt(0);
        }
        return -1;
    }

    public SparseBooleanArray getCheckedItemPositions() {
        if (this.mChoiceMode != ChoiceMode.NONE) {
            return this.mCheckedStates;
        }
        return null;
    }

    public long[] getCheckedItemIds() {
        if (this.mChoiceMode == ChoiceMode.NONE || this.mCheckedIdStates == null || this.mRecyclerView.getAdapter() == null) {
            return new long[0];
        }
        int size = this.mCheckedIdStates.size();
        long[] jArr = new long[size];
        for (int i = 0; i < size; i++) {
            jArr[i] = this.mCheckedIdStates.keyAt(i);
        }
        return jArr;
    }

    public void setItemChecked(int i, boolean z) {
        if (this.mChoiceMode != ChoiceMode.NONE) {
            RecyclerView.Adapter adapter = this.mRecyclerView.getAdapter();
            if (this.mChoiceMode == ChoiceMode.MULTIPLE) {
                boolean z2 = this.mCheckedStates.get(i);
                this.mCheckedStates.put(i, z);
                if (this.mCheckedIdStates != null && adapter.hasStableIds()) {
                    if (z) {
                        this.mCheckedIdStates.put(adapter.getItemId(i), Integer.valueOf(i));
                    } else {
                        this.mCheckedIdStates.delete(adapter.getItemId(i));
                    }
                }
                if (z2 != z) {
                    if (z) {
                        this.mCheckedCount++;
                    } else {
                        this.mCheckedCount--;
                    }
                }
            } else {
                boolean z3 = this.mCheckedIdStates != null && adapter.hasStableIds();
                if (z || isItemChecked(i)) {
                    this.mCheckedStates.clear();
                    if (z3) {
                        this.mCheckedIdStates.clear();
                    }
                }
                if (z) {
                    this.mCheckedStates.put(i, true);
                    if (z3) {
                        this.mCheckedIdStates.put(adapter.getItemId(i), Integer.valueOf(i));
                    }
                    this.mCheckedCount = 1;
                } else if (this.mCheckedStates.size() == 0 || !this.mCheckedStates.valueAt(0)) {
                    this.mCheckedCount = 0;
                }
            }
            updateOnScreenCheckedViews();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @TargetApi(11)
    public void setViewChecked(View view, boolean z) {
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(z);
        } else if (Build.VERSION.SDK_INT >= 11) {
            view.setActivated(z);
        }
    }

    public void clearChoices() {
        if (this.mCheckedStates != null) {
            this.mCheckedStates.clear();
        }
        if (this.mCheckedIdStates != null) {
            this.mCheckedIdStates.clear();
        }
        this.mCheckedCount = 0;
        updateOnScreenCheckedViews();
    }

    public ChoiceMode getChoiceMode() {
        return this.mChoiceMode;
    }

    public void setChoiceMode(ChoiceMode choiceMode) {
        if (this.mChoiceMode != choiceMode) {
            this.mChoiceMode = choiceMode;
            if (this.mChoiceMode != ChoiceMode.NONE) {
                if (this.mCheckedStates == null) {
                    this.mCheckedStates = new CheckedStates();
                }
                RecyclerView.Adapter adapter = this.mRecyclerView.getAdapter();
                if (this.mCheckedIdStates == null && adapter != null && adapter.hasStableIds()) {
                    this.mCheckedIdStates = new CheckedIdStates();
                }
            }
        }
    }

    public void onAdapterDataChanged() {
        boolean z;
        RecyclerView.Adapter adapter = this.mRecyclerView.getAdapter();
        if (this.mChoiceMode != ChoiceMode.NONE && adapter != null && adapter.hasStableIds()) {
            int itemCount = adapter.getItemCount();
            this.mCheckedStates.clear();
            int i = 0;
            while (i < this.mCheckedIdStates.size()) {
                long jKeyAt = this.mCheckedIdStates.keyAt(i);
                int iIntValue = this.mCheckedIdStates.valueAt(i).intValue();
                if (jKeyAt != adapter.getItemId(iIntValue)) {
                    int iMax = Math.max(0, iIntValue - 20);
                    int iMin = Math.min(iIntValue + 20, itemCount);
                    while (true) {
                        if (iMax >= iMin) {
                            z = false;
                            break;
                        } else if (jKeyAt != adapter.getItemId(iMax)) {
                            iMax++;
                        } else {
                            this.mCheckedStates.put(iMax, true);
                            this.mCheckedIdStates.setValueAt(i, Integer.valueOf(iMax));
                            z = true;
                            break;
                        }
                    }
                    if (!z) {
                        this.mCheckedIdStates.delete(jKeyAt);
                        this.mCheckedCount--;
                        i--;
                    }
                } else {
                    this.mCheckedStates.put(iIntValue, true);
                }
                i++;
            }
        }
    }

    public Bundle onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putInt(STATE_KEY_CHOICE_MODE, this.mChoiceMode.ordinal());
        bundle.putParcelable(STATE_KEY_CHECKED_STATES, this.mCheckedStates);
        bundle.putParcelable(STATE_KEY_CHECKED_ID_STATES, this.mCheckedIdStates);
        bundle.putInt(STATE_KEY_CHECKED_COUNT, this.mCheckedCount);
        return bundle;
    }

    public void onRestoreInstanceState(Bundle bundle) {
        this.mChoiceMode = ChoiceMode.values()[bundle.getInt(STATE_KEY_CHOICE_MODE)];
        this.mCheckedStates = (CheckedStates) bundle.getParcelable(STATE_KEY_CHECKED_STATES);
        this.mCheckedIdStates = (CheckedIdStates) bundle.getParcelable(STATE_KEY_CHECKED_ID_STATES);
        this.mCheckedCount = bundle.getInt(STATE_KEY_CHECKED_COUNT);
    }

    public static ItemSelectionSupport addTo(RecyclerView recyclerView) {
        ItemSelectionSupport itemSelectionSupportFrom = from(recyclerView);
        if (itemSelectionSupportFrom == null) {
            ItemSelectionSupport itemSelectionSupport = new ItemSelectionSupport(recyclerView);
            recyclerView.setTag(R.id.adobe_csdk_twowayview_item_selection_support, itemSelectionSupport);
            return itemSelectionSupport;
        }
        return itemSelectionSupportFrom;
    }

    public static void removeFrom(RecyclerView recyclerView) {
        ItemSelectionSupport itemSelectionSupportFrom = from(recyclerView);
        if (itemSelectionSupportFrom != null) {
            itemSelectionSupportFrom.clearChoices();
            recyclerView.removeOnItemTouchListener(itemSelectionSupportFrom.mTouchListener);
            recyclerView.setTag(R.id.adobe_csdk_twowayview_item_selection_support, null);
        }
    }

    public static ItemSelectionSupport from(RecyclerView recyclerView) {
        if (recyclerView == null) {
            return null;
        }
        return (ItemSelectionSupport) recyclerView.getTag(R.id.adobe_csdk_twowayview_item_selection_support);
    }

    class CheckedStates extends SparseBooleanArray implements Parcelable {
        public static final Parcelable.Creator<CheckedStates> CREATOR = new Parcelable.Creator<CheckedStates>() { // from class: com.adobe.creativesdk.foundation.internal.twowayview.ItemSelectionSupport.CheckedStates.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CheckedStates createFromParcel(Parcel parcel) {
                return new CheckedStates(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CheckedStates[] newArray(int i) {
                return new CheckedStates[i];
            }
        };
        private static final int FALSE = 0;
        private static final int TRUE = 1;

        public CheckedStates() {
        }

        private CheckedStates(Parcel parcel) {
            int i = parcel.readInt();
            if (i > 0) {
                for (int i2 = 0; i2 < i; i2++) {
                    put(parcel.readInt(), parcel.readInt() == 1);
                }
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            int size = size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                parcel.writeInt(keyAt(i2));
                parcel.writeInt(valueAt(i2) ? 1 : 0);
            }
        }
    }

    class CheckedIdStates extends LongSparseArray<Integer> implements Parcelable {
        public static final Parcelable.Creator<CheckedIdStates> CREATOR = new Parcelable.Creator<CheckedIdStates>() { // from class: com.adobe.creativesdk.foundation.internal.twowayview.ItemSelectionSupport.CheckedIdStates.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CheckedIdStates createFromParcel(Parcel parcel) {
                return new CheckedIdStates(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CheckedIdStates[] newArray(int i) {
                return new CheckedIdStates[i];
            }
        };

        public CheckedIdStates() {
        }

        private CheckedIdStates(Parcel parcel) {
            int i = parcel.readInt();
            if (i > 0) {
                for (int i2 = 0; i2 < i; i2++) {
                    put(parcel.readLong(), Integer.valueOf(parcel.readInt()));
                }
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            int size = size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                parcel.writeLong(keyAt(i2));
                parcel.writeInt(valueAt(i2).intValue());
            }
        }
    }

    class TouchListener extends ClickItemTouchListener {
        TouchListener(RecyclerView recyclerView) {
            super(recyclerView);
        }

        @Override // com.adobe.creativesdk.foundation.internal.twowayview.ClickItemTouchListener
        boolean performItemClick(RecyclerView recyclerView, View view, int i, long j) {
            boolean z = true;
            RecyclerView.Adapter adapter = ItemSelectionSupport.this.mRecyclerView.getAdapter();
            if (ItemSelectionSupport.this.mChoiceMode == ChoiceMode.MULTIPLE) {
                boolean z2 = !ItemSelectionSupport.this.mCheckedStates.get(i, false);
                ItemSelectionSupport.this.mCheckedStates.put(i, z2);
                if (ItemSelectionSupport.this.mCheckedIdStates != null && adapter.hasStableIds()) {
                    if (z2) {
                        ItemSelectionSupport.this.mCheckedIdStates.put(adapter.getItemId(i), Integer.valueOf(i));
                    } else {
                        ItemSelectionSupport.this.mCheckedIdStates.delete(adapter.getItemId(i));
                    }
                }
                if (z2) {
                    ItemSelectionSupport.access$608(ItemSelectionSupport.this);
                } else {
                    ItemSelectionSupport.access$610(ItemSelectionSupport.this);
                }
            } else if (ItemSelectionSupport.this.mChoiceMode == ChoiceMode.SINGLE) {
                if (!ItemSelectionSupport.this.mCheckedStates.get(i, false)) {
                    ItemSelectionSupport.this.mCheckedStates.clear();
                    ItemSelectionSupport.this.mCheckedStates.put(i, true);
                    if (ItemSelectionSupport.this.mCheckedIdStates != null && adapter.hasStableIds()) {
                        ItemSelectionSupport.this.mCheckedIdStates.clear();
                        ItemSelectionSupport.this.mCheckedIdStates.put(adapter.getItemId(i), Integer.valueOf(i));
                    }
                    ItemSelectionSupport.this.mCheckedCount = 1;
                } else if (ItemSelectionSupport.this.mCheckedStates.size() == 0 || !ItemSelectionSupport.this.mCheckedStates.valueAt(0)) {
                    ItemSelectionSupport.this.mCheckedCount = 0;
                }
            } else {
                z = false;
            }
            if (z) {
                ItemSelectionSupport.this.updateOnScreenCheckedViews();
            }
            return false;
        }

        @Override // com.adobe.creativesdk.foundation.internal.twowayview.ClickItemTouchListener
        boolean performItemLongClick(RecyclerView recyclerView, View view, int i, long j) {
            return true;
        }
    }
}
