package g.a.a.a;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/* JADX INFO: compiled from: CalligraphyFactory.java */
/* JADX INFO: loaded from: classes3.dex */
class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f4894a;

    protected static int[] a(TextView textView) {
        int[] iArr = {-1, -1};
        if (b(textView)) {
            iArr[0] = 16843470;
            iArr[1] = 16843512;
        } else if (c(textView)) {
            iArr[0] = 16843470;
            iArr[1] = 16843513;
        }
        if (iArr[0] == -1) {
            iArr[0] = a.a().f().containsKey(textView.getClass()) ? a.a().f().get(textView.getClass()).intValue() : R.attr.textAppearance;
        }
        return iArr;
    }

    @SuppressLint({"NewApi"})
    protected static boolean b(TextView textView) {
        if (a(textView, "action_bar_title")) {
            return true;
        }
        if (a((View) textView)) {
            return TextUtils.equals(((Toolbar) textView.getParent()).getTitle(), textView.getText());
        }
        return false;
    }

    @SuppressLint({"NewApi"})
    protected static boolean c(TextView textView) {
        if (a(textView, "action_bar_subtitle")) {
            return true;
        }
        if (a((View) textView)) {
            return TextUtils.equals(((Toolbar) textView.getParent()).getSubtitle(), textView.getText());
        }
        return false;
    }

    protected static boolean a(View view) {
        return k.a() && view.getParent() != null && (view.getParent() instanceof Toolbar);
    }

    protected static boolean a(View view, String str) {
        if (view.getId() == -1) {
            return false;
        }
        return view.getResources().getResourceEntryName(view.getId()).equalsIgnoreCase(str);
    }

    public d(int i) {
        this.f4894a = i;
    }

    public View a(View view, Context context, AttributeSet attributeSet) {
        if (view != null && view.getTag(o.calligraphy_tag_id) != Boolean.TRUE) {
            b(view, context, attributeSet);
            view.setTag(o.calligraphy_tag_id, Boolean.TRUE);
        }
        return view;
    }

    void b(View view, Context context, AttributeSet attributeSet) {
        String strA;
        if (view instanceof TextView) {
            if (!q.b(((TextView) view).getTypeface())) {
                String strA2 = k.a(context, attributeSet, this.f4894a);
                if (TextUtils.isEmpty(strA2)) {
                    strA2 = k.b(context, attributeSet, this.f4894a);
                }
                if (TextUtils.isEmpty(strA2)) {
                    strA2 = k.c(context, attributeSet, this.f4894a);
                }
                if (TextUtils.isEmpty(strA2)) {
                    int[] iArrA = a((TextView) view);
                    if (iArrA[1] != -1) {
                        strA = k.a(context, iArrA[0], iArrA[1], this.f4894a);
                    } else {
                        strA = k.a(context, iArrA[0], this.f4894a);
                    }
                } else {
                    strA = strA2;
                }
                k.a(context, (TextView) view, a.a(), strA, a(view, "action_bar_title") || a(view, "action_bar_subtitle"));
            } else {
                return;
            }
        }
        if (k.a() && (view instanceof Toolbar)) {
            ViewGroup viewGroup = (ViewGroup) view;
            viewGroup.getViewTreeObserver().addOnGlobalLayoutListener(new e(this, viewGroup, context));
        }
    }
}
