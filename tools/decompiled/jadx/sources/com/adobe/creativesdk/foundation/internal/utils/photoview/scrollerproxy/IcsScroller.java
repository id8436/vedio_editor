package com.adobe.creativesdk.foundation.internal.utils.photoview.scrollerproxy;

import android.annotation.TargetApi;
import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(14)
public class IcsScroller extends GingerScroller {
    public IcsScroller(Context context) {
        super(context);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.scrollerproxy.GingerScroller, com.adobe.creativesdk.foundation.internal.utils.photoview.scrollerproxy.ScrollerProxy
    public boolean computeScrollOffset() {
        return this.mScroller.computeScrollOffset();
    }
}
