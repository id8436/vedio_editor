package org.apache.http.impl.client;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.entity.HttpEntityWrapperHC4;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@NotThreadSafe
public class EntityEnclosingRequestWrapperHC4 extends RequestWrapper implements HttpEntityEnclosingRequest {
    private boolean consumed;
    private HttpEntity entity;

    public EntityEnclosingRequestWrapperHC4(HttpEntityEnclosingRequest httpEntityEnclosingRequest) throws ProtocolException {
        super(httpEntityEnclosingRequest);
        setEntity(httpEntityEnclosingRequest.getEntity());
    }

    @Override // org.apache.http.HttpEntityEnclosingRequest
    public HttpEntity getEntity() {
        return this.entity;
    }

    @Override // org.apache.http.HttpEntityEnclosingRequest
    public void setEntity(HttpEntity httpEntity) {
        this.entity = httpEntity != null ? new EntityWrapper(httpEntity) : null;
        this.consumed = false;
    }

    @Override // org.apache.http.HttpEntityEnclosingRequest
    public boolean expectContinue() {
        Header firstHeader = getFirstHeader("Expect");
        return firstHeader != null && HttpHeaderValues.CONTINUE.equalsIgnoreCase(firstHeader.getValue());
    }

    @Override // org.apache.http.impl.client.RequestWrapper
    public boolean isRepeatable() {
        return this.entity == null || this.entity.isRepeatable() || !this.consumed;
    }

    /* JADX INFO: loaded from: classes3.dex */
    class EntityWrapper extends HttpEntityWrapperHC4 {
        EntityWrapper(HttpEntity httpEntity) {
            super(httpEntity);
        }

        @Override // org.apache.http.entity.HttpEntityWrapperHC4, org.apache.http.HttpEntity
        public void consumeContent() throws IOException {
            EntityEnclosingRequestWrapperHC4.this.consumed = true;
            super.consumeContent();
        }

        @Override // org.apache.http.entity.HttpEntityWrapperHC4, org.apache.http.HttpEntity
        public InputStream getContent() throws IOException {
            EntityEnclosingRequestWrapperHC4.this.consumed = true;
            return super.getContent();
        }

        @Override // org.apache.http.entity.HttpEntityWrapperHC4, org.apache.http.HttpEntity
        public void writeTo(OutputStream outputStream) throws IOException {
            EntityEnclosingRequestWrapperHC4.this.consumed = true;
            super.writeTo(outputStream);
        }
    }
}
