package com.adobe.mobile;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class TargetLocationRequest {
    public static final String TARGET_PARAMETER_CATEGORY_ID = "categoryId";
    public static final String TARGET_PARAMETER_MBOX_3RDPARTY_ID = "mbox3rdPartyId";
    public static final String TARGET_PARAMETER_MBOX_HOST = "mboxHost";
    public static final String TARGET_PARAMETER_MBOX_PAGE_VALUE = "mboxPageValue";
    public static final String TARGET_PARAMETER_MBOX_PC = "mboxPC";
    public static final String TARGET_PARAMETER_MBOX_SESSION_ID = "mboxSession";
    public static final String TARGET_PARAMETER_ORDER_ID = "orderId";
    public static final String TARGET_PARAMETER_ORDER_TOTAL = "orderTotal";
    public static final String TARGET_PARAMETER_PRODUCT_PURCHASE_ID = "productPurchasedId";
    public String defaultContent;
    public String name;
    public HashMap<String, Object> parameters;

    protected TargetLocationRequest(String str, String str2, Map<String, Object> map) {
        this.name = str;
        this.defaultContent = str2;
        this.parameters = map != null ? new HashMap<>(map) : new HashMap<>();
    }

    protected static TargetLocationRequest createRequestWithOrderConfirm(String str, String str2, String str3, String str4, Map<String, Object> map) {
        TargetLocationRequest targetLocationRequest = new TargetLocationRequest(str, "none", map);
        if (str2 != null) {
            targetLocationRequest.parameters.put(TARGET_PARAMETER_ORDER_ID, str2);
        }
        if (str3 != null) {
            targetLocationRequest.parameters.put(TARGET_PARAMETER_ORDER_TOTAL, str3);
        }
        if (str4 != null) {
            targetLocationRequest.parameters.put(TARGET_PARAMETER_PRODUCT_PURCHASE_ID, str4);
        }
        return targetLocationRequest;
    }
}
