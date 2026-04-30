package com.adobe.premiereclip.project.sequence;

/* JADX INFO: loaded from: classes2.dex */
public class ClipOptionsEffects {
    private float exposure;
    private float highlights;
    private float shadows;

    public ClipOptionsEffects() {
        this(0.0f, 0.5f, 0.5f);
    }

    public ClipOptionsEffects(float f2, float f3, float f4) {
        this.exposure = f2;
        this.highlights = f3;
        this.shadows = f4;
    }

    public void setSeekExposure(float f2) {
        this.exposure = ((f2 - 0.5f) / 0.5f) * 6.0f;
    }

    public void setExposure(float f2) {
        this.exposure = f2;
    }

    public void setDCXExposure(float f2) {
        float fLog10 = (float) (20.0d * Math.log10(f2));
        float f3 = fLog10 >= -6.0f ? fLog10 : -6.0f;
        this.exposure = f3 <= 6.0f ? f3 : 6.0f;
    }

    public void setHighlights(float f2) {
        this.highlights = f2;
    }

    public void setShadows(float f2) {
        this.shadows = f2;
    }

    public float getSeekExposure() {
        return ((this.exposure / 6.0f) * 0.5f) + 0.5f;
    }

    public float getExposure() {
        return this.exposure;
    }

    public double getDCXExposure() {
        return (float) Math.pow(10.0d, ((double) this.exposure) / 20.0d);
    }

    public float getHighlights() {
        return this.highlights;
    }

    public float getShadows() {
        return this.shadows;
    }
}
