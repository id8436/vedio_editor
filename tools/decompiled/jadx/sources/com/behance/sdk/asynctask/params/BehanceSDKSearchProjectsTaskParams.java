package com.behance.sdk.asynctask.params;

import com.behance.sdk.enums.BehanceSDKProjectsSortOption;
import com.behance.sdk.enums.BehanceSDKProjectsTimeSpan;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKSearchProjectsTaskParams extends BehanceSDKAbstractTaskParams {
    public static final int DEFAULT_PAGE_SIZE = 12;
    private String city;
    private String country;
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

    public String getFieldId() {
        return this.fieldId;
    }

    public void setFieldId(String str) {
        this.fieldId = str;
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

    public int getPageSize() {
        if (this.pageSize > 0) {
            return this.pageSize;
        }
        return 12;
    }

    public void setPageSize(int i) {
        this.pageSize = i;
    }

    public void setSearchString(String str) {
        this.searchString = str;
    }

    public String getSearchString() {
        return this.searchString;
    }

    public void setTags(String str) {
        this.tags = str;
    }

    public String getTags() {
        return this.tags;
    }

    public boolean compareSearchFilters(BehanceSDKSearchProjectsTaskParams behanceSDKSearchProjectsTaskParams) {
        return this.pageNumber == behanceSDKSearchProjectsTaskParams.pageNumber && this.pageSize == behanceSDKSearchProjectsTaskParams.pageSize && (this.searchString == behanceSDKSearchProjectsTaskParams.searchString || (this.searchString != null && this.searchString.equals(behanceSDKSearchProjectsTaskParams.getSearchString())));
    }
}
