package com.google.gdata.data.health;

import com.google.gdata.data.health.HealthCategory;
import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes3.dex */
public class HealthNamespace {
    public static final String CCR_PREFIX = "urn:astm-org:CCR#";
    public static final String H9KINDS_PREFIX = "http://schemas.google.com/health/kinds#";
    public static final String H9M_PREFIX = "http://schemas.google.com/health/metadata#";
    public static final String H9_PREFIX = "http://schemas.google.com/health/data#";
    public static final String REL_COMPLETE_URL = "http://schemas.google.com/health/data#complete";
    public static final String CCR_ALIAS = "ccr";
    public static final String CCR = "urn:astm-org:CCR";
    public static final XmlNamespace CCR_NS = new XmlNamespace(CCR_ALIAS, CCR);
    public static final String H9M_ALIAS = "h9m";
    public static final String H9M = "http://schemas.google.com/health/metadata";
    public static final XmlNamespace H9M_NS = new XmlNamespace(H9M_ALIAS, H9M);
    public static final String H9_ALIAS = "h9";
    public static final String H9 = "http://schemas.google.com/health/data";
    public static final XmlNamespace H9_NS = new XmlNamespace(H9_ALIAS, H9);
    public static final String H9KINDS_ALIAS = "h9kinds";
    public static final String H9KINDS = "http://schemas.google.com/health/kinds";
    public static final XmlNamespace H9KINDS_NS = new XmlNamespace(H9KINDS_ALIAS, H9KINDS);

    private HealthNamespace() {
    }

    public enum CategoryScheme {
        ccr(HealthCategory.Scheme.CCR_SCHEME),
        item(HealthCategory.Scheme.ITEM_SCHEME),
        code("http://schemas.google.com/health/code");

        private final String iri;

        CategoryScheme(String str) {
            this.iri = str;
        }

        public String getIri() {
            return this.iri;
        }
    }
}
