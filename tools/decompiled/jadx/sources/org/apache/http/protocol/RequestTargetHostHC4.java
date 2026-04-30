package org.apache.http.protocol;

import org.apache.http.HttpRequestInterceptor;
import org.apache.http.annotation.Immutable;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class RequestTargetHostHC4 implements HttpRequestInterceptor {
    /* JADX WARN: Removed duplicated region for block: B:23:0x007b  */
    @Override // org.apache.http.HttpRequestInterceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void process(org.apache.http.HttpRequest r5, org.apache.http.protocol.HttpContext r6) throws org.apache.http.HttpException, java.io.IOException {
        /*
            r4 = this;
            java.lang.String r0 = "HTTP request"
            org.apache.http.util.Args.notNull(r5, r0)
            org.apache.http.protocol.HttpCoreContext r0 = org.apache.http.protocol.HttpCoreContext.adapt(r6)
            org.apache.http.RequestLine r1 = r5.getRequestLine()
            org.apache.http.ProtocolVersion r3 = r1.getProtocolVersion()
            org.apache.http.RequestLine r1 = r5.getRequestLine()
            java.lang.String r1 = r1.getMethod()
            java.lang.String r2 = "CONNECT"
            boolean r1 = r1.equalsIgnoreCase(r2)
            if (r1 == 0) goto L2c
            org.apache.http.HttpVersion r1 = org.apache.http.HttpVersion.HTTP_1_0
            boolean r1 = r3.lessEquals(r1)
            if (r1 == 0) goto L2c
        L2b:
            return
        L2c:
            java.lang.String r1 = "Host"
            boolean r1 = r5.containsHeader(r1)
            if (r1 != 0) goto L2b
            org.apache.http.HttpHost r2 = r0.getTargetHost()
            if (r2 != 0) goto L6f
            org.apache.http.HttpConnection r1 = r0.getConnection()
            boolean r0 = r1 instanceof org.apache.http.HttpInetConnection
            if (r0 == 0) goto L7b
            r0 = r1
            org.apache.http.HttpInetConnection r0 = (org.apache.http.HttpInetConnection) r0
            java.net.InetAddress r0 = r0.getRemoteAddress()
            org.apache.http.HttpInetConnection r1 = (org.apache.http.HttpInetConnection) r1
            int r1 = r1.getRemotePort()
            if (r0 == 0) goto L7b
            org.apache.http.HttpHost r2 = new org.apache.http.HttpHost
            java.lang.String r0 = r0.getHostName()
            r2.<init>(r0, r1)
            r0 = r2
        L5c:
            if (r0 != 0) goto L70
            org.apache.http.HttpVersion r0 = org.apache.http.HttpVersion.HTTP_1_0
            boolean r0 = r3.lessEquals(r0)
            if (r0 != 0) goto L2b
            org.apache.http.ProtocolException r0 = new org.apache.http.ProtocolException
            java.lang.String r1 = "Target host missing"
            r0.<init>(r1)
            throw r0
        L6f:
            r0 = r2
        L70:
            java.lang.String r1 = "Host"
            java.lang.String r0 = r0.toHostString()
            r5.addHeader(r1, r0)
            goto L2b
        L7b:
            r0 = r2
            goto L5c
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.protocol.RequestTargetHostHC4.process(org.apache.http.HttpRequest, org.apache.http.protocol.HttpContext):void");
    }
}
