package com.behance.sdk;

import com.behance.sdk.dto.location.BehanceSDKCityDTO;
import com.behance.sdk.dto.location.BehanceSDKCountryDTO;
import com.behance.sdk.dto.location.BehanceSDKStateDTO;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKUserProfile {
    private BehanceSDKCityDTO city;
    private String company;
    private BehanceSDKCountryDTO country;
    private String firstName;
    private String lastName;
    private String occupation;
    private String profileImageUrl;
    private BehanceSDKStateDTO state;
    private String website;

    public String getFirstName() {
        return this.firstName;
    }

    public void setFirstName(String str) {
        this.firstName = str;
    }

    public String getLastName() {
        return this.lastName;
    }

    public void setLastName(String str) {
        this.lastName = str;
    }

    public String getOccupation() {
        return this.occupation;
    }

    public void setOccupation(String str) {
        this.occupation = str;
    }

    public String getCompany() {
        return this.company;
    }

    public void setCompany(String str) {
        this.company = str;
    }

    public void setWebsite(String str) {
        this.website = str;
    }

    public String getWebsite() {
        return this.website;
    }

    public void setProfileImageUrl(String str) {
        this.profileImageUrl = str;
    }

    public String getProfileImageUrl() {
        return this.profileImageUrl;
    }

    public void setCity(BehanceSDKCityDTO behanceSDKCityDTO) {
        this.city = behanceSDKCityDTO;
    }

    public BehanceSDKCityDTO getCity() {
        return this.city;
    }

    public void setCountry(BehanceSDKCountryDTO behanceSDKCountryDTO) {
        this.country = behanceSDKCountryDTO;
    }

    public BehanceSDKCountryDTO getCountry() {
        return this.country;
    }

    public BehanceSDKStateDTO getState() {
        return this.state;
    }

    public void setState(BehanceSDKStateDTO behanceSDKStateDTO) {
        this.state = behanceSDKStateDTO;
    }
}
