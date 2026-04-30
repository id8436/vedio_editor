package com.google.gdata.util;

import com.google.gdata.client.Service;
import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes.dex */
public final class Namespaces {

    @Deprecated
    public static final String atomPub = "http://purl.org/atom/app#";
    public static final String atomPubDraft = "http://purl.org/atom/app#";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f3182g = "http://schemas.google.com/g/2005";
    public static final String gAlias = "gd";
    public static final String gKind = "http://schemas.google.com/g/2005#kind";
    public static final String gPrefix = "http://schemas.google.com/g/2005#";

    @Deprecated
    public static final String openSearch = "http://a9.com/-/spec/opensearchrss/1.0/";
    public static final String openSearch1_0 = "http://a9.com/-/spec/opensearchrss/1.0/";
    public static final String xml = "http://www.w3.org/XML/1998/namespace";
    public static final XmlNamespace xmlNs = new XmlNamespace("xml", "http://www.w3.org/XML/1998/namespace");
    public static final String atom = "http://www.w3.org/2005/Atom";
    public static final XmlNamespace atomNs = new XmlNamespace("atom", atom);
    public static final XmlNamespace atomPubDraftNs = new XmlNamespace("app", "http://purl.org/atom/app#");
    public static final String atomPubStandard = "http://www.w3.org/2007/app";
    public static final XmlNamespace atomPubStandardNs = new XmlNamespace("app", atomPubStandard);

    @Deprecated
    public static final XmlNamespace atomPubNs = atomPubDraftNs;
    public static final XmlNamespace rssNs = null;
    public static final XmlNamespace openSearch1_0Ns = new XmlNamespace("openSearch", "http://a9.com/-/spec/opensearchrss/1.0/");
    public static final String openSearch1_1 = "http://a9.com/-/spec/opensearch/1.1/";
    public static final XmlNamespace openSearch1_1Ns = new XmlNamespace("openSearch", openSearch1_1);

    @Deprecated
    public static final XmlNamespace openSearchNs = openSearch1_0Ns;

    @Deprecated
    public static final String openSearchDesc = "http://a9.com/-/spec/opensearchdescription/1.0/";

    @Deprecated
    public static final XmlNamespace openSearchDescNs = new XmlNamespace("openSearchDesc", openSearchDesc);

    @Deprecated
    public static final String openSearchDesc1_1 = "http://a9.com/-/spec/opensearchdescription/1.1/";

    @Deprecated
    public static final XmlNamespace openSearchDesc1_1Ns = new XmlNamespace("openSearchDesc", openSearchDesc1_1);
    public static final String xhtml = "http://www.w3.org/1999/xhtml";
    public static final XmlNamespace xhtmlNs = new XmlNamespace("xh", xhtml);
    public static final String gdataConfig = "http://schemas.google.com/gdata/config/2005";
    public static final XmlNamespace gdataConfigNs = new XmlNamespace("gc", gdataConfig);
    public static final XmlNamespace gNs = new XmlNamespace("gd", "http://schemas.google.com/g/2005");
    public static final String gr = "http://schemas.google.com/g/2005#runtime";
    public static final XmlNamespace grNs = new XmlNamespace("gr", gr);
    public static final String batchAlias = "batch";
    public static final String batch = "http://schemas.google.com/gdata/batch";
    public static final XmlNamespace batchNs = new XmlNamespace(batchAlias, batch);

    private Namespaces() {
    }

    public static final XmlNamespace getAtomPubNs() {
        return Service.getVersion().isCompatible(Service.Versions.V1) ? atomPubNs : atomPubStandardNs;
    }

    public static final XmlNamespace getOpenSearchNs() {
        return Service.getVersion().isCompatible(Service.Versions.V1) ? openSearchNs : openSearch1_1Ns;
    }

    public static final XmlNamespace getOpenSearchDescNs() {
        return Service.getVersion().isCompatible(Service.Versions.V1) ? openSearchDescNs : openSearchDesc1_1Ns;
    }

    public static String inflate(String str, String str2) {
        return (str == null || "".equals(str) || str.contains("://")) ? str : str2 + str;
    }

    public static String inflate(String str) {
        return inflate(str, "http://schemas.google.com/g/2005#");
    }

    public static String deflate(String str, String str2) {
        return (str != null && str.startsWith(str2)) ? str.substring(str2.length()) : str;
    }

    public static String deflate(String str) {
        return deflate(str, "http://schemas.google.com/g/2005#");
    }
}
