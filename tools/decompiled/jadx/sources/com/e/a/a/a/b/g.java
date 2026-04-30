package com.e.a.a.a.b;

import android.support.v7.widget.ActivityChooserView;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.Log;
import android.view.ViewGroup;

/* JADX INFO: compiled from: DraggableItemWrapperAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
class g<VH extends RecyclerView.ViewHolder> extends com.e.a.a.a.d.b<VH> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private l f1588a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e f1589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RecyclerView.ViewHolder f1590c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private i f1591d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private j f1592e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1593f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1594g;

    public g(l lVar, RecyclerView.Adapter<VH> adapter) {
        super(adapter);
        this.f1593f = -1;
        this.f1594g = -1;
        this.f1589b = a(adapter);
        if (a(adapter) == null) {
            throw new IllegalArgumentException("adapter does not implement DraggableItemAdapter");
        }
        if (lVar == null) {
            throw new IllegalArgumentException("manager cannot be null");
        }
        this.f1588a = lVar;
    }

    @Override // com.e.a.a.a.d.b
    protected void a() {
        super.a();
        this.f1590c = null;
        this.f1589b = null;
        this.f1588a = null;
    }

    @Override // com.e.a.a.a.d.b, android.support.v7.widget.RecyclerView.Adapter
    public VH onCreateViewHolder(ViewGroup viewGroup, int i) {
        VH vh = (VH) super.onCreateViewHolder(viewGroup, i);
        if (vh instanceof f) {
            ((f) vh).setDragStateFlags(-1);
        }
        return vh;
    }

    @Override // com.e.a.a.a.d.b, android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(VH vh, int i) {
        if (c()) {
            long j = this.f1591d.f1602c;
            long itemId = vh.getItemId();
            int iA = a(i, this.f1593f, this.f1594g);
            if (itemId == j && vh != this.f1590c) {
                if (this.f1590c == null) {
                    Log.i("ARVDraggableWrapper", "a new view holder object for the currently dragging item is assigned");
                    this.f1590c = vh;
                    this.f1588a.a(vh);
                } else {
                    Log.e("ARVDraggableWrapper", "an another view holder object for the currently dragging item is assigned");
                }
            }
            int i2 = 1;
            if (itemId == j) {
                i2 = 3;
            }
            if (this.f1592e.a(i)) {
                i2 |= 4;
            }
            b(vh, i2);
            super.onBindViewHolder(vh, iA);
            return;
        }
        b(vh, 0);
        super.onBindViewHolder(vh, i);
    }

    @Override // com.e.a.a.a.d.b, android.support.v7.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return c() ? super.getItemId(a(i, this.f1593f, this.f1594g)) : super.getItemId(i);
    }

    @Override // com.e.a.a.a.d.b, android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return c() ? super.getItemViewType(a(i, this.f1593f, this.f1594g)) : super.getItemViewType(i);
    }

    protected static int a(int i, int i2, int i3) {
        if (i2 < 0 || i3 < 0) {
            return i;
        }
        if (i2 == i3 || ((i < i2 && i < i3) || (i > i2 && i > i3))) {
            return i;
        }
        if (i3 >= i2) {
            return i != i3 ? i + 1 : i2;
        }
        if (i != i3) {
            return i - 1;
        }
        return i2;
    }

    @Override // com.e.a.a.a.d.b
    protected void b() {
        if (i()) {
            j();
        } else {
            super.b();
        }
    }

    @Override // com.e.a.a.a.d.b
    protected void a(int i, int i2) {
        if (i()) {
            j();
        } else {
            super.a(i, i2);
        }
    }

    @Override // com.e.a.a.a.d.b
    protected void b(int i, int i2) {
        if (i()) {
            j();
        } else {
            super.b(i, i2);
        }
    }

    @Override // com.e.a.a.a.d.b
    protected void c(int i, int i2) {
        if (i()) {
            j();
        } else {
            super.c(i, i2);
        }
    }

    @Override // com.e.a.a.a.d.b
    protected void b(int i, int i2, int i3) {
        if (i()) {
            j();
        } else {
            super.b(i, i2, i3);
        }
    }

    private boolean i() {
        return c();
    }

    private void j() {
        if (this.f1588a != null) {
            this.f1588a.d();
        }
    }

    void a(i iVar, RecyclerView.ViewHolder viewHolder, j jVar) {
        if (viewHolder.getItemId() == -1) {
            throw new IllegalStateException("dragging target must provides valid ID");
        }
        int adapterPosition = viewHolder.getAdapterPosition();
        this.f1594g = adapterPosition;
        this.f1593f = adapterPosition;
        this.f1591d = iVar;
        this.f1590c = viewHolder;
        this.f1592e = jVar;
        notifyDataSetChanged();
    }

    void a(boolean z) {
        if (z && this.f1594g != this.f1593f) {
            ((e) com.e.a.a.a.d.e.a(g(), e.class)).onMoveItem(this.f1593f, this.f1594g);
        }
        this.f1593f = -1;
        this.f1594g = -1;
        this.f1592e = null;
        this.f1591d = null;
        this.f1590c = null;
        notifyDataSetChanged();
    }

    @Override // com.e.a.a.a.d.b, android.support.v7.widget.RecyclerView.Adapter
    public void onViewRecycled(VH vh) {
        if (c() && vh == this.f1590c) {
            Log.i("ARVDraggableWrapper", "a view holder object which is bound to currently dragging item is recycled");
            this.f1590c = null;
            this.f1588a.g();
        }
        super.onViewRecycled(vh);
    }

    boolean a(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3) {
        return this.f1589b.onCheckCanStartDrag(viewHolder, i, i2, i3);
    }

    j a(RecyclerView.ViewHolder viewHolder, int i) {
        return this.f1589b.onGetItemDraggableRange(viewHolder, i);
    }

    void d(int i, int i2) {
        int iA = a(i, this.f1593f, this.f1594g);
        if (iA != this.f1593f) {
            throw new IllegalStateException("onMoveItem() - may be a bug or has duplicate IDs  --- mDraggingItemInitialPosition = " + this.f1593f + ", mDraggingItemCurrentPosition = " + this.f1594g + ", origFromPosition = " + iA + ", fromPosition = " + i + ", toPosition = " + i2);
        }
        this.f1594g = i2;
        notifyItemMoved(i, i2);
    }

    protected boolean c() {
        return this.f1591d != null;
    }

    int d() {
        return this.f1593f;
    }

    int e() {
        return this.f1594g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void b(RecyclerView.ViewHolder viewHolder, int i) {
        if (viewHolder instanceof f) {
            int dragStateFlags = ((f) viewHolder).getDragStateFlags();
            if (dragStateFlags == -1 || ((dragStateFlags ^ i) & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) != 0) {
                i |= Integer.MIN_VALUE;
            }
            ((f) viewHolder).setDragStateFlags(i);
        }
    }

    private static e a(RecyclerView.Adapter adapter) {
        return (e) com.e.a.a.a.d.e.a(adapter, e.class);
    }
}
