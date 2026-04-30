package com.getbase.floatingactionbutton;

import android.R;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.ColorRes;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.TextView;

/* JADX INFO: loaded from: classes2.dex */
public class FloatingActionsMenu extends ViewGroup {
    private static Interpolator v = new OvershootInterpolator();
    private static Interpolator w = new DecelerateInterpolator(3.0f);
    private static Interpolator x = new DecelerateInterpolator();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3108c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3109d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3110e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3111f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3112g;
    private int h;
    private int i;
    private boolean j;
    private AnimatorSet k;
    private AnimatorSet l;
    private a m;
    private i n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private p t;
    private h u;

    public FloatingActionsMenu(Context context) {
        this(context, null);
    }

    public FloatingActionsMenu(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.k = new AnimatorSet().setDuration(300L);
        this.l = new AnimatorSet().setDuration(300L);
        a(context, attributeSet);
    }

    public FloatingActionsMenu(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.k = new AnimatorSet().setDuration(300L);
        this.l = new AnimatorSet().setDuration(300L);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        this.f3112g = (int) ((getResources().getDimension(l.fab_actions_spacing) - getResources().getDimension(l.fab_shadow_radius)) - getResources().getDimension(l.fab_shadow_offset));
        this.h = getResources().getDimensionPixelSize(l.fab_labels_margin);
        this.i = getResources().getDimensionPixelSize(l.fab_shadow_offset);
        this.t = new p(this);
        setTouchDelegate(this.t);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, o.FloatingActionsMenu, 0, 0);
        this.f3106a = typedArrayObtainStyledAttributes.getColor(o.FloatingActionsMenu_fab_addButtonPlusIconColor, a(R.color.white));
        this.f3107b = typedArrayObtainStyledAttributes.getColor(o.FloatingActionsMenu_fab_addButtonColorNormal, a(R.color.holo_blue_dark));
        this.f3108c = typedArrayObtainStyledAttributes.getColor(o.FloatingActionsMenu_fab_addButtonColorPressed, a(R.color.holo_blue_light));
        this.f3109d = typedArrayObtainStyledAttributes.getInt(o.FloatingActionsMenu_fab_addButtonSize, 0);
        this.f3110e = typedArrayObtainStyledAttributes.getBoolean(o.FloatingActionsMenu_fab_addButtonStrokeVisible, true);
        this.f3111f = typedArrayObtainStyledAttributes.getInt(o.FloatingActionsMenu_fab_expandDirection, 0);
        this.q = typedArrayObtainStyledAttributes.getResourceId(o.FloatingActionsMenu_fab_labelStyle, 0);
        this.r = typedArrayObtainStyledAttributes.getInt(o.FloatingActionsMenu_fab_labelsPosition, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (this.q != 0 && h()) {
            throw new IllegalStateException("Action labels in horizontal expand orientation is not supported.");
        }
        a(context);
    }

    public void setOnFloatingActionsMenuUpdateListener(h hVar) {
        this.u = hVar;
    }

    private boolean h() {
        return this.f3111f == 2 || this.f3111f == 3;
    }

    private void a(Context context) {
        this.m = new e(this, context);
        this.m.setId(n.fab_expand_menu_button);
        this.m.setSize(this.f3109d);
        this.m.setOnClickListener(new f(this));
        addView(this.m, super.generateDefaultLayoutParams());
        this.s++;
    }

