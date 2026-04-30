package org.apache.http.client.methods;

import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.client.utils.CloneUtilsHC4;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: loaded from: classes3.dex */
@NotThreadSafe
public abstract class HttpEntityEnclosingRequestBaseHC4 extends HttpRequestBaseHC4 implements HttpEntityEnclosingRequest {
    private HttpEntity entity;

    @Override // org.apache.http.HttpEntityEnclosingRequest
    public HttpEntity getEntity() {
        return this.entity;
    }

    @Override // org.apache.http.HttpEntityEnclosingRequest
    public void setEntity(HttpEntity httpEntity) {
        this.entity = httpEntity;
    }

    @Override // org.apache.http.HttpEntityEnclosingRequest
    public boolean expectContinue() {
        Header firstHeader = getFirstHeader("Expect");
        return firstHeader != null && HttpHeaderValues.CONTINUE.equalsIgnoreCase(firstHeader.getValue());
    }

    @Override // org.apache.http.client.methods.AbstractExecutionAwareRequest
    public Object clone() throws CloneNotSupportedException {
        HttpEntityEnclosingRequestBaseHC4 httpEntityEnclosingRequestBaseHC4 = (HttpEntityEnclosingRequestBaseHC4) super.clone();
        if (this.entity != null) {
            httpEntityEnclosingRequestBaseHC4.entity = (HttpEntity) CloneUtilsHC4.cloneObject(this.entity);
        }
        return httpEntityEnclosingRequestBaseHC4;
    }
}
