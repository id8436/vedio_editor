package com.adobe.creativesdk.foundation.internal.storage.controllers.commands;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetViewListViewScrollDirectionChange extends AdobeAssetViewCommandData {
    private Direction newScrollDirection;
    private int offsetChange = 0;

    public enum Direction {
        SCROLL_DOWN,
        SCROLL_UP,
        SCROLL_UNKNOWN
    }

    public Direction getNewScrollDirection() {
        return this.newScrollDirection;
    }

    public void setNewScrollDirection(Direction direction) {
        this.newScrollDirection = direction;
    }

    public int getOffsetChange() {
        return this.offsetChange;
    }

    public void setOffsetChange(int i) {
        this.offsetChange = i;
    }
}
