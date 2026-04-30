package com.adobe.premiereclip.coachmarks;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.adobe.premiereclip.R;

/* JADX INFO: loaded from: classes2.dex */
public class BackgroundOverlay extends RelativeLayout {
    private View background;

    public BackgroundOverlay(Context context) {
        super(context);
        this.background = null;
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.coachmarks_overlay, (ViewGroup) this, true);
        this.background = findViewById(R.id.coachmarkOverlay);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        Log.e("Background", measuredHeight + " " + measuredWidth);
        this.background.layout(0, 0, measuredWidth, measuredHeight);
    }
}
