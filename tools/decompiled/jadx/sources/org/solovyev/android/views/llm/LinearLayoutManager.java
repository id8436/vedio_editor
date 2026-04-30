package org.solovyev.android.views.llm;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes3.dex */
public class LinearLayoutManager extends android.support.v7.widget.LinearLayoutManager {
    private static final int CHILD_HEIGHT = 1;
    private static final int CHILD_WIDTH = 0;
    private static final int DEFAULT_CHILD_SIZE = 100;
    private static boolean canMakeInsetsDirty = true;
    private static Field insetsDirtyField = null;
    private final int[] childDimensions;
    private int childSize;
    private boolean hasChildSize;
    private int overScrollMode;
    private final Rect tmpRect;
    private final RecyclerView view;

    public LinearLayoutManager(Context context) {
        super(context);
        this.childDimensions = new int[2];
        this.childSize = 100;
        this.overScrollMode = 0;
        this.tmpRect = new Rect();
        this.view = null;
    }

    public LinearLayoutManager(Context context, int i, boolean z) {
        super(context, i, z);
        this.childDimensions = new int[2];
        this.childSize = 100;
        this.overScrollMode = 0;
        this.tmpRect = new Rect();
        this.view = null;
    }

    public LinearLayoutManager(RecyclerView recyclerView) {
        super(recyclerView.getContext());
        this.childDimensions = new int[2];
        this.childSize = 100;
        this.overScrollMode = 0;
        this.tmpRect = new Rect();
        this.view = recyclerView;
        this.overScrollMode = ViewCompat.getOverScrollMode(recyclerView);
    }

    public LinearLayoutManager(RecyclerView recyclerView, int i, boolean z) {
        super(recyclerView.getContext(), i, z);
        this.childDimensions = new int[2];
        this.childSize = 100;
        this.overScrollMode = 0;
        this.tmpRect = new Rect();
        this.view = recyclerView;
        this.overScrollMode = ViewCompat.getOverScrollMode(recyclerView);
    }

    public void setOverScrollMode(int i) {
        if (i < 0 || i > 2) {
            throw new IllegalArgumentException("Unknown overscroll mode: " + i);
        }
        if (this.view == null) {
            throw new IllegalStateException("view == null");
        }
        this.overScrollMode = i;
        ViewCompat.setOverScrollMode(this.view, i);
    }

