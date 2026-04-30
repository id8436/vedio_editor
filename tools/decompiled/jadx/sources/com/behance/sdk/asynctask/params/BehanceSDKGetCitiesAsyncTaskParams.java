package com.behance.sdk.asynctask.params;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetCitiesAsyncTaskParams extends BehanceSDKAbstractTaskParams {
    private String citySearchStr;
    private String countryId;
    private String stateId;

    public String getCountryId() {
        return this.countryId;
    }

    public void setCountryId(String str) {
        this.countryId = str;
    }

    public String getStateId() {
        return this.stateId;
    }

    public void setStateId(String str) {
        this.stateId = str;
    }

    public String getCitySearchStr() {
        return this.citySearchStr;
    }

    public void setCitySearchStr(String str) {
        this.citySearchStr = str;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BehanceSDKGetCitiesAsyncTaskParams)) {
            return false;
        }
        BehanceSDKGetCitiesAsyncTaskParams behanceSDKGetCitiesAsyncTaskParams = (BehanceSDKGetCitiesAsyncTaskParams) obj;
        if (getCountryId() == null && behanceSDKGetCitiesAsyncTaskParams.getCountryId() != null) {
            return false;
        }
        if (getCountryId() != null && !getCountryId().equals(behanceSDKGetCitiesAsyncTaskParams.getCountryId())) {
            return false;
        }
        if (getStateId() == null && behanceSDKGetCitiesAsyncTaskParams.getStateId() != null) {
            return false;
        }
        if (getStateId() != null && !getStateId().equals(behanceSDKGetCitiesAsyncTaskParams.getStateId())) {
            return false;
        }
        if (getCitySearchStr() != null || behanceSDKGetCitiesAsyncTaskParams.getCitySearchStr() == null) {
            return getCitySearchStr() == null || getCitySearchStr().equals(behanceSDKGetCitiesAsyncTaskParams.getCitySearchStr());
        }
        return false;
    }
}
