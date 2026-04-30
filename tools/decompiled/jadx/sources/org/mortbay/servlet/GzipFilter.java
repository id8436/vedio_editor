package org.mortbay.servlet;

import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.behance.sdk.util.BehanceSDKConstants;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashSet;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.zip.GZIPOutputStream;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
import org.mortbay.jetty.HttpHeaderValues;
import org.mortbay.jetty.servlet.Dispatcher;
import org.mortbay.util.ByteArrayOutputStream2;
import org.mortbay.util.StringUtil;

/* JADX INFO: loaded from: classes3.dex */
public class GzipFilter extends UserAgentFilter {
    protected Set _excluded;
    protected Set _mimeTypes;
    protected int _bufferSize = 8192;
    protected int _minGzipSize = 0;

    @Override // org.mortbay.servlet.UserAgentFilter, javax.servlet.Filter
    public void init(FilterConfig filterConfig) throws ServletException {
        super.init(filterConfig);
        String initParameter = filterConfig.getInitParameter("bufferSize");
        if (initParameter != null) {
            this._bufferSize = Integer.parseInt(initParameter);
        }
        String initParameter2 = filterConfig.getInitParameter("minGzipSize");
        if (initParameter2 != null) {
            this._minGzipSize = Integer.parseInt(initParameter2);
        }
        String initParameter3 = filterConfig.getInitParameter("mimeTypes");
        if (initParameter3 != null) {
            this._mimeTypes = new HashSet();
            StringTokenizer stringTokenizer = new StringTokenizer(initParameter3, BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR, false);
            while (stringTokenizer.hasMoreTokens()) {
                this._mimeTypes.add(stringTokenizer.nextToken());
            }
        }
        String initParameter4 = filterConfig.getInitParameter("excludedAgents");
        if (initParameter4 != null) {
            this._excluded = new HashSet();
            StringTokenizer stringTokenizer2 = new StringTokenizer(initParameter4, BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR, false);
            while (stringTokenizer2.hasMoreTokens()) {
                this._excluded.add(stringTokenizer2.nextToken());
            }
        }
    }

    @Override // org.mortbay.servlet.UserAgentFilter, javax.servlet.Filter
    public void destroy() {
    }

