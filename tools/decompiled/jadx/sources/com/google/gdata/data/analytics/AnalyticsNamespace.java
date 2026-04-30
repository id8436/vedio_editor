package com.google.gdata.data.analytics;

import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes3.dex */
public class AnalyticsNamespace {
    public static final String DXP_PREFIX = "http://schemas.google.com/analytics/2009#";
    public static final String GA_PREFIX = "http://schemas.google.com/ga/2009#";
    public static final String GWO_PREFIX = "http://schemas.google.com/analytics/websiteoptimizer/2009#";
    public static final String DXP_ALIAS = "dxp";
    public static final String DXP = "http://schemas.google.com/analytics/2009";
    public static final XmlNamespace DXP_NS = new XmlNamespace(DXP_ALIAS, DXP);
    public static final String GA_ALIAS = "ga";
    public static final String GA = "http://schemas.google.com/ga/2009";
    public static final XmlNamespace GA_NS = new XmlNamespace(GA_ALIAS, GA);
    public static final String GWO_ALIAS = "gwo";
    public static final String GWO = "http://schemas.google.com/analytics/websiteoptimizer/2009";
    public static final XmlNamespace GWO_NS = new XmlNamespace(GWO_ALIAS, GWO);

    private AnalyticsNamespace() {
    }
}
