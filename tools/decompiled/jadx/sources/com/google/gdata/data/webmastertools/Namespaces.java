package com.google.gdata.data.webmastertools;

import com.google.gdata.data.Category;
import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes3.dex */
public final class Namespaces {
    public static final String KIND_MESSAGE = "http://schemas.google.com/webmasters/tools/2007#message";
    public static final String KIND_MESSAGES_FEED = "http://schemas.google.com/webmasters/tools/2007#messages-feed";
    public static final String KIND_SITEMAPS_FEED = "http://schemas.google.com/webmasters/tools/2007#sitemaps-feed";
    public static final String KIND_SITEMAP_MOBILE = "http://schemas.google.com/webmasters/tools/2007#sitemap-mobile";
    public static final String KIND_SITEMAP_NEWS = "http://schemas.google.com/webmasters/tools/2007#sitemap-news";
    public static final String KIND_SITEMAP_REGULAR = "http://schemas.google.com/webmasters/tools/2007#sitemap-regular";
    public static final String KIND_SITES_FEED = "http://schemas.google.com/webmasters/tools/2007#sites-feed";
    public static final String KIND_SITE_INFO = "http://schemas.google.com/webmasters/tools/2007#site-info";
    public static final String WT_PREFIX = "http://schemas.google.com/webmasters/tools/2007#";
    public static final String WT_ALIAS = "wt";
    public static final String WT = "http://schemas.google.com/webmasters/tools/2007";
    public static final XmlNamespace WT_NAMESPACE = new XmlNamespace(WT_ALIAS, WT);
    public static final XmlNamespace WT_NS = WT_NAMESPACE;

    public static Category createCategory(String str) {
        return new Category("http://schemas.google.com/g/2005#kind", str);
    }
}
