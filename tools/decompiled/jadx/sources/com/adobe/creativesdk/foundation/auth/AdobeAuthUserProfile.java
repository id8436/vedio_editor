package com.adobe.creativesdk.foundation.auth;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAuthUserProfile implements Serializable {
    protected String adobeID = null;
    protected String displayName = null;
    protected String firstName = null;
    protected String lastName = null;
    protected String email = null;
    protected boolean emailVerified = false;
    protected String description = null;
    protected String countryCode = null;
    protected String accountType = null;
    protected LicenseStatus licenseStatus = LicenseStatus.AdobeAuthUserProfileLicenseStatusUnknown;
    protected boolean isEnterprise = false;

    public enum LicenseStatus {
        AdobeAuthUserProfileLicenseStatusUnknown,
        AdobeAuthUserProfileLicenseStatusPaid,
        AdobeAuthUserProfileLicenseStatusFree,
        AdobeAuthUserProfileLicenseStatusTrial
    }

    public String getAdobeID() {
        return this.adobeID;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public String getLastName() {
        return this.lastName;
    }

    public String getEmail() {
        return this.email;
    }

    public boolean isEmailVerified() {
        return this.emailVerified;
    }

    public String getDescription() {
        return this.description;
    }

    public boolean isEnterpriseUser() {
        return this.isEnterprise;
    }

    public String getCountryCode() {
        return this.countryCode;
    }

    public String getAccountType() {
        return this.accountType;
    }

    public LicenseStatus getLicenseStatus() {
        return this.licenseStatus;
    }
}