    private int a(@ColorRes int i) {
        return getResources().getColor(i);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int measuredHeight;
        TextView textView;
        measureChildren(i, i2);
        this.o = 0;
        this.p = 0;
        int i4 = 0;
        int iMax = 0;
        int iB = 0;
        int iB2 = 0;
        while (i4 < this.s) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() == 8) {
                i3 = iB2;
                measuredHeight = iB;
            } else {
                switch (this.f3111f) {
                    case 0:
                    case 1:
                        this.o = Math.max(this.o, childAt.getMeasuredWidth());
                        i3 = iB2;
                        measuredHeight = iB + childAt.getMeasuredHeight();
                        break;
                    case 2:
                    case 3:
                        iB2 += childAt.getMeasuredWidth();
                        this.p = Math.max(this.p, childAt.getMeasuredHeight());
                    default:
                        i3 = iB2;
                        measuredHeight = iB;
                        break;
                }
                if (!h() && (textView = (TextView) childAt.getTag(n.fab_label)) != null) {
                    iMax = Math.max(iMax, textView.getMeasuredWidth());
                }
            }
            i4++;
            iB = measuredHeight;
            iB2 = i3;
        }
        if (!h()) {
            iB2 = this.o + (iMax > 0 ? this.h + iMax : 0);
        } else {
            iB = this.p;
        }
        switch (this.f3111f) {
            case 0:
            case 1:
                iB = b(iB + (this.f3112g * (this.s - 1)));
                break;
            case 2:
            case 3:
                iB2 = b((this.f3112g * (this.s - 1)) + iB2);
                break;
        }
        setMeasuredDimension(iB2, iB);
    }

    private int b(int i) {
        return (i * 12) / 10;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        switch (this.f3111f) {
            case 0:
            case 1:
                boolean z2 = this.f3111f == 0;
                if (z) {
                    this.t.a();
                }
                int measuredHeight = z2 ? (i4 - i2) - this.m.getMeasuredHeight() : 0;
                int i5 = this.r == 0 ? (i3 - i) - (this.o / 2) : this.o / 2;
                int measuredWidth = i5 - (this.m.getMeasuredWidth() / 2);
                this.m.layout(measuredWidth, measuredHeight, this.m.getMeasuredWidth() + measuredWidth, this.m.getMeasuredHeight() + measuredHeight);
                int i6 = (this.o / 2) + this.h;
                int i7 = this.r == 0 ? i5 - i6 : i5 + i6;
                int measuredHeight2 = z2 ? measuredHeight - this.f3112g : this.m.getMeasuredHeight() + measuredHeight + this.f3112g;
                for (int i8 = this.s - 1; i8 >= 0; i8--) {
                    View childAt = getChildAt(i8);
                    if (childAt != this.m && childAt.getVisibility() != 8) {
                        int measuredWidth2 = i5 - (childAt.getMeasuredWidth() / 2);
                        int measuredHeight3 = z2 ? measuredHeight2 - childAt.getMeasuredHeight() : measuredHeight2;
                        childAt.layout(measuredWidth2, measuredHeight3, childAt.getMeasuredWidth() + measuredWidth2, childAt.getMeasuredHeight() + measuredHeight3);
                        float f2 = measuredHeight - measuredHeight3;
                        childAt.setTranslationY(this.j ? 0.0f : f2);
                        childAt.setAlpha(this.j ? 1.0f : 0.0f);
                        g gVar = (g) childAt.getLayoutParams();
                        gVar.f3132d.setFloatValues(0.0f, f2);
                        gVar.f3130b.setFloatValues(f2, 0.0f);
                        gVar.a(childAt);
                        View view = (View) childAt.getTag(n.fab_label);
                        if (view != null) {
                            int measuredWidth3 = this.r == 0 ? i7 - view.getMeasuredWidth() : view.getMeasuredWidth() + i7;
                            int i9 = this.r == 0 ? measuredWidth3 : i7;
                            if (this.r == 0) {
                                measuredWidth3 = i7;
                            }
                            int measuredHeight4 = (measuredHeight3 - this.i) + ((childAt.getMeasuredHeight() - view.getMeasuredHeight()) / 2);
                            view.layout(i9, measuredHeight4, measuredWidth3, view.getMeasuredHeight() + measuredHeight4);
                            this.t.a(new TouchDelegate(new Rect(Math.min(measuredWidth2, i9), measuredHeight3 - (this.f3112g / 2), Math.max(measuredWidth2 + childAt.getMeasuredWidth(), measuredWidth3), childAt.getMeasuredHeight() + measuredHeight3 + (this.f3112g / 2)), childAt));
                            view.setTranslationY(this.j ? 0.0f : f2);
                            view.setAlpha(this.j ? 1.0f : 0.0f);
                            g gVar2 = (g) view.getLayoutParams();
                            gVar2.f3132d.setFloatValues(0.0f, f2);
                            gVar2.f3130b.setFloatValues(f2, 0.0f);
                            gVar2.a(view);
                        }
                        measuredHeight2 = z2 ? measuredHeight3 - this.f3112g : childAt.getMeasuredHeight() + measuredHeight3 + this.f3112g;
                    }
                }
                break;
            case 2:
            case 3:
                boolean z3 = this.f3111f == 2;
                int measuredWidth4 = z3 ? (i3 - i) - this.m.getMeasuredWidth() : 0;
                int measuredHeight5 = ((i4 - i2) - this.p) + ((this.p - this.m.getMeasuredHeight()) / 2);
                this.m.layout(measuredWidth4, measuredHeight5, this.m.getMeasuredWidth() + measuredWidth4, this.m.getMeasuredHeight() + measuredHeight5);
                int measuredWidth5 = z3 ? measuredWidth4 - this.f3112g : this.m.getMeasuredWidth() + measuredWidth4 + this.f3112g;
                for (int i10 = this.s - 1; i10 >= 0; i10--) {
                    View childAt2 = getChildAt(i10);
                    if (childAt2 != this.m && childAt2.getVisibility() != 8) {
                        int measuredWidth6 = z3 ? measuredWidth5 - childAt2.getMeasuredWidth() : measuredWidth5;
                        int measuredHeight6 = ((this.m.getMeasuredHeight() - childAt2.getMeasuredHeight()) / 2) + measuredHeight5;
                        childAt2.layout(measuredWidth6, measuredHeight6, childAt2.getMeasuredWidth() + measuredWidth6, childAt2.getMeasuredHeight() + measuredHeight6);
                        float f3 = measuredWidth4 - measuredWidth6;
                        childAt2.setTranslationX(this.j ? 0.0f : f3);
                        childAt2.setAlpha(this.j ? 1.0f : 0.0f);
                        g gVar3 = (g) childAt2.getLayoutParams();
                        gVar3.f3132d.setFloatValues(0.0f, f3);
                        gVar3.f3130b.setFloatValues(f3, 0.0f);
                        gVar3.a(childAt2);
                        measuredWidth5 = z3 ? measuredWidth6 - this.f3112g : childAt2.getMeasuredWidth() + measuredWidth6 + this.f3112g;
                    }
                }
                break;
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new g(this, super.generateDefaultLayoutParams());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new g(this, super.generateLayoutParams(attributeSet));
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new g(this, super.generateLayoutParams(layoutParams));
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        bringChildToFront(this.m);
        this.s = getChildCount();
        if (this.q != 0) {
            i();
        }
    }

    private void i() {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.q);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.s) {
                FloatingActionButton floatingActionButton = (FloatingActionButton) getChildAt(i2);
                String title = floatingActionButton.getTitle();
                if (floatingActionButton != this.m && title != null && floatingActionButton.getTag(n.fab_label) == null) {
                    TextView textView = new TextView(contextThemeWrapper);
                    textView.setTextAppearance(getContext(), this.q);
                    textView.setText(floatingActionButton.getTitle());
                    addView(textView);
                    floatingActionButton.setTag(n.fab_label, textView);
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public void a() {
        a(false);
    }

    private void a(boolean z) {
        if (this.j) {
            this.j = false;
            this.t.a(false);
            this.l.setDuration(z ? 0L : 300L);
            this.l.start();
            this.k.cancel();
            if (this.u != null) {
                this.u.onMenuCollapsed();
            }
        }
    }

    public void b() {
        if (this.j) {
            a();
        } else {
            c();
        }
    }

    public void c() {
        if (!this.j) {
            this.j = true;
            this.t.a(true);
            this.l.cancel();
            this.k.start();
            if (this.u != null) {
                this.u.onMenuExpanded();
            }
        }
    }

    public boolean d() {
        return this.j;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.m.setEnabled(z);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f3113a = this.j;
        return savedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.j = savedState.f3113a;
            this.t.a(this.j);
            if (this.n != null) {
                this.n.setRotation(this.j ? 135.0f : 0.0f);
            }
            super.onRestoreInstanceState(savedState.getSuperState());
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    public class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new j();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f3113a;

        /* synthetic */ SavedState(Parcel parcel, e eVar) {
            this(parcel);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f3113a = parcel.readInt() == 1;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f3113a ? 1 : 0);
        }
    }
}