    @Override // org.mortbay.servlet.UserAgentFilter, javax.servlet.Filter
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws ServletException, IOException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpServletResponse = (HttpServletResponse) servletResponse;
        String header = httpServletRequest.getHeader("accept-encoding");
        Boolean bool = (Boolean) httpServletRequest.getAttribute("GzipFilter");
        if (header != null && header.indexOf(HttpHeaderValues.GZIP) >= 0 && !httpServletResponse.containsHeader("Content-Encoding") && ((bool == null || bool.booleanValue()) && !"HEAD".equalsIgnoreCase(httpServletRequest.getMethod()))) {
            if (this._excluded != null) {
                if (this._excluded.contains(getUserAgent(httpServletRequest))) {
                    super.doFilter(httpServletRequest, httpServletResponse, filterChain);
                    return;
                }
            }
            GZIPResponseWrapper gZIPResponseWrapperNewGZIPResponseWrapper = newGZIPResponseWrapper(httpServletRequest, httpServletResponse);
            try {
                try {
                    super.doFilter(httpServletRequest, gZIPResponseWrapperNewGZIPResponseWrapper, filterChain);
                    gZIPResponseWrapperNewGZIPResponseWrapper.finish();
                    return;
                } catch (RuntimeException e2) {
                    httpServletRequest.setAttribute("GzipFilter", Boolean.FALSE);
                    if (!httpServletResponse.isCommitted()) {
                        httpServletResponse.reset();
                    }
                    throw e2;
                }
            } catch (Throwable th) {
                if (!httpServletResponse.isCommitted()) {
                    gZIPResponseWrapperNewGZIPResponseWrapper.resetBuffer();
                    gZIPResponseWrapperNewGZIPResponseWrapper.noGzip();
                } else {
                    gZIPResponseWrapperNewGZIPResponseWrapper.finish();
                }
                throw th;
            }
        }
        super.doFilter(httpServletRequest, httpServletResponse, filterChain);
    }

    protected GZIPResponseWrapper newGZIPResponseWrapper(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        return new GZIPResponseWrapper(this, httpServletRequest, httpServletResponse);
    }

    protected PrintWriter newWriter(OutputStream outputStream, String str) throws UnsupportedEncodingException {
        return str == null ? new PrintWriter(outputStream) : new PrintWriter(new OutputStreamWriter(outputStream, str));
    }

    public class GZIPResponseWrapper extends HttpServletResponseWrapper {
        long _contentLength;
        GzipStream _gzStream;
        boolean _noGzip;
        HttpServletRequest _request;
        PrintWriter _writer;
        private final GzipFilter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GZIPResponseWrapper(GzipFilter gzipFilter, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
            super(httpServletResponse);
            this.this$0 = gzipFilter;
            this._contentLength = -1L;
            this._request = httpServletRequest;
        }

        @Override // javax.servlet.ServletResponseWrapper, javax.servlet.ServletResponse
        public void setContentType(String str) {
            int iIndexOf;
            super.setContentType(str);
            if (str != null && (iIndexOf = str.indexOf(";")) > 0) {
                str = str.substring(0, iIndexOf);
            }
            if (this._gzStream == null || this._gzStream._out == null) {
                if (this.this$0._mimeTypes != null || !"application/gzip".equalsIgnoreCase(str)) {
                    if (this.this$0._mimeTypes == null) {
                        return;
                    }
                    if (str != null && this.this$0._mimeTypes.contains(StringUtil.asciiToLowerCase(str))) {
                        return;
                    }
                }
                noGzip();
            }
        }

        @Override // javax.servlet.http.HttpServletResponseWrapper, javax.servlet.http.HttpServletResponse
        public void setStatus(int i, String str) {
            super.setStatus(i, str);
            if (i < 200 || i >= 300) {
                noGzip();
            }
        }

        @Override // javax.servlet.http.HttpServletResponseWrapper, javax.servlet.http.HttpServletResponse
        public void setStatus(int i) {
            super.setStatus(i);
            if (i < 200 || i >= 300) {
                noGzip();
            }
        }

        @Override // javax.servlet.ServletResponseWrapper, javax.servlet.ServletResponse
        public void setContentLength(int i) {
            this._contentLength = i;
            if (this._gzStream != null) {
                this._gzStream.setContentLength(i);
            }
        }

        @Override // javax.servlet.http.HttpServletResponseWrapper, javax.servlet.http.HttpServletResponse
        public void addHeader(String str, String str2) {
            if (AdobeStorageSession.CONTENT_LENGTH.equalsIgnoreCase(str)) {
                this._contentLength = Long.parseLong(str2);
                if (this._gzStream != null) {
                    this._gzStream.setContentLength(this._contentLength);
                    return;
                }
                return;
            }
            if ("content-type".equalsIgnoreCase(str)) {
                setContentType(str2);
                return;
            }
            if ("content-encoding".equalsIgnoreCase(str)) {
                super.addHeader(str, str2);
                if (!isCommitted()) {
                    noGzip();
                    return;
                }
                return;
            }
            super.addHeader(str, str2);
        }

        @Override // javax.servlet.http.HttpServletResponseWrapper, javax.servlet.http.HttpServletResponse
        public void setHeader(String str, String str2) {
            if (AdobeStorageSession.CONTENT_LENGTH.equalsIgnoreCase(str)) {
                this._contentLength = Long.parseLong(str2);
                if (this._gzStream != null) {
                    this._gzStream.setContentLength(this._contentLength);
                    return;
                }
                return;
            }
            if ("content-type".equalsIgnoreCase(str)) {
                setContentType(str2);
                return;
            }
            if ("content-encoding".equalsIgnoreCase(str)) {
                super.setHeader(str, str2);
                if (!isCommitted()) {
                    noGzip();
                    return;
                }
                return;
            }
            super.setHeader(str, str2);
        }

        @Override // javax.servlet.http.HttpServletResponseWrapper, javax.servlet.http.HttpServletResponse
        public void setIntHeader(String str, int i) {
            if (AdobeStorageSession.CONTENT_LENGTH.equalsIgnoreCase(str)) {
                this._contentLength = i;
                if (this._gzStream != null) {
                    this._gzStream.setContentLength(this._contentLength);
                    return;
                }
                return;
            }
            super.setIntHeader(str, i);
        }

        @Override // javax.servlet.ServletResponseWrapper, javax.servlet.ServletResponse
        public void flushBuffer() throws IOException {
            if (this._writer != null) {
                this._writer.flush();
            }
            if (this._gzStream != null) {
                this._gzStream.finish();
            } else {
                getResponse().flushBuffer();
            }
        }

        @Override // javax.servlet.ServletResponseWrapper, javax.servlet.ServletResponse
        public void reset() {
            super.reset();
            if (this._gzStream != null) {
                this._gzStream.resetBuffer();
            }
            this._writer = null;
            this._gzStream = null;
            this._noGzip = false;
            this._contentLength = -1L;
        }

        @Override // javax.servlet.ServletResponseWrapper, javax.servlet.ServletResponse
        public void resetBuffer() {
            super.resetBuffer();
            if (this._gzStream != null) {
                this._gzStream.resetBuffer();
            }
            this._writer = null;
            this._gzStream = null;
        }

        @Override // javax.servlet.http.HttpServletResponseWrapper, javax.servlet.http.HttpServletResponse
        public void sendError(int i, String str) throws IOException {
            resetBuffer();
            super.sendError(i, str);
        }

        @Override // javax.servlet.http.HttpServletResponseWrapper, javax.servlet.http.HttpServletResponse
        public void sendError(int i) throws IOException {
            resetBuffer();
            super.sendError(i);
        }

        @Override // javax.servlet.http.HttpServletResponseWrapper, javax.servlet.http.HttpServletResponse
        public void sendRedirect(String str) throws IOException {
            resetBuffer();
            super.sendRedirect(str);
        }

        @Override // javax.servlet.ServletResponseWrapper, javax.servlet.ServletResponse
        public ServletOutputStream getOutputStream() throws IOException {
            if (this._gzStream == null) {
                if (getResponse().isCommitted() || this._noGzip) {
                    return getResponse().getOutputStream();
                }
                this._gzStream = newGzipStream(this._request, (HttpServletResponse) getResponse(), this._contentLength, this.this$0._bufferSize, this.this$0._minGzipSize);
            } else if (this._writer != null) {
                throw new IllegalStateException("getWriter() called");
            }
            return this._gzStream;
        }

        @Override // javax.servlet.ServletResponseWrapper, javax.servlet.ServletResponse
        public PrintWriter getWriter() throws IOException {
            if (this._writer == null) {
                if (this._gzStream != null) {
                    throw new IllegalStateException("getOutputStream() called");
                }
                if (getResponse().isCommitted() || this._noGzip) {
                    return getResponse().getWriter();
                }
                this._gzStream = newGzipStream(this._request, (HttpServletResponse) getResponse(), this._contentLength, this.this$0._bufferSize, this.this$0._minGzipSize);
                this._writer = this.this$0.newWriter(this._gzStream, getCharacterEncoding());
            }
            return this._writer;
        }

        void noGzip() {
            this._noGzip = true;
            if (this._gzStream != null) {
                try {
                    this._gzStream.doNotGzip();
                } catch (IOException e2) {
                    throw new IllegalStateException();
                }
            }
        }

        void finish() throws IOException {
            if (this._writer != null && !this._gzStream._closed) {
                this._writer.flush();
            }
            if (this._gzStream != null) {
                this._gzStream.finish();
            }
        }

        protected GzipStream newGzipStream(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, long j, int i, int i2) throws IOException {
            return new GzipStream(httpServletRequest, httpServletResponse, j, i, i2);
        }
    }

    public class GzipStream extends ServletOutputStream {
        protected ByteArrayOutputStream2 _bOut;
        protected int _bufferSize;
        protected boolean _closed;
        protected long _contentLength;
        protected GZIPOutputStream _gzOut;
        protected int _minGzipSize;
        protected OutputStream _out;
        protected HttpServletRequest _request;
        protected HttpServletResponse _response;

        public GzipStream(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, long j, int i, int i2) throws IOException {
            this._request = httpServletRequest;
            this._response = httpServletResponse;
            this._contentLength = j;
            this._bufferSize = i;
            this._minGzipSize = i2;
            if (i2 == 0) {
                doGzip();
            }
        }

        public void resetBuffer() {
            this._closed = false;
            this._out = null;
            this._bOut = null;
            if (this._gzOut != null && !this._response.isCommitted()) {
                this._response.setHeader("Content-Encoding", null);
            }
            this._gzOut = null;
        }

        public void setContentLength(long j) {
            this._contentLength = j;
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            if (this._out == null || this._bOut != null) {
                if (this._contentLength > 0 && this._contentLength < this._minGzipSize) {
                    doNotGzip();
                } else {
                    doGzip();
                }
            }
            this._out.flush();
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this._request.getAttribute(Dispatcher.__INCLUDE_REQUEST_URI) != null) {
                flush();
                return;
            }
            if (this._bOut != null) {
                if (this._contentLength < 0) {
                    this._contentLength = this._bOut.getCount();
                }
                if (this._contentLength < this._minGzipSize) {
                    doNotGzip();
                } else {
                    doGzip();
                }
            } else if (this._out == null) {
                doNotGzip();
            }
            if (this._gzOut != null) {
                this._gzOut.close();
            } else {
                this._out.close();
            }
            this._closed = true;
        }

        public void finish() throws IOException {
            if (!this._closed) {
                if (this._out == null || this._bOut != null) {
                    if (this._contentLength > 0 && this._contentLength < this._minGzipSize) {
                        doNotGzip();
                    } else {
                        doGzip();
                    }
                }
                if (this._gzOut != null && !this._closed) {
                    this._closed = true;
                    this._gzOut.close();
                }
            }
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            checkOut(1);
            this._out.write(i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            checkOut(bArr.length);
            this._out.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            checkOut(i2);
            this._out.write(bArr, i, i2);
        }

        protected boolean setContentEncodingGzip() {
            this._response.setHeader("Content-Encoding", HttpHeaderValues.GZIP);
            return this._response.containsHeader("Content-Encoding");
        }

        public void doGzip() throws IOException {
            if (this._gzOut == null) {
                if (this._response.isCommitted()) {
                    throw new IllegalStateException();
                }
                if (setContentEncodingGzip()) {
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(this._response.getOutputStream(), this._bufferSize);
                    this._gzOut = gZIPOutputStream;
                    this._out = gZIPOutputStream;
                    if (this._bOut != null) {
                        this._out.write(this._bOut.getBuf(), 0, this._bOut.getCount());
                        this._bOut = null;
                        return;
                    }
                    return;
                }
                doNotGzip();
            }
        }

        public void doNotGzip() throws IOException {
            if (this._gzOut != null) {
                throw new IllegalStateException();
            }
            if (this._out == null || this._bOut != null) {
                this._out = this._response.getOutputStream();
                if (this._contentLength >= 0) {
                    if (this._contentLength < 2147483647L) {
                        this._response.setContentLength((int) this._contentLength);
                    } else {
                        this._response.setHeader("Content-Length", Long.toString(this._contentLength));
                    }
                }
                if (this._bOut != null) {
                    this._out.write(this._bOut.getBuf(), 0, this._bOut.getCount());
                }
                this._bOut = null;
            }
        }

        private void checkOut(int i) throws IOException {
            if (this._closed) {
                throw new IOException("CLOSED");
            }
            if (this._out == null) {
                if (this._response.isCommitted() || (this._contentLength >= 0 && this._contentLength < this._minGzipSize)) {
                    doNotGzip();
                    return;
                } else {
                    if (i > this._minGzipSize) {
                        doGzip();
                        return;
                    }
                    ByteArrayOutputStream2 byteArrayOutputStream2 = new ByteArrayOutputStream2(this._bufferSize);
                    this._bOut = byteArrayOutputStream2;
                    this._out = byteArrayOutputStream2;
                    return;
                }
            }
            if (this._bOut != null) {
                if (this._response.isCommitted() || (this._contentLength >= 0 && this._contentLength < this._minGzipSize)) {
                    doNotGzip();
                } else if (i >= this._bOut.getBuf().length - this._bOut.getCount()) {
                    doGzip();
                }
            }
        }
    }
}
