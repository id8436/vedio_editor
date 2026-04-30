package com.adobe.premiereclip.mediaengine.gpumedia.surface;

import android.content.Context;
import com.adobe.premiereclip.project.sequence.ClipOptionsEffects;

/* JADX INFO: loaded from: classes2.dex */
public class ClipExposureSurface extends ImageSurface {
    private ClipOptionsEffects clipOptionsEffects;
    private int mLUTSize;

    public ClipExposureSurface(Context context) {
        super(context);
        this.mLUTSize = 256;
        this.mWidth = this.mLUTSize;
        this.mHeight = 1;
        this.clipOptionsEffects = new ClipOptionsEffects(-1.0f, -1.0f, -1.0f);
    }

    public float getExposure() {
        return this.clipOptionsEffects.getExposure();
    }

    public float getShadows() {
        return this.clipOptionsEffects.getShadows();
    }

    public float getHighlights() {
        return this.clipOptionsEffects.getHighlights();
    }

    public void setClipExposureParams(ClipOptionsEffects clipOptionsEffects) {
        if (this.clipOptionsEffects.getHighlights() != clipOptionsEffects.getHighlights() || this.clipOptionsEffects.getShadows() != clipOptionsEffects.getShadows()) {
            copyClipOptions(clipOptionsEffects);
            fillLut();
        }
    }

    private float getExponent(float f2) {
        float f3 = 1.0f;
        if (f2 == 0.5d) {
            return 1.0f;
        }
        if (f2 > 0.5d) {
            f3 = 1.0f + (((f2 - 0.5f) / 0.5f) * 1.0f);
        } else if (f2 < 0.5d) {
            f3 = ((f2 / 0.5f) * 0.25f) + 0.75f;
        }
        if (f3 > 2.0d) {
            return 2.0f;
        }
        if (f3 >= 0.75d) {
            return f3;
        }
        return 0.75f;
    }

    private void copyClipOptions(ClipOptionsEffects clipOptionsEffects) {
        this.clipOptionsEffects.setHighlights(clipOptionsEffects.getHighlights());
        this.clipOptionsEffects.setShadows(clipOptionsEffects.getShadows());
    }

    public byte[] getLUTData() {
        float fPow;
        byte[] bArr = new byte[this.mWidth * this.mHeight * 4];
        int i = this.mLUTSize;
        float f2 = this.mLUTSize - 1.0f;
        float exponent = getExponent(this.clipOptionsEffects.getHighlights());
        float exponent2 = getExponent(this.clipOptionsEffects.getShadows());
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 / f2 >= 0.5d) {
                fPow = ((1.0f - ((float) Math.pow(1.0f - ((r0 - 0.5f) / 0.5f), exponent))) * 0.5f) + 0.5f;
            } else {
                fPow = ((float) Math.pow(r0 / 0.5f, exponent2)) * 0.5f;
            }
            bArr[i2 * 4] = (byte) (fPow * f2);
            bArr[(i2 * 4) + 1] = (byte) (fPow * f2);
            bArr[(i2 * 4) + 2] = (byte) (fPow * f2);
            bArr[(i2 * 4) + 3] = -1;
        }
        return bArr;
    }

    private void fillLut() {
        setBitmap(getLUTData(), this.mWidth, this.mHeight);
        drawImage();
    }
}
