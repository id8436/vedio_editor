package com.google.api.gbase.client;

import com.google.gdata.client.Query;
import java.net.URL;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GoogleBaseQuery extends Query {
    private static final String BQ_PARAMETER = "bq";
    private static final String CONTENT = "content";
    private static final String CROWD_BY = "crowdby";
    private static final String MAX_VALUES_PARAMETER = "max-values";
    private static final String ORDER_BY = "orderby";
    private static final String REFINE = "refine";
    private static final String SORT_ORDER = "sortorder";

    public GoogleBaseQuery(URL url) {
        super(url);
    }

    public void setGoogleBaseQuery(String str) {
        overwriteCustomParameter(BQ_PARAMETER, str);
    }

    public String getGoogleBaseQuery() {
        return getCustomParameterValue(BQ_PARAMETER);
    }

    private String getCustomParameterValue(String str) {
        List<Query.CustomParameter> customParameters = getCustomParameters(str);
        if (customParameters.isEmpty()) {
            return null;
        }
        return customParameters.get(0).getValue();
    }

    private void overwriteCustomParameter(String str, String str2) {
        List<Query.CustomParameter> customParameters = getCustomParameters();
        Iterator<Query.CustomParameter> it = getCustomParameters(str).iterator();
        while (it.hasNext()) {
            customParameters.remove(it.next());
        }
        if (str2 != null) {
            customParameters.add(new Query.CustomParameter(str, str2));
        }
    }

    public void setMaxValues(Integer num) {
        overwriteCustomParameter(MAX_VALUES_PARAMETER, num == null ? null : num.toString());
    }

    public Integer getMaxValues() {
        String customParameterValue = getCustomParameterValue(MAX_VALUES_PARAMETER);
        if (customParameterValue == null) {
            return null;
        }
        return new Integer(customParameterValue);
    }

    public void setRefine(boolean z) {
        overwriteCustomParameter(REFINE, z ? "true" : "false");
    }

    public boolean getRefine() {
        return "true".equals(getCustomParameterValue(REFINE));
    }

    public void setContent(String str) {
        overwriteCustomParameter(CONTENT, str);
    }

    public String getContent() {
        return getCustomParameterValue(CONTENT);
    }

    public void setOrderBy(String str) {
        overwriteCustomParameter("orderby", str);
    }

    public void setCrowdingBy(String str) {
        overwriteCustomParameter(CROWD_BY, str);
    }

    public String getOrderBy() {
        return getCustomParameterValue("orderby");
    }

    public String getCrowdBy() {
        return getCustomParameterValue(CROWD_BY);
    }

    public void setAscendingOrder(boolean z) {
        overwriteCustomParameter(SORT_ORDER, z ? "ascending" : "descending");
    }

    public boolean isAscendingOrder() {
        return "ascending".equals(getCustomParameterValue(SORT_ORDER));
    }
}