    public static int makeUnspecifiedSpec() {
        return View.MeasureSpec.makeMeasureSpec(0, 0);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onMeasure(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2) {
        int i3;
        int i4;
        int iMin;
        int paddingTop;
        int i5;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        boolean z = mode != 0;
        boolean z2 = mode2 != 0;
        boolean z3 = mode == 1073741824;
        boolean z4 = mode2 == 1073741824;
        int iMakeUnspecifiedSpec = makeUnspecifiedSpec();
        if (z3 && z4) {
            super.onMeasure(recycler, state, i, i2);
            return;
        }
        boolean z5 = getOrientation() == 1;
        initChildDimensions(size, size2, z5);
        int i6 = 0;
        int i7 = 0;
        recycler.clear();
        int itemCount = state.getItemCount();
        int itemCount2 = getItemCount();
        int i8 = 0;
        while (true) {
            if (i8 >= itemCount2) {
                i3 = i7;
                i4 = i6;
                break;
            }
            if (z5) {
                if (!this.hasChildSize) {
                    if (i8 < itemCount) {
                        measureChild(recycler, i8, size, iMakeUnspecifiedSpec, this.childDimensions);
                    } else {
                        logMeasureWarning(i8);
                    }
                }
                i5 = this.childDimensions[1] + i7;
                i4 = i8 == 0 ? this.childDimensions[0] : i6;
                if (z2 && i5 >= size2) {
                    i3 = i5;
                    break;
                } else {
                    i8++;
                    i7 = i5;
                    i6 = i4;
                }
            } else {
                if (!this.hasChildSize) {
                    if (i8 < itemCount) {
                        measureChild(recycler, i8, iMakeUnspecifiedSpec, size2, this.childDimensions);
                    } else {
                        logMeasureWarning(i8);
                    }
                }
                i4 = i6 + this.childDimensions[0];
                i5 = i8 == 0 ? this.childDimensions[1] : i7;
                if (z && i4 >= size) {
                    i3 = i5;
                    break;
                } else {
                    i8++;
                    i7 = i5;
                    i6 = i4;
                }
            }
        }
        if (z3) {
            iMin = size;
        } else {
            int paddingLeft = getPaddingLeft() + getPaddingRight() + i4;
            iMin = z ? Math.min(paddingLeft, size) : paddingLeft;
        }
        if (z4) {
            paddingTop = size2;
        } else {
            paddingTop = getPaddingTop() + getPaddingBottom() + i3;
            if (z2) {
                paddingTop = Math.min(paddingTop, size2);
            }
        }
        setMeasuredDimension(iMin, paddingTop);
        if (this.view != null && this.overScrollMode == 1) {
            ViewCompat.setOverScrollMode(this.view, (z5 && (!z2 || paddingTop < size2)) || (!z5 && (!z || iMin < size)) ? 2 : 0);
        }
    }

    private void logMeasureWarning(int i) {
    }

    private void initChildDimensions(int i, int i2, boolean z) {
        if (this.childDimensions[0] == 0 && this.childDimensions[1] == 0) {
            if (z) {
                this.childDimensions[0] = i;
                this.childDimensions[1] = this.childSize;
            } else {
                this.childDimensions[0] = this.childSize;
                this.childDimensions[1] = i2;
            }
        }
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    public void setOrientation(int i) {
        if (this.childDimensions != null && getOrientation() != i) {
            this.childDimensions[0] = 0;
            this.childDimensions[1] = 0;
        }
        super.setOrientation(i);
    }

    public void clearChildSize() {
        this.hasChildSize = false;
        setChildSize(100);
    }

    public void setChildSize(int i) {
        this.hasChildSize = true;
        if (this.childSize != i) {
            this.childSize = i;
            requestLayout();
        }
    }

    private void measureChild(RecyclerView.Recycler recycler, int i, int i2, int i3, int[] iArr) {
        View viewForPosition = recycler.getViewForPosition(i);
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) viewForPosition.getLayoutParams();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int i4 = layoutParams.leftMargin + layoutParams.rightMargin;
        int i5 = layoutParams.topMargin + layoutParams.bottomMargin;
        makeInsetsDirty(layoutParams);
        calculateItemDecorationsForChild(viewForPosition, this.tmpRect);
        viewForPosition.measure(getChildMeasureSpec(i2, paddingLeft + i4 + getRightDecorationWidth(viewForPosition) + getLeftDecorationWidth(viewForPosition), layoutParams.width, canScrollHorizontally()), getChildMeasureSpec(i3, paddingTop + i5 + getTopDecorationHeight(viewForPosition) + getBottomDecorationHeight(viewForPosition), layoutParams.height, canScrollVertically()));
        iArr[0] = getDecoratedMeasuredWidth(viewForPosition) + layoutParams.leftMargin + layoutParams.rightMargin;
        iArr[1] = getDecoratedMeasuredHeight(viewForPosition) + layoutParams.bottomMargin + layoutParams.topMargin;
        makeInsetsDirty(layoutParams);
        recycler.recycleView(viewForPosition);
    }

    private static void makeInsetsDirty(RecyclerView.LayoutParams layoutParams) {
        if (canMakeInsetsDirty) {
            try {
                if (insetsDirtyField == null) {
                    insetsDirtyField = RecyclerView.LayoutParams.class.getDeclaredField("mInsetsDirty");
                    insetsDirtyField.setAccessible(true);
                }
                insetsDirtyField.set(layoutParams, true);
            } catch (IllegalAccessException e2) {
                onMakeInsertDirtyFailed();
            } catch (NoSuchFieldException e3) {
                onMakeInsertDirtyFailed();
            }
        }
    }

    private static void onMakeInsertDirtyFailed() {
        canMakeInsetsDirty = false;
    }
}
