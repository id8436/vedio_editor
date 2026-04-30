package com.google.api.gbase.client;

/* JADX INFO: loaded from: classes3.dex */
public final class Thumbnail {
    private Integer height;
    private String url;
    private Integer width;

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public int getWidth() {
        if (!isSizeSpecified()) {
            throw new IllegalStateException("Size is not specified.");
        }
        return this.width.intValue();
    }

    public int getHeight() {
        if (!isSizeSpecified()) {
            throw new IllegalStateException("Size is not specified.");
        }
        return this.height.intValue();
    }

    public void setSize(int i, int i2) {
        this.width = Integer.valueOf(i);
        this.height = Integer.valueOf(i2);
    }

    public boolean isSizeSpecified() {
        return (this.width == null || this.height == null) ? false : true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj.getClass() != Thumbnail.class) {
            return false;
        }
        Thumbnail thumbnail = (Thumbnail) obj;
        return equalsPossibleNulls(this.width, thumbnail.width) && equalsPossibleNulls(this.height, thumbnail.height) && equalsPossibleNulls(this.url, thumbnail.url);
    }

    public int hashCode() {
        return (hashCodePossibleNulls(this.width) * hashCodePossibleNulls(this.height) * 37) + (hashCodePossibleNulls(this.url) * 31);
    }

    public String toString() {
        return "Thumbnail: " + this.width + "x" + this.height + " " + this.url;
    }

    private static final <T> boolean equalsPossibleNulls(T t, T t2) {
        return t == null ? t2 == null : t.equals(t2);
    }

    private static final <T> int hashCodePossibleNulls(T t) {
        if (t == null) {
            return 41;
        }
        return t.hashCode();
    }
}
