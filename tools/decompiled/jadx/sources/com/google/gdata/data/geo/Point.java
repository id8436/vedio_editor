package com.google.gdata.data.geo;

import com.google.gdata.data.Extension;

/* JADX INFO: loaded from: classes3.dex */
public interface Point extends Extension {
    Double getLatitude();

    Double getLongitude();

    void setGeoLocation(Double d2, Double d3);
}
