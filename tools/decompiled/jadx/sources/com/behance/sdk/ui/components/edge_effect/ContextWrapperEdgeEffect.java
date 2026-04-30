package com.behance.sdk.ui.components.edge_effect;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.Log;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class ContextWrapperEdgeEffect extends ContextWrapper {
    private int mColor;
    private Drawable mEdgeDrawable;
    private Drawable mGlowDrawable;
    private ResourcesEdgeEffect mResourcesEdgeEffect;

    public ContextWrapperEdgeEffect(Context context) {
        this(context, 0);
    }

    public ContextWrapperEdgeEffect(Context context, int i) {
        super(context);
        this.mColor = i;
        Resources resources = context.getResources();
        this.mResourcesEdgeEffect = new ResourcesEdgeEffect(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
    }

    public void setEdgeEffectColor(int i) {
        this.mColor = i;
        if (this.mEdgeDrawable != null) {
            this.mEdgeDrawable.setColorFilter(i, PorterDuff.Mode.MULTIPLY);
        }
        if (this.mGlowDrawable != null) {
            this.mGlowDrawable.setColorFilter(i, PorterDuff.Mode.MULTIPLY);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.mResourcesEdgeEffect;
    }

    class ResourcesEdgeEffect extends Resources {
        private int overscroll_edge;
        private int overscroll_glow;

        public ResourcesEdgeEffect(AssetManager assetManager, DisplayMetrics displayMetrics, Configuration configuration) {
            super(assetManager, displayMetrics, configuration);
            this.overscroll_edge = getPlatformDrawableId("bsdk_overscroll_edge");
            this.overscroll_glow = getPlatformDrawableId("bsdk_overscroll_glow");
        }

        private int getPlatformDrawableId(String str) {
            try {
                return ((Integer) Class.forName("com.android.internal.R$drawable").getField(str).get(null)).intValue();
            } catch (ClassNotFoundException e2) {
                Log.e("ContextWrapperEdgeEffec", "Cannot find internal resource class");
                return 0;
            } catch (IllegalAccessException e3) {
                Log.e("ContextWrapperEdgeEffec", "Cannot access internal resource id: " + str);
                return 0;
            } catch (IllegalArgumentException e4) {
                Log.e("ContextWrapperEdgeEffec", "Cannot access internal resource id: " + str);
                return 0;
            } catch (NoSuchFieldException e5) {
                Log.e("ContextWrapperEdgeEffec", "Internal resource id does not exist: " + str);
                return 0;
            }
        }

        @Override // android.content.res.Resources
        public Drawable getDrawable(int i) throws Resources.NotFoundException {
            Drawable drawable;
            if (i == this.overscroll_edge) {
                ContextWrapperEdgeEffect.this.mEdgeDrawable = ContextWrapperEdgeEffect.this.getBaseContext().getResources().getDrawable(R.drawable.bsdk_overscroll_edge);
                drawable = ContextWrapperEdgeEffect.this.mEdgeDrawable;
            } else if (i == this.overscroll_glow) {
                ContextWrapperEdgeEffect.this.mGlowDrawable = ContextWrapperEdgeEffect.this.getBaseContext().getResources().getDrawable(R.drawable.bsdk_overscroll_glow);
                drawable = ContextWrapperEdgeEffect.this.mGlowDrawable;
            } else {
                return super.getDrawable(i);
            }
            if (drawable != null) {
                drawable.setColorFilter(ContextWrapperEdgeEffect.this.mColor, PorterDuff.Mode.MULTIPLY);
                return drawable;
            }
            return drawable;
        }
    }
}
