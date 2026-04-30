package com.adobe.mobile;

import com.adobe.mobile.VisitorID;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class Visitor {
    public static String getMarketingCloudId() {
        return VisitorIDService.sharedInstance().getMarketingCloudID();
    }

    public static void syncIdentifier(String str, String str2, VisitorID.VisitorIDAuthenticationState visitorIDAuthenticationState) {
        if (str == null || str.length() == 0) {
            StaticMethods.logWarningFormat("ID Service - Unable to sync VisitorID with id:%s, idType was nil/empty.", str2);
            return;
        }
        HashMap map = new HashMap();
        map.put(str, str2);
        VisitorIDService.sharedInstance().idSync(map, visitorIDAuthenticationState);
    }

    public static void syncIdentifiers(Map<String, String> map) {
        VisitorIDService.sharedInstance().idSync(map);
    }

    public static void syncIdentifiers(Map<String, String> map, VisitorID.VisitorIDAuthenticationState visitorIDAuthenticationState) {
        VisitorIDService.sharedInstance().idSync(map, visitorIDAuthenticationState);
    }

    public static List<VisitorID> getIdentifiers() {
        return VisitorIDService.sharedInstance().getIdentifiers();
    }
}
