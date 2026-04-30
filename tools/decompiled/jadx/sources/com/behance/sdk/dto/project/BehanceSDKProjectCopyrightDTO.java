package com.behance.sdk.dto.project;

import com.behance.sdk.R;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectCopyrightDTO implements Serializable {
    private String licenseDescription;
    private String licenseType;

    public String getLicenseType() {
        return this.licenseType;
    }

    public void setLicenseType(String str) {
        this.licenseType = str;
    }

    public String getLicenseDescription() {
        return this.licenseDescription;
    }

    public void setLicenseDescription(String str) {
        this.licenseDescription = str;
    }

    public int getDisplayNameResourceId() {
        if (this.licenseType == null) {
            return -1;
        }
        if (this.licenseType.equalsIgnoreCase("no-use")) {
            return R.string.bsdk_license_no_use_at_all;
        }
        if (this.licenseType.equalsIgnoreCase("cc by")) {
            return R.string.bsdk_license_cc_by;
        }
        if (this.licenseType.equalsIgnoreCase("cc by-sa")) {
            return R.string.bsdk_license_cc_by_sa;
        }
        if (this.licenseType.equalsIgnoreCase("cc by-nd")) {
            return R.string.bsdk_license_cc_by_nd;
        }
        if (this.licenseType.equalsIgnoreCase("cc by-nc")) {
            return R.string.bsdk_license_cc_by_nc;
        }
        if (this.licenseType.equalsIgnoreCase("cc by-nc-sa")) {
            return R.string.bsdk_license_cc_by_nc_sa;
        }
        if (!this.licenseType.equalsIgnoreCase("cc by-nc-nd")) {
            return -1;
        }
        return R.string.bsdk_license_cc_by_nc_nd;
    }
}
