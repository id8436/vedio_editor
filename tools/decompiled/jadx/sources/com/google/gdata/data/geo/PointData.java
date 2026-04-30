package com.google.gdata.data.geo;

/* JADX INFO: loaded from: classes3.dex */
public interface PointData {
    void clearPoint();

    Point getGeoLocation();

    void setGeoLocation(Point point);

    void setGeoLocation(Double d2, Double d3) throws IllegalArgumentException;
}
