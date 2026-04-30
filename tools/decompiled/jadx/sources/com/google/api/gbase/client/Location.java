package com.google.api.gbase.client;

/* JADX INFO: loaded from: classes3.dex */
public class Location {
    private String address;
    private boolean hasCoordinates;
    private float latitude;
    private float longitude;

    public Location(String str) {
        setAddress(str);
    }

    public Location(String str, float f2, float f3) {
        setAddress(str);
        setLatitude(f2);
        setLongitude(f3);
    }

    public boolean hasCoordinates() {
        return this.hasCoordinates;
    }

    public void clearCoordinates() {
        this.hasCoordinates = false;
        this.latitude = 0.0f;
        this.longitude = 0.0f;
    }

    public float getLatitude() {
        assertHasCoordinates();
        return this.latitude;
    }

    public float getLongitude() {
        assertHasCoordinates();
        return this.longitude;
    }

    private void assertHasCoordinates() {
        if (!this.hasCoordinates) {
            throw new IllegalStateException("No coordinates have been defined. (Check with hasCoordinates() first)");
        }
    }

    public void setLongitude(float f2) {
        this.hasCoordinates = true;
        this.longitude = f2;
    }

    public void setLatitude(float f2) {
        this.hasCoordinates = true;
        this.latitude = f2;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String str) {
        if (str == null) {
            throw new NullPointerException("address cannot be null");
        }
        this.address = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Location)) {
            return false;
        }
        Location location = (Location) obj;
        if (this.hasCoordinates != location.hasCoordinates) {
            return false;
        }
        if (!this.hasCoordinates || (Float.compare(location.latitude, this.latitude) == 0 && Float.compare(location.longitude, this.longitude) == 0)) {
            return this.address.equals(location.address);
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = this.address.hashCode();
        if (this.hasCoordinates) {
            return (((iHashCode * 29) + Float.floatToIntBits(this.latitude)) * 29) + Float.floatToIntBits(this.longitude);
        }
        return iHashCode;
    }
}
