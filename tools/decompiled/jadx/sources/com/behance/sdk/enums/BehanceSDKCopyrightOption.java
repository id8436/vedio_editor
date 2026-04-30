package com.behance.sdk.enums;

import android.content.Context;
import com.adobe.creativesdk.foundation.adobeinternal.remix.AdobeRemixData;
import com.behance.sdk.R;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public enum BehanceSDKCopyrightOption {
    BY(AdobeRemixData.AdobeRemixLicenseAttribution),
    BY_SA(AdobeRemixData.AdobeRemixLicenseShareAlike),
    BY_ND(AdobeRemixData.AdobeRemixLicenseNoDerivatives),
    BY_NC(AdobeRemixData.AdobeRemixLicenseNonCommercial),
    BY_NC_SA(AdobeRemixData.AdobeRemixLicenseNonCommercialShareAlike),
    BY_NC_ND(AdobeRemixData.AdobeRemixLicenseNonCommercialNoDerivatives),
    NO_USE("no-use");

    private final String value;

    BehanceSDKCopyrightOption(String str) {
        this.value = str;
    }

    public int getDescription() {
        if (this.value != null) {
            if (this.value.equalsIgnoreCase("no-use")) {
                return R.string.bsdk_copyright_no_license;
            }
            if (this.value.equalsIgnoreCase(AdobeRemixData.AdobeRemixLicenseAttribution)) {
                return R.string.bsdk_copyright_cc_by;
            }
            if (this.value.equalsIgnoreCase(AdobeRemixData.AdobeRemixLicenseShareAlike)) {
                return R.string.bsdk_copyright_cc_by_sa;
            }
            if (this.value.equalsIgnoreCase(AdobeRemixData.AdobeRemixLicenseNoDerivatives)) {
                return R.string.bsdk_copyright_cc_by_nd;
            }
            if (this.value.equalsIgnoreCase(AdobeRemixData.AdobeRemixLicenseNonCommercial)) {
                return R.string.bsdk_copyright_cc_by_nc;
            }
            if (this.value.equalsIgnoreCase(AdobeRemixData.AdobeRemixLicenseNonCommercialShareAlike)) {
                return R.string.bsdk_copyright_cc_by_nc_sa;
            }
            if (this.value.equalsIgnoreCase(AdobeRemixData.AdobeRemixLicenseNonCommercialNoDerivatives)) {
                return R.string.bsdk_copyright_cc_by_nc_nd;
            }
        }
        return -1;
    }

    public String getDescription(Context context) {
        return context.getString(getDescription());
    }

    public String getValue() {
        return this.value;
    }

    public String getCategory(Context context) {
        int i = -1;
        if (this.value.equalsIgnoreCase("no-use")) {
            i = R.string.bsdk_copyright_no_license_header;
        } else if (this.value.equalsIgnoreCase(AdobeRemixData.AdobeRemixLicenseAttribution) || this.value.equalsIgnoreCase(AdobeRemixData.AdobeRemixLicenseShareAlike) || this.value.equalsIgnoreCase(AdobeRemixData.AdobeRemixLicenseNonCommercial) || this.value.equalsIgnoreCase(AdobeRemixData.AdobeRemixLicenseNoDerivatives) || this.value.equalsIgnoreCase(AdobeRemixData.AdobeRemixLicenseNonCommercialShareAlike) || this.value.equalsIgnoreCase(AdobeRemixData.AdobeRemixLicenseNonCommercialNoDerivatives)) {
            i = R.string.bsdk_copyright_creative_commons_header;
        }
        return context.getString(i);
    }

    public static BehanceSDKCopyrightOption getCopyrightOptionFromValue(String str) {
        for (BehanceSDKCopyrightOption behanceSDKCopyrightOption : values()) {
            if (behanceSDKCopyrightOption.getValue().equals(str)) {
                return behanceSDKCopyrightOption;
            }
        }
        return null;
    }

    public static BehanceSDKCopyrightOption getDefaultValue() {
        return BY_NC_ND;
    }

    public static List<BehanceSDKCopyrightOption> getCopyrightOptions(String str, Context context) {
        BehanceSDKCopyrightOption[] behanceSDKCopyrightOptionArrValues = values();
        ArrayList arrayList = new ArrayList();
        for (BehanceSDKCopyrightOption behanceSDKCopyrightOption : behanceSDKCopyrightOptionArrValues) {
            if (behanceSDKCopyrightOption.getCategory(context).equals(str)) {
                arrayList.add(behanceSDKCopyrightOption);
            }
        }
        return arrayList;
    }

    public static Map<String, List<BehanceSDKCopyrightOption>> getAllCopyrightOptions(Context context) {
        List arrayList;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (BehanceSDKCopyrightOption behanceSDKCopyrightOption : values()) {
            String category = behanceSDKCopyrightOption.getCategory(context);
            if (linkedHashMap.containsKey(category)) {
                arrayList = (List) linkedHashMap.get(category);
            } else {
                arrayList = new ArrayList();
                linkedHashMap.put(category, arrayList);
            }
            arrayList.add(behanceSDKCopyrightOption);
        }
        return linkedHashMap;
    }
}
