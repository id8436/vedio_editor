package com.e.a.a.a.d;

import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.StaggeredGridLayoutManager;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: CustomRecyclerViewUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {
    public static RecyclerView.ViewHolder a(@NonNull RecyclerView recyclerView, float f2, float f3) {
        View viewA = a((ViewGroup) recyclerView, f2, f3);
        if (viewA != null) {
            return recyclerView.getChildViewHolder(viewA);
        }
        return null;
    }

    public static int a(@NonNull RecyclerView recyclerView) {
        return a(recyclerView.getLayoutManager());
    }

    public static int a(int i) {
        switch (i) {
            case -1:
                return -1;
            case 0:
            case 2:
            case 4:
                return 0;
            case 1:
            case 3:
            case 5:
                return 1;
            default:
                throw new IllegalArgumentException("Unknown layout type (= " + i + ")");
        }
    }

    public static int a(@Nullable RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof GridLayoutManager) {
            if (((GridLayoutManager) layoutManager).getOrientation() == 0) {
                return 2;
            }
            return 3;
        }
        if (layoutManager instanceof LinearLayoutManager) {
            if (((LinearLayoutManager) layoutManager).getOrientation() == 0) {
                return 0;
            }
            return 1;
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            if (((StaggeredGridLayoutManager) layoutManager).getOrientation() == 0) {
                return 4;
            }
            return 5;
        }
        return -1;
    }

    private static View a(@NonNull ViewGroup viewGroup, float f2, float f3) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (f2 >= childAt.getLeft() && f2 <= childAt.getRight() && f3 >= childAt.getTop() && f3 <= childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public static Rect a(View view, Rect rect) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            rect.left = marginLayoutParams.leftMargin;
            rect.right = marginLayoutParams.rightMargin;
            rect.top = marginLayoutParams.topMargin;
            rect.bottom = marginLayoutParams.bottomMargin;
        } else {
            rect.bottom = 0;
            rect.top = 0;
            rect.right = 0;
            rect.left = 0;
        }
        return rect;
    }

    public static Rect a(@NonNull RecyclerView.LayoutManager layoutManager, View view, Rect rect) {
        rect.left = layoutManager.getLeftDecorationWidth(view);
        rect.right = layoutManager.getRightDecorationWidth(view);
        rect.top = layoutManager.getTopDecorationHeight(view);
        rect.bottom = layoutManager.getBottomDecorationHeight(view);
        return rect;
    }

    public static int a(@NonNull RecyclerView recyclerView, boolean z) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            if (z) {
                return a((LinearLayoutManager) layoutManager);
            }
            return ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition();
        }
        return -1;
    }

    public static int b(@NonNull RecyclerView recyclerView, boolean z) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            if (z) {
                return b((LinearLayoutManager) layoutManager);
            }
            return ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
        }
        return -1;
    }

    public static int b(@NonNull RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition();
        }
        return -1;
    }

    public static int c(@NonNull RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
        }
        return -1;
    }

    public static int a(@NonNull RecyclerView.ViewHolder viewHolder) {
        int layoutPosition = viewHolder.getLayoutPosition();
        if (layoutPosition == viewHolder.getAdapterPosition()) {
            return layoutPosition;
        }
        return -1;
    }

    public static int d(@NonNull RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).getSpanCount();
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            return ((StaggeredGridLayoutManager) layoutManager).getSpanCount();
        }
        return 1;
    }

    public static int e(@NonNull RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).getOrientation();
        }
        if (layoutManager instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) layoutManager).getOrientation();
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            return ((StaggeredGridLayoutManager) layoutManager).getOrientation();
        }
        return -1;
    }

    private static int a(LinearLayoutManager linearLayoutManager) {
        View viewA = a(linearLayoutManager, 0, linearLayoutManager.getChildCount(), false, true);
        if (viewA == null) {
            return -1;
        }
        return linearLayoutManager.getPosition(viewA);
    }

    private static int b(LinearLayoutManager linearLayoutManager) {
        View viewA = a(linearLayoutManager, linearLayoutManager.getChildCount() - 1, -1, false, true);
        if (viewA == null) {
            return -1;
        }
        return linearLayoutManager.getPosition(viewA);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.view.View a(android.support.v7.widget.LinearLayoutManager r7, int r8, int r9, boolean r10, boolean r11) {
        /*
            r0 = 1
            int r1 = r7.getOrientation()
            if (r1 != r0) goto L30
            r6 = r0
        L8:
            if (r6 == 0) goto L33
            int r1 = r7.getHeight()
            r5 = r1
        Lf:
            if (r9 <= r8) goto L39
        L11:
            r2 = 0
        L12:
            if (r8 == r9) goto L4d
            android.view.View r1 = r7.getChildAt(r8)
            if (r6 == 0) goto L3b
            int r3 = r1.getTop()
            r4 = r3
        L1f:
            if (r6 == 0) goto L41
            int r3 = r1.getBottom()
        L25:
            if (r4 >= r5) goto L4f
            if (r3 <= 0) goto L4f
            if (r10 == 0) goto L2f
            if (r4 < 0) goto L46
            if (r3 > r5) goto L46
        L2f:
            return r1
        L30:
            r1 = 0
            r6 = r1
            goto L8
        L33:
            int r1 = r7.getWidth()
            r5 = r1
            goto Lf
        L39:
            r0 = -1
            goto L11
        L3b:
            int r3 = r1.getLeft()
            r4 = r3
            goto L1f
        L41:
            int r3 = r1.getRight()
            goto L25
        L46:
            if (r11 == 0) goto L4f
            if (r2 != 0) goto L4f
        L4a:
            int r8 = r8 + r0
            r2 = r1
            goto L12
        L4d:
            r1 = r2
            goto L2f
        L4f:
            r1 = r2
            goto L4a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.e.a.a.a.d.d.a(android.support.v7.widget.LinearLayoutManager, int, int, boolean, boolean):android.view.View");
    }
}
