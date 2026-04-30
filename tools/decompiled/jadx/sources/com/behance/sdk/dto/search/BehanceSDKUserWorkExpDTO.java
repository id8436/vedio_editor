package com.behance.sdk.dto.search;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKUserWorkExpDTO implements Serializable {
    private static final long serialVersionUID = 8511041636374303495L;
    private String endDate;
    private String location;
    private String organization;
    private String position;
    private String startDate;

    public String getPosition() {
        return this.position;
    }

    public void setPosition(String str) {
        this.position = str;
    }

    public String getStartDate() {
        return this.startDate;
    }

    public void setStartDate(String str) {
        this.startDate = str;
    }

    public String getEndDate() {
        return this.endDate;
    }

    public void setEndDate(String str) {
        this.endDate = str;
    }

    public String getOrganization() {
        return this.organization;
    }

    public void setOrganization(String str) {
        this.organization = str;
    }

    public String getLocation() {
        return this.location;
    }

    public void setLocation(String str) {
        this.location = str;
    }
}
