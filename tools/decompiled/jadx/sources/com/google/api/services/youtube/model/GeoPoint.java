package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* JADX INFO: loaded from: classes.dex */
public final class GeoPoint extends GenericJson {

    @Key
    private Double altitude;

    @Key
    private Double latitude;

    @Key
    private Double longitude;

    public Double getAltitude() {
        return this.altitude;
    }

    public GeoPoint setAltitude(Double d2) {
        this.altitude = d2;
        return this;
    }

    public Double getLatitude() {
        return this.latitude;
    }

    public GeoPoint setLatitude(Double d2) {
        this.latitude = d2;
        return this;
    }

    public Double getLongitude() {
        return this.longitude;
    }

    public GeoPoint setLongitude(Double d2) {
        this.longitude = d2;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public GeoPoint set(String str, Object obj) {
        return (GeoPoint) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public GeoPoint clone() {
        return (GeoPoint) super.clone();
    }
}
