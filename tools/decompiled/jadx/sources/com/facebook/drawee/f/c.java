package com.facebook.drawee.f;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.facebook.drawee.e.t;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: GenericDraweeHierarchyInflater.java */
/* JADX INFO: loaded from: classes.dex */
public class c {
    public static b a(Context context, @Nullable AttributeSet attributeSet) {
        return a(new b(context.getResources()), context, attributeSet);
    }

    public static b a(b bVar, Context context, @Nullable AttributeSet attributeSet) {
        boolean z;
        boolean z2;
        boolean z3;
        int integer;
        boolean z4 = true;
        int dimensionPixelSize = 0;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.facebook.drawee.b.GenericDraweeHierarchy);
            try {
                int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
                z = true;
                z2 = true;
                z3 = true;
                integer = 0;
                for (int i = 0; i < indexCount; i++) {
                    int index = typedArrayObtainStyledAttributes.getIndex(i);
                    if (index == com.facebook.drawee.b.GenericDraweeHierarchy_actualImageScaleType) {
                        bVar.e(a(typedArrayObtainStyledAttributes, index));
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_placeholderImage) {
                        bVar.a(a(context, typedArrayObtainStyledAttributes, index));
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_pressedStateOverlayImage) {
                        bVar.g(a(context, typedArrayObtainStyledAttributes, index));
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_progressBarImage) {
                        bVar.d(a(context, typedArrayObtainStyledAttributes, index));
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_fadeDuration) {
                        bVar.a(typedArrayObtainStyledAttributes.getInt(index, 0));
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_viewAspectRatio) {
                        bVar.a(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_placeholderImageScaleType) {
                        bVar.a(a(typedArrayObtainStyledAttributes, index));
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_retryImage) {
                        bVar.b(a(context, typedArrayObtainStyledAttributes, index));
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_retryImageScaleType) {
                        bVar.b(a(typedArrayObtainStyledAttributes, index));
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_failureImage) {
                        bVar.c(a(context, typedArrayObtainStyledAttributes, index));
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_failureImageScaleType) {
                        bVar.c(a(typedArrayObtainStyledAttributes, index));
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_progressBarImageScaleType) {
                        bVar.d(a(typedArrayObtainStyledAttributes, index));
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_progressBarAutoRotateInterval) {
                        integer = typedArrayObtainStyledAttributes.getInteger(index, integer);
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_backgroundImage) {
                        bVar.e(a(context, typedArrayObtainStyledAttributes, index));
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_overlayImage) {
                        bVar.f(a(context, typedArrayObtainStyledAttributes, index));
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_roundAsCircle) {
                        a(bVar).a(typedArrayObtainStyledAttributes.getBoolean(index, false));
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_roundedCornerRadius) {
                        dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dimensionPixelSize);
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_roundTopLeft) {
                        z3 = typedArrayObtainStyledAttributes.getBoolean(index, z3);
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_roundTopRight) {
                        z2 = typedArrayObtainStyledAttributes.getBoolean(index, z2);
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_roundBottomLeft) {
                        z = typedArrayObtainStyledAttributes.getBoolean(index, z);
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_roundBottomRight) {
                        z4 = typedArrayObtainStyledAttributes.getBoolean(index, z4);
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_roundWithOverlayColor) {
                        a(bVar).a(typedArrayObtainStyledAttributes.getColor(index, 0));
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_roundingBorderWidth) {
                        a(bVar).a(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_roundingBorderColor) {
                        a(bVar).b(typedArrayObtainStyledAttributes.getColor(index, 0));
                    } else if (index == com.facebook.drawee.b.GenericDraweeHierarchy_roundingBorderPadding) {
                        a(bVar).b(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                    }
                }
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        } else {
            z = true;
            z2 = true;
            z3 = true;
            integer = 0;
        }
        if (bVar.j() != null && integer > 0) {
            bVar.d(new com.facebook.drawee.e.c(bVar.j(), integer));
        }
        if (dimensionPixelSize > 0) {
            a(bVar).a(z3 ? dimensionPixelSize : 0.0f, z2 ? dimensionPixelSize : 0.0f, z4 ? dimensionPixelSize : 0.0f, z ? dimensionPixelSize : 0.0f);
        }
        return bVar;
    }

    private static e a(b bVar) {
        if (bVar.s() == null) {
            bVar.a(new e());
        }
        return bVar.s();
    }

    @Nullable
    private static Drawable a(Context context, TypedArray typedArray, int i) {
        int resourceId = typedArray.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        return context.getResources().getDrawable(resourceId);
    }

    @Nullable
    private static t a(TypedArray typedArray, int i) {
        switch (typedArray.getInt(i, -2)) {
            case -1:
                return null;
            case 0:
                return t.f2148a;
            case 1:
                return t.f2149b;
            case 2:
                return t.f2150c;
            case 3:
                return t.f2151d;
            case 4:
                return t.f2152e;
            case 5:
                return t.f2153f;
            case 6:
                return t.f2154g;
            case 7:
                return t.h;
            default:
                throw new RuntimeException("XML attribute not specified!");
        }
    }
}
