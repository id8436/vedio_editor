package com.google.api.client.json.rpc2;

import com.google.api.client.util.Beta;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.Key;
import com.google.gdata.client.appsforyourdomain.adminsettings.AdminSettingsConstants;

/* JADX INFO: loaded from: classes.dex */
@Beta
public class JsonRpcRequest extends GenericData {

    @Key
    private Object id;

    @Key
    private final String jsonrpc = AdminSettingsConstants.SERVICE_VERSION;

    @Key
    private String method;

    @Key
    private Object params;

    public String getVersion() {
        return AdminSettingsConstants.SERVICE_VERSION;
    }

    public Object getId() {
        return this.id;
    }

    public void setId(Object obj) {
        this.id = obj;
    }

    public String getMethod() {
        return this.method;
    }

    public void setMethod(String str) {
        this.method = str;
    }

    public Object getParameters() {
        return this.params;
    }

    public void setParameters(Object obj) {
        this.params = obj;
    }

    @Override // com.google.api.client.util.GenericData
    public JsonRpcRequest set(String str, Object obj) {
        return (JsonRpcRequest) super.set(str, obj);
    }

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap
    public JsonRpcRequest clone() {
        return (JsonRpcRequest) super.clone();
    }
}
