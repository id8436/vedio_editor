package com.behance.sdk;

import com.behance.sdk.enums.BehanceSDKProjectsSortOption;
import com.behance.sdk.enums.BehanceSDKProjectsTimeSpan;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKSearchProjectOptions {
    private String city;
    private String country;
    private String field;
    private String fieldId;
    private int pageNumber;
    private int pageSize;
    private String searchString;
    private BehanceSDKProjectsSortOption sortOption;
    private String state;
    private String tags;
    private BehanceSDKProjectsTimeSpan timeSpan;

    public BehanceSDKProjectsSortOption getSortOption() {
        return this.sortOption;
    }

    public void setSortOption(BehanceSDKProjectsSortOption behanceSDKProjectsSortOption) {
        this.sortOption = behanceSDKProjectsSortOption;
    }

    public BehanceSDKProjectsTimeSpan getTimeSpan() {
        return this.timeSpan;
    }

    public void setTimeSpan(BehanceSDKProjectsTimeSpan behanceSDKProjectsTimeSpan) {
        this.timeSpan = behanceSDKProjectsTimeSpan;
    }

    public String getField() {
        return this.field;
    }

    public void setField(String str) {
        this.field = str;
    }

    public String getCountry() {
        return this.country;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String str) {
        this.state = str;
    }

    public String getCity() {
        return this.city;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public int getPageNumber() {
        return this.pageNumber;
    }

    public void setPageNumber(int i) {
        this.pageNumber = i;
    }

    public void setSearchString(String str) {
        this.searchString = str;
    }

    public String getSearchString() {
        return this.searchString;
    }

    public String getTags() {
        return this.tags;
    }

    public void setTags(String str) {
        this.tags = str;
    }

    public String getFieldId() {
        return this.fieldId;
    }

    public void setFieldId(String str) {
        this.fieldId = str;
    }
}
