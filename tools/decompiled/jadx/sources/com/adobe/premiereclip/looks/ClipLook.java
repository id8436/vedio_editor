package com.adobe.premiereclip.looks;

import android.content.Context;
import android.widget.ImageView;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class ClipLook extends BaseLook {
    private int drawableId;
    private int rawId;

    public ClipLook(String str, String str2, int i, int i2) {
        super(str, str2);
        this.drawableId = i;
        this.rawId = i2;
    }

    public ClipLook(ClipLook clipLook) {
        super(clipLook.getLookId(), clipLook.getLookName());
        this.drawableId = clipLook.getDrawableId();
        this.rawId = clipLook.getRawId();
    }

    public int getDrawableId() {
        return this.drawableId;
    }

    public int getRawId() {
        return this.rawId;
    }

    @Override // com.adobe.premiereclip.looks.BaseLook
    public void drawThumbnail(Context context, ImageView imageView) {
        imageView.setImageResource(this.drawableId);
    }

    @Override // com.adobe.premiereclip.looks.BaseLook
    public InputStream getCubeData(Context context) {
        return context.getResources().openRawResource(this.rawId);
    }
}
