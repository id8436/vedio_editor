package com.adobe.creativesdk.foundation.adobeinternal.remix;

/* JADX INFO: loaded from: classes.dex */
public class AdobeRemixData {
    public static final String AdobeRemixLicenseAttribution = "by";
    public static final String AdobeRemixLicenseNoDerivatives = "by-nd";
    public static final String AdobeRemixLicenseNonCommercial = "by-nc";
    public static final String AdobeRemixLicenseNonCommercialNoDerivatives = "by-nc-nd";
    public static final String AdobeRemixLicenseNonCommercialShareAlike = "by-nc-sa";
    public static final String AdobeRemixLicenseShareAlike = "by-sa";
    public String attributionName;
    public String attributionURL;
    public String licenseType;
    public String manageUIURL;
    public String originURL;

    public AdobeRemixData(String str, String str2, String str3, String str4, String str5) {
        this.originURL = str;
        this.manageUIURL = str2;
        this.licenseType = str3;
        this.attributionName = str5;
        this.attributionURL = str4;
    }
}
