package org.mortbay.jetty.servlet;

import com.adobe.xmp.XMPConst;
import com.behance.sdk.util.BehanceSDKConstants;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class FilterMapping {
    private int _dispatches = 1;
    private String _filterName;
    private transient FilterHolder _holder;
    private String[] _pathSpecs;
    private String[] _servletNames;

    boolean appliesTo(String str, int i) {
        if (((this._dispatches & i) == 0 && (this._dispatches != 0 || i != 1)) || this._pathSpecs == null) {
            return false;
        }
        for (int i2 = 0; i2 < this._pathSpecs.length; i2++) {
            if (this._pathSpecs[i2] != null && PathMap.match(this._pathSpecs[i2], str, true)) {
                return true;
            }
        }
        return false;
    }

    boolean appliesTo(int i) {
        if ((this._dispatches & i) == 0) {
            return this._dispatches == 0 && i == 1;
        }
        return true;
    }

    public int getDispatches() {
        return this._dispatches;
    }

    public String getFilterName() {
        return this._filterName;
    }

    FilterHolder getFilterHolder() {
        return this._holder;
    }

    public String[] getPathSpecs() {
        return this._pathSpecs;
    }

    public void setDispatches(int i) {
        this._dispatches = i;
    }

    public void setFilterName(String str) {
        this._filterName = str;
    }

    void setFilterHolder(FilterHolder filterHolder) {
        this._holder = filterHolder;
    }

    public void setPathSpecs(String[] strArr) {
        this._pathSpecs = strArr;
    }

    public void setPathSpec(String str) {
        this._pathSpecs = new String[]{str};
    }

    public String[] getServletNames() {
        return this._servletNames;
    }

    public void setServletNames(String[] strArr) {
        this._servletNames = strArr;
    }

    public void setServletName(String str) {
        this._servletNames = new String[]{str};
    }

    public String toString() {
        return new StringBuffer().append("(F=").append(this._filterName).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR).append(this._pathSpecs == null ? XMPConst.ARRAY_ITEM_NAME : Arrays.asList(this._pathSpecs).toString()).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR).append(this._servletNames == null ? XMPConst.ARRAY_ITEM_NAME : Arrays.asList(this._servletNames).toString()).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR).append(this._dispatches).append(")").toString();
    }
}
