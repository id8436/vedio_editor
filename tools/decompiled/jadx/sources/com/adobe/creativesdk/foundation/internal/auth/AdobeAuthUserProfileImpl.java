package com.adobe.creativesdk.foundation.internal.auth;

import android.text.TextUtils;
import com.adobe.creativesdk.foundation.auth.AdobeAuthUserProfile;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAuthUserProfileImpl extends AdobeAuthUserProfile {
    public void setAdobeID(String str) {
        this.adobeID = str;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public void setFirstName(String str) {
        this.firstName = str;
    }

    public void setLastName(String str) {
        this.lastName = str;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setEmailVerified(boolean z) {
        this.emailVerified = z;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setEnterprise(boolean z) {
        this.isEnterprise = z;
    }

    public void setCountrycode(String str) {
        this.countryCode = str;
    }

    public void setAccountType(String str) {
        this.accountType = str;
    }

    public void setLicenseStatus(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (str.equalsIgnoreCase("PAID")) {
                this.licenseStatus = AdobeAuthUserProfile.LicenseStatus.AdobeAuthUserProfileLicenseStatusPaid;
                return;
            }
            if (str.equalsIgnoreCase("TRIAL")) {
                this.licenseStatus = AdobeAuthUserProfile.LicenseStatus.AdobeAuthUserProfileLicenseStatusTrial;
            } else if (str.equalsIgnoreCase("FREE")) {
                this.licenseStatus = AdobeAuthUserProfile.LicenseStatus.AdobeAuthUserProfileLicenseStatusFree;
            } else {
                this.licenseStatus = AdobeAuthUserProfile.LicenseStatus.AdobeAuthUserProfileLicenseStatusUnknown;
            }
        }
    }
}
