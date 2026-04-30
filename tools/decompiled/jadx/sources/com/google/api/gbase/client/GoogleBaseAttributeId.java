package com.google.api.gbase.client;

/* JADX INFO: loaded from: classes3.dex */
public class GoogleBaseAttributeId {
    private final String name;
    private final GoogleBaseAttributeType type;

    public GoogleBaseAttributeId(String str, GoogleBaseAttributeType googleBaseAttributeType) {
        if (str == null) {
            throw new NullPointerException("attribute 'name' is required");
        }
        this.name = str;
        this.type = googleBaseAttributeType;
    }

    public String getName() {
        return this.name;
    }

    public GoogleBaseAttributeType getType() {
        return this.type;
    }

    public String toString() {
        return this.type == null ? this.name : this.name + "(" + this.type + ")";
    }

    public int hashCode() {
        int iHashCode = this.name.hashCode() + 19;
        if (this.type != null) {
            return (iHashCode * 37) + this.type.hashCode();
        }
        return iHashCode;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GoogleBaseAttributeId)) {
            return false;
        }
        GoogleBaseAttributeId googleBaseAttributeId = (GoogleBaseAttributeId) obj;
        if (!this.name.equals(googleBaseAttributeId.name)) {
            return false;
        }
        if (this.type == null) {
            return googleBaseAttributeId.type == null;
        }
        return this.type.equals(googleBaseAttributeId.type);
    }
}
