package com.behance.sdk.ui.animations;

import android.content.Context;
import android.support.v7.widget.ActivityChooserView;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKRecyclerItemAnimator {
    private int columns;
    private Context context;
    private int slideDist;
    private int lastPos = -1;
    private int beginSlideAnimPos = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;

    public static BehanceSDKRecyclerItemAnimator getInstance(Context context, int i) {
        return getInstance(context, i, context.getResources().getDimensionPixelSize(R.dimen.bsdk_recycler_slide_up_anim_dist));
    }

    public static BehanceSDKRecyclerItemAnimator getInstance(Context context, int i, int i2) {
        BehanceSDKRecyclerItemAnimator behanceSDKRecyclerItemAnimator = new BehanceSDKRecyclerItemAnimator();
        behanceSDKRecyclerItemAnimator.context = context;
        behanceSDKRecyclerItemAnimator.columns = i;
        behanceSDKRecyclerItemAnimator.slideDist = i2;
        return behanceSDKRecyclerItemAnimator;
    }

    public void setAnimation(View view, int i, boolean z) {
        setStartSlidePos(view, this.columns);
        if (i > this.lastPos) {
            if (i >= this.beginSlideAnimPos) {
                view.setTranslationY(this.slideDist);
                view.animate().translationY(0.0f).setDuration(this.context.getResources().getInteger(R.integer.bsdk_recycler_slide_up_anim_dur)).setInterpolator(new DecelerateInterpolator(1.1f)).start();
            } else {
                view.setAlpha(0.0f);
                view.animate().alpha(1.0f).setDuration(this.context.getResources().getInteger(R.integer.bsdk_recycler_slide_up_anim_dur)).start();
            }
            if (!z) {
                this.lastPos = i;
            }
        }
    }

    private void setStartSlidePos(View view, int i) {
        if (view.getHeight() != 0 && this.beginSlideAnimPos == Integer.MAX_VALUE) {
            this.beginSlideAnimPos = ((int) Math.ceil(((double) this.context.getResources().getDisplayMetrics().heightPixels) / ((double) view.getHeight()))) * i;
        }
    }
}
