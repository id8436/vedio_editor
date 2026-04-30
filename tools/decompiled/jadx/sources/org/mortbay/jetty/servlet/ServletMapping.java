package org.mortbay.jetty.servlet;

import com.adobe.xmp.XMPConst;
import com.behance.sdk.util.BehanceSDKConstants;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class ServletMapping {
    private String[] _pathSpecs;
    private String _servletName;

    public String[] getPathSpecs() {
        return this._pathSpecs;
    }

    public String getServletName() {
        return this._servletName;
    }

    public void setPathSpecs(String[] strArr) {
        this._pathSpecs = strArr;
    }

    public void setPathSpec(String str) {
        this._pathSpecs = new String[]{str};
    }

    public void setServletName(String str) {
        this._servletName = str;
    }

    public String toString() {
        return new StringBuffer().append("(S=").append(this._servletName).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR).append(this._pathSpecs == null ? XMPConst.ARRAY_ITEM_NAME : Arrays.asList(this._pathSpecs).toString()).append(")").toString();
    }
}
