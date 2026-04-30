package com.google.gdata.client.finance;

import com.google.gdata.client.Query;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class PositionQuery extends Query {
    private Boolean includeReturns;
    private Boolean inlineTransactions;

    public PositionQuery(URL url) {
        super(url);
        this.includeReturns = false;
        this.inlineTransactions = false;
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

    public Boolean getInlineTransactions() {
        return this.inlineTransactions;
    }

    public void setInlineTransactions(Boolean bool) {
        if (bool == null) {
            bool = false;
        }
        if (!this.inlineTransactions.equals(bool)) {
            this.inlineTransactions = bool;
            setStringCustomParameter("transactions", !bool.booleanValue() ? null : bool.toString());
        }
    }
}
