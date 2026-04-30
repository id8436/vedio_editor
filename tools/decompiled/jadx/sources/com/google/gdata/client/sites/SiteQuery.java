package com.google.gdata.client.sites;

import com.google.gdata.client.Query;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class SiteQuery extends Query {
    private String includeAllSites;
    private Boolean withMappings;

    public SiteQuery(URL url) {
        super(url);
    }

    public String getIncludeAllSites() {
        return this.includeAllSites;
    }

    public void setIncludeAllSites(String str) {
        if (this.includeAllSites == null) {
            if (str == null) {
                return;
            }
        } else if (this.includeAllSites.equals(str)) {
            return;
        }
        this.includeAllSites = str;
        setStringCustomParameter("include-all-sites", str);
    }

    public Boolean getWithMappings() {
        return this.withMappings;
    }

    public void setWithMappings(Boolean bool) {
        if (this.withMappings == null) {
            if (bool == null) {
                return;
            }
        } else if (this.withMappings.equals(bool)) {
            return;
        }
        this.withMappings = bool;
        setStringCustomParameter("with-mappings", bool == null ? null : bool.toString());
    }
}
