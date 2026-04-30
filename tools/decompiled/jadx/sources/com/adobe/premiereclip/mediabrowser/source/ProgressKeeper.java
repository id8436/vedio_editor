package com.adobe.premiereclip.mediabrowser.source;

/* JADX INFO: loaded from: classes2.dex */
public class ProgressKeeper {
    private int lastProgress = 0;
    private int totalProgress = 0;

    public void setTotalProgress(int i) {
        this.totalProgress = i;
    }

    public int calculateProgressOffset(int i) {
        int i2 = i - this.lastProgress;
        this.lastProgress = i;
        return i2;
    }

    public int calculateProgressOffset() {
        int i = this.totalProgress - this.lastProgress;
        this.lastProgress = this.totalProgress;
        return i;
    }
}
