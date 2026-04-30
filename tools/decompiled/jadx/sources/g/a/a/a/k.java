package g.a.a.a;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.TextView;

/* JADX INFO: compiled from: CalligraphyUtils.java */
/* JADX INFO: loaded from: classes3.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Boolean f4910a = null;

    public static CharSequence a(CharSequence charSequence, Typeface typeface) {
        if (charSequence != null && charSequence.length() > 0) {
            CharSequence spannableString = !(charSequence instanceof Spannable) ? new SpannableString(charSequence) : charSequence;
            ((Spannable) spannableString).setSpan(q.a(typeface), 0, spannableString.length(), 33);
            return spannableString;
        }
        return charSequence;
    }

    public static boolean a(TextView textView, Typeface typeface, boolean z) {
        if (textView == null || typeface == null) {
            return false;
        }
        textView.setPaintFlags(textView.getPaintFlags() | 128 | 1);
        textView.setTypeface(typeface);
        if (z) {
            textView.setText(a(textView.getText(), typeface), TextView.BufferType.SPANNABLE);
            textView.addTextChangedListener(new l(typeface));
        }
        return true;
    }

    static boolean a(Context context, TextView textView, String str, boolean z) {
        if (textView == null || context == null) {
            return false;
        }
        return a(textView, q.a(context.getAssets(), str), z);
    }

    static void a(Context context, TextView textView, a aVar, boolean z) {
        if (context != null && textView != null && aVar != null && aVar.c()) {
            a(context, textView, aVar.b(), z);
        }
    }

    static void a(Context context, TextView textView, a aVar, String str, boolean z) {
        if (context != null && textView != null && aVar != null) {
            if (TextUtils.isEmpty(str) || !a(context, textView, str, z)) {
                a(context, textView, aVar, z);
            }
        }
    }

    static String a(Context context, AttributeSet attributeSet, int i) {
        if (i == -1 || attributeSet == null) {
            return null;
        }
        try {
            String resourceEntryName = context.getResources().getResourceEntryName(i);
            int attributeResourceValue = attributeSet.getAttributeResourceValue(null, resourceEntryName, -1);
            if (attributeResourceValue > 0) {
                return context.getString(attributeResourceValue);
            }
            return attributeSet.getAttributeValue(null, resourceEntryName);
        } catch (Resources.NotFoundException e2) {
            return null;
        }
    }

    static String b(Context context, AttributeSet attributeSet, int i) {
        if (i == -1 || attributeSet == null) {
            return null;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{i});
        if (typedArrayObtainStyledAttributes != null) {
            try {
                String string = typedArrayObtainStyledAttributes.getString(0);
                if (!TextUtils.isEmpty(string)) {
                    return string;
                }
            } catch (Exception e2) {
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
        return null;
    }

    static String c(Context context, AttributeSet attributeSet, int i) {
        int resourceId = -1;
        if (i == -1 || attributeSet == null) {
            return null;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.textAppearance});
        if (typedArrayObtainStyledAttributes != null) {
            try {
                resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
            } catch (Exception e2) {
                return null;
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, new int[]{i});
        if (typedArrayObtainStyledAttributes2 == null) {
            return null;
        }
        try {
            return typedArrayObtainStyledAttributes2.getString(0);
        } catch (Exception e3) {
            return null;
        } finally {
            typedArrayObtainStyledAttributes2.recycle();
        }
    }

    static String a(Context context, int i, int i2) {
        String string = null;
        if (i != -1 && i2 != -1) {
            Resources.Theme theme = context.getTheme();
            TypedValue typedValue = new TypedValue();
            theme.resolveAttribute(i, typedValue, true);
            TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(typedValue.resourceId, new int[]{i2});
            try {
                string = typedArrayObtainStyledAttributes.getString(0);
            } catch (Exception e2) {
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
        return string;
    }

    static String a(Context context, int i, int i2, int i3) {
        TypedArray typedArrayObtainStyledAttributes;
        String string = null;
        if (i != -1 && i3 != -1) {
            Resources.Theme theme = context.getTheme();
            TypedValue typedValue = new TypedValue();
            theme.resolveAttribute(i, typedValue, true);
            TypedArray typedArrayObtainStyledAttributes2 = theme.obtainStyledAttributes(typedValue.resourceId, new int[]{i2});
            try {
                int resourceId = typedArrayObtainStyledAttributes2.getResourceId(0, -1);
                if (resourceId != -1 && (typedArrayObtainStyledAttributes = context.obtainStyledAttributes(resourceId, new int[]{i3})) != null) {
                    try {
                        string = typedArrayObtainStyledAttributes.getString(0);
                    } catch (Exception e2) {
                    } finally {
                        typedArrayObtainStyledAttributes.recycle();
                    }
                }
            } catch (Exception e3) {
            } finally {
                typedArrayObtainStyledAttributes2.recycle();
            }
        }
        return string;
    }

    static boolean a() {
        if (f4910a == null) {
            try {
                Class.forName("android.support.v7.widget.Toolbar");
                f4910a = Boolean.TRUE;
            } catch (ClassNotFoundException e2) {
                f4910a = Boolean.FALSE;
            }
        }
        return f4910a.booleanValue();
    }
}
