package com.google.gdata.data.geo;

/* JADX INFO: loaded from: classes3.dex */
public interface BoxData {
    void clearGeoBoundingBox();

    Box getGeoBoundingBox();

    void setGeoBoundingBox(Box box);

    void setGeoBoundingBox(Point point, Point point2);
}
