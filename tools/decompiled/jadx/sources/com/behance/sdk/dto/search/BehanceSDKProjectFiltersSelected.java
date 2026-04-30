package com.behance.sdk.dto.search;

import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import com.behance.sdk.dto.location.BehanceSDKCityDTO;
import com.behance.sdk.dto.location.BehanceSDKCountryDTO;
import com.behance.sdk.dto.location.BehanceSDKStateDTO;
import com.behance.sdk.enums.BehanceSDKProjectsSortOption;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectFiltersSelected implements Serializable {
    private static final long serialVersionUID = 4859623646147143654L;
    private BehanceSDKCityDTO cityDTO;
    private BehanceSDKCountryDTO countryDTO;
    private BehanceSDKCreativeFieldDTO creativeFieldDTO;
    private BehanceSDKProjectsSortOption projectSortOption;
    private String searchString;
    private BehanceSDKStateDTO stateDTO;

    public String getSearchString() {
        return this.searchString;
    }

    public void setSearchString(String str) {
        this.searchString = str;
    }

    public BehanceSDKCreativeFieldDTO getCreativeFieldDTO() {
        return this.creativeFieldDTO;
    }

    public void setCreativeFieldDTO(BehanceSDKCreativeFieldDTO behanceSDKCreativeFieldDTO) {
        this.creativeFieldDTO = behanceSDKCreativeFieldDTO;
    }

    public BehanceSDKCountryDTO getCountryDTO() {
        return this.countryDTO;
    }

    public void setCountryDTO(BehanceSDKCountryDTO behanceSDKCountryDTO) {
        this.countryDTO = behanceSDKCountryDTO;
    }

    public BehanceSDKStateDTO getStateDTO() {
        return this.stateDTO;
    }

    public void setStateDTO(BehanceSDKStateDTO behanceSDKStateDTO) {
        this.stateDTO = behanceSDKStateDTO;
    }

    public BehanceSDKCityDTO getCityDTO() {
        return this.cityDTO;
    }

    public void setCityDTO(BehanceSDKCityDTO behanceSDKCityDTO) {
        this.cityDTO = behanceSDKCityDTO;
    }

    public BehanceSDKProjectsSortOption getSortOption() {
        return this.projectSortOption;
    }

    public void setSortOption(BehanceSDKProjectsSortOption behanceSDKProjectsSortOption) {
        this.projectSortOption = behanceSDKProjectsSortOption;
    }
}
