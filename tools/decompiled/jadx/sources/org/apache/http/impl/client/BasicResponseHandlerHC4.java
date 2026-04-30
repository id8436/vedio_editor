package org.apache.http.impl.client;

import java.io.IOException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.HttpResponseException;
import org.apache.http.client.ResponseHandler;
import org.apache.http.util.EntityUtilsHC4;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class BasicResponseHandlerHC4 implements ResponseHandler<String> {
    @Override // org.apache.http.client.ResponseHandler
    public String handleResponse(HttpResponse httpResponse) throws IOException {
        StatusLine statusLine = httpResponse.getStatusLine();
        HttpEntity entity = httpResponse.getEntity();
        if (statusLine.getStatusCode() >= 300) {
            EntityUtilsHC4.consume(entity);
            throw new HttpResponseException(statusLine.getStatusCode(), statusLine.getReasonPhrase());
        }
        if (entity == null) {
            return null;
        }
        return EntityUtilsHC4.toString(entity);
    }
}
