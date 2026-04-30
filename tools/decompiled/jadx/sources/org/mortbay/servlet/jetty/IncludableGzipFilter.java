package org.mortbay.servlet.jetty;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.io.UncheckedPrintWriter;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.HttpHeaderValues;
import org.mortbay.servlet.GzipFilter;

/* JADX INFO: loaded from: classes3.dex */
public class IncludableGzipFilter extends GzipFilter {
    boolean _uncheckedPrintWriter = false;

    @Override // org.mortbay.servlet.GzipFilter, org.mortbay.servlet.UserAgentFilter, javax.servlet.Filter
    public void init(FilterConfig filterConfig) throws ServletException {
        super.init(filterConfig);
        String initParameter = filterConfig.getInitParameter("uncheckedPrintWriter");
        if (initParameter != null) {
            this._uncheckedPrintWriter = Boolean.valueOf(initParameter).booleanValue();
        }
    }

    @Override // org.mortbay.servlet.GzipFilter
    protected GzipFilter.GZIPResponseWrapper newGZIPResponseWrapper(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        return new IncludableResponseWrapper(this, httpServletRequest, httpServletResponse);
    }

    public class IncludableResponseWrapper extends GzipFilter.GZIPResponseWrapper {
        private final IncludableGzipFilter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public IncludableResponseWrapper(IncludableGzipFilter includableGzipFilter, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
            super(includableGzipFilter, httpServletRequest, httpServletResponse);
            this.this$0 = includableGzipFilter;
        }

        @Override // org.mortbay.servlet.GzipFilter.GZIPResponseWrapper
        protected GzipFilter.GzipStream newGzipStream(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, long j, int i, int i2) throws IOException {
            return new IncludableGzipStream(this.this$0, httpServletRequest, httpServletResponse, j, i, i2);
        }
    }

    public class IncludableGzipStream extends GzipFilter.GzipStream {
        private final IncludableGzipFilter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public IncludableGzipStream(IncludableGzipFilter includableGzipFilter, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, long j, int i, int i2) throws IOException {
            super(httpServletRequest, httpServletResponse, j, i, i2);
            this.this$0 = includableGzipFilter;
        }

        @Override // org.mortbay.servlet.GzipFilter.GzipStream
        protected boolean setContentEncodingGzip() {
            HttpConnection.getCurrentConnection().getResponseFields().put("Content-Encoding", HttpHeaderValues.GZIP);
            return true;
        }
    }

    @Override // org.mortbay.servlet.GzipFilter
    protected PrintWriter newWriter(OutputStream outputStream, String str) throws UnsupportedEncodingException {
        if (this._uncheckedPrintWriter) {
            return str == null ? new UncheckedPrintWriter(outputStream) : new UncheckedPrintWriter(new OutputStreamWriter(outputStream, str));
        }
        return super.newWriter(outputStream, str);
    }
}
