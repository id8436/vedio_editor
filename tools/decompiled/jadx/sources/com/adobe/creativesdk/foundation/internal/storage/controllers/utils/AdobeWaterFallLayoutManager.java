package com.adobe.creativesdk.foundation.internal.storage.controllers.utils;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager;
import com.adobe.creativesdk.foundation.internal.twowayview.widget.StaggeredGridLayoutManager;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeWaterFallLayoutManager extends StaggeredGridLayoutManager {
    private SectionDetailsDelegate _clientSectionsDelegate;
    private int _singleSpanSize;

    public interface SectionDetailsDelegate {
        int getGCMOfSpans();

        int getNumColumnsInSection(int i);
    }

    public AdobeWaterFallLayoutManager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this._singleSpanSize = -1;
    }

    public AdobeWaterFallLayoutManager(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this._singleSpanSize = -1;
    }

    public AdobeWaterFallLayoutManager(int i) {
        super(TwoWayLayoutManager.Orientation.VERTICAL, i, 1);
        this._singleSpanSize = -1;
    }

    private int getSingleSpanSize() {
        if (this._singleSpanSize == -1) {
            int paddingLeft = getPaddingLeft();
            this._singleSpanSize = ((getWidth() - paddingLeft) - getPaddingRight()) / this._clientSectionsDelegate.getGCMOfSpans();
        }
        return this._singleSpanSize;
    }

    private int getSpanForSectionItem(int i, boolean z) {
        int gCMOfSpans = this._clientSectionsDelegate.getGCMOfSpans();
        if (!z) {
            return gCMOfSpans / this._clientSectionsDelegate.getNumColumnsInSection(i);
        }
        return gCMOfSpans;
    }

    public StaggeredGridLayoutManager.LayoutParams getLayoutParamsForItem(StaggeredGridLayoutManager.LayoutParams layoutParams, int i, boolean z) {
        StaggeredGridLayoutManager.LayoutParams layoutParams2 = new StaggeredGridLayoutManager.LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        layoutParams2.span = getSpanForSectionItem(i, z);
        return layoutParams2;
    }

    public StaggeredGridLayoutManager.LayoutParams getLayoutParamsForItem(int i, boolean z) {
        StaggeredGridLayoutManager.LayoutParams layoutParams = new StaggeredGridLayoutManager.LayoutParams(-1, -2);
        layoutParams.span = getSpanForSectionItem(i, z);
        return layoutParams;
    }

    public void setClientSectionsDelegate(SectionDetailsDelegate sectionDetailsDelegate) {
        this._clientSectionsDelegate = sectionDetailsDelegate;
    }
}
