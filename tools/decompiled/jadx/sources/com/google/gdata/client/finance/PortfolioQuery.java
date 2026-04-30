package com.google.gdata.client.finance;

import com.google.gdata.client.Query;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class PortfolioQuery extends Query {
    private Boolean includeReturns;
    private Boolean inlinePositions;

    public PortfolioQuery(URL url) {
        super(url);
        this.inlinePositions = false;
        this.includeReturns = false;
    }

    public Boolean getInlinePositions() {
        return this.inlinePositions;
    }

    public void setInlinePositions(Boolean bool) {
        if (bool == null) {
            bool = false;
        }
        if (!this.inlinePositions.equals(bool)) {
            this.inlinePositions = bool;
            setStringCustomParameter("positions", !bool.booleanValue() ? null : bool.toString());
        }
    }

    public Boolean getIncludeReturns() {
        return this.includeReturns;
    }

    public void setIncludeReturns(Boolean bool) {
        if (bool == null) {
            bool = false;
        }
        if (!this.includeReturns.equals(bool)) {
            this.includeReturns = bool;
            setStringCustomParameter("returns", !bool.booleanValue() ? null : bool.toString());
        }
    }
}
