package org.mortbay.jetty;

import com.behance.sdk.util.BehanceSDKConstants;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletOutputStream;
import org.mortbay.io.Buffer;
import org.mortbay.io.BufferCache;
import org.mortbay.io.Connection;
import org.mortbay.io.EndPoint;
import org.mortbay.io.RuntimeIOException;
import org.mortbay.io.nio.SelectChannelEndPoint;
import org.mortbay.jetty.AbstractGenerator;
import org.mortbay.jetty.HttpParser;
import org.mortbay.log.Log;
import org.mortbay.resource.Resource;
import org.mortbay.util.QuotedStringTokenizer;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class HttpConnection implements Connection {
    private static int UNKNOWN = -2;
    private static ThreadLocal __currentConnection = new ThreadLocal();
    private Object _associatedObject;
    protected final Connector _connector;
    private boolean _destroy;
    protected final EndPoint _endp;
    protected final Generator _generator;
    private boolean _handling;
    protected ServletInputStream _in;
    int _include;
    protected Output _out;
    protected final Parser _parser;
    protected PrintWriter _printWriter;
    protected final Request _request;
    protected final HttpFields _requestFields;
    private int _requests;
    protected final Response _response;
    protected final HttpFields _responseFields;
    protected final Server _server;
    protected final HttpURI _uri;
    protected OutputWriter _writer;
    private long _timeStamp = System.currentTimeMillis();
    private transient int _expect = UNKNOWN;
    private transient int _version = UNKNOWN;
    private transient boolean _head = false;
    private transient boolean _host = false;
    private transient boolean _delayedHandling = false;

    static int access$708(HttpConnection httpConnection) {
        int i = httpConnection._requests;
        httpConnection._requests = i + 1;
        return i;
    }

    public static HttpConnection getCurrentConnection() {
        return (HttpConnection) __currentConnection.get();
    }

    protected static void setCurrentConnection(HttpConnection httpConnection) {
        __currentConnection.set(httpConnection);
    }

    public HttpConnection(Connector connector, EndPoint endPoint, Server server) {
        this._uri = URIUtil.__CHARSET == "UTF-8" ? new HttpURI() : new EncodedHttpURI(URIUtil.__CHARSET);
        this._connector = connector;
        this._endp = endPoint;
        this._parser = new HttpParser(this._connector, endPoint, new RequestHandler(this, null), this._connector.getHeaderBufferSize(), this._connector.getRequestBufferSize());
        this._requestFields = new HttpFields();
        this._responseFields = new HttpFields();
        this._request = new Request(this);
        this._response = new Response(this);
        this._generator = new HttpGenerator(this._connector, this._endp, this._connector.getHeaderBufferSize(), this._connector.getResponseBufferSize());
        this._generator.setSendServerVersion(server.getSendServerVersion());
        this._server = server;
    }

    protected HttpConnection(Connector connector, EndPoint endPoint, Server server, Parser parser, Generator generator, Request request) {
        this._uri = URIUtil.__CHARSET == "UTF-8" ? new HttpURI() : new EncodedHttpURI(URIUtil.__CHARSET);
        this._connector = connector;
        this._endp = endPoint;
        this._parser = parser;
        this._requestFields = new HttpFields();
        this._responseFields = new HttpFields();
        this._request = request;
        this._response = new Response(this);
        this._generator = generator;
        this._generator.setSendServerVersion(server.getSendServerVersion());
        this._server = server;
    }

    public void destroy() {
        synchronized (this) {
            this._destroy = true;
            if (!this._handling) {
                if (this._parser != null) {
                    this._parser.reset(true);
                }
                if (this._generator != null) {
                    this._generator.reset(true);
                }
                if (this._requestFields != null) {
                    this._requestFields.destroy();
                }
                if (this._responseFields != null) {
                    this._responseFields.destroy();
                }
            }
        }
    }

    public Parser getParser() {
        return this._parser;
    }

    public int getRequests() {
        return this._requests;
    }

    public long getTimeStamp() {
        return this._timeStamp;
    }

    public Object getAssociatedObject() {
        return this._associatedObject;
    }

    public void setAssociatedObject(Object obj) {
        this._associatedObject = obj;
    }

    public Connector getConnector() {
        return this._connector;
    }

    public HttpFields getRequestFields() {
        return this._requestFields;
    }

    public HttpFields getResponseFields() {
        return this._responseFields;
    }

    public boolean isConfidential(Request request) {
        if (this._connector != null) {
            return this._connector.isConfidential(request);
        }
        return false;
    }

    public boolean isIntegral(Request request) {
        if (this._connector != null) {
            return this._connector.isIntegral(request);
        }
        return false;
    }

    public EndPoint getEndPoint() {
        return this._endp;
    }

    public boolean getResolveNames() {
        return this._connector.getResolveNames();
    }

    public Request getRequest() {
        return this._request;
    }

    public Response getResponse() {
        return this._response;
    }

    public ServletInputStream getInputStream() {
        if (this._in == null) {
            this._in = new HttpParser.Input((HttpParser) this._parser, this._connector.getMaxIdleTime());
        }
        return this._in;
    }

    public ServletOutputStream getOutputStream() {
        if (this._out == null) {
            this._out = new Output(this);
        }
        return this._out;
    }

    public PrintWriter getPrintWriter(String str) {
        getOutputStream();
        if (this._writer == null) {
            this._writer = new OutputWriter(this);
            this._printWriter = new PrintWriter(this, this._writer) { // from class: org.mortbay.jetty.HttpConnection.1
                private final HttpConnection this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.io.PrintWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    try {
                        this.out.close();
                    } catch (IOException e2) {
                        Log.debug(e2);
                        setError();
                    }
                }
            };
        }
        this._writer.setCharacterEncoding(str);
        return this._printWriter;
    }

    public boolean isResponseCommitted() {
        return this._generator.isCommitted();
    }

    /* JADX WARN: Removed duplicated region for block: B:189:0x02ba  */
    @Override // org.mortbay.io.Connection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handle() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 704
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.HttpConnection.handle():void");
    }

    public void reset(boolean z) {
        this._parser.reset(z);
        this._requestFields.clear();
        this._request.recycle();
        this._generator.reset(z);
        this._responseFields.clear();
        this._response.recycle();
        this._uri.clear();
    }

    protected void handleRequest() throws Throwable {
        Response response;
        EndPoint endPoint;
        String str;
        String strCanonicalPath;
        String name = null;
        try {
            if (this._server.isRunning()) {
                try {
                    try {
                        try {
                            try {
                                strCanonicalPath = URIUtil.canonicalPath(this._uri.getDecodedPath());
                                try {
                                } catch (Throwable th) {
                                    th = th;
                                    str = null;
                                    name = strCanonicalPath;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                str = null;
                            }
                        } catch (RuntimeIOException e2) {
                            Log.debug(e2);
                            this._request.setHandled(true);
                            if (0 != 0) {
                                Thread.currentThread().setName(null);
                            }
                            if (this._request.getContinuation() != null) {
                                Log.debug("continuation still pending {}");
                                this._request.getContinuation().reset();
                            }
                            if (this._endp.isOpen()) {
                                if (this._generator.isPersistent()) {
                                    this._connector.persist(this._endp);
                                }
                                endPoint = this._endp;
                                endPoint.close();
                                return;
                            }
                            response = this._response;
                        }
                    } catch (RetryRequest e3) {
                        if (Log.isDebugEnabled()) {
                            Log.ignore(e3);
                        }
                        if (0 != 0) {
                            Thread.currentThread().setName(null);
                            return;
                        }
                        return;
                    }
                } catch (EofException e4) {
                    Log.ignore(e4);
                    if (0 != 0) {
                        Thread.currentThread().setName(null);
                    }
                    if (this._request.getContinuation() != null) {
                        Log.debug("continuation still pending {}");
                        this._request.getContinuation().reset();
                    }
                    if (this._endp.isOpen()) {
                        if (this._generator.isPersistent()) {
                            this._connector.persist(this._endp);
                        }
                        endPoint = this._endp;
                        endPoint.close();
                        return;
                    }
                    response = this._response;
                } catch (HttpException e5) {
                    Log.debug(e5);
                    this._request.setHandled(true);
                    this._response.sendError(e5.getStatus(), e5.getReason());
                    if (0 != 0) {
                        Thread.currentThread().setName(null);
                    }
                    if (this._request.getContinuation() != null) {
                        Log.debug("continuation still pending {}");
                        this._request.getContinuation().reset();
                    }
                    if (this._endp.isOpen()) {
                        if (this._generator.isPersistent()) {
                            this._connector.persist(this._endp);
                        }
                        endPoint = this._endp;
                        endPoint.close();
                        return;
                    }
                    response = this._response;
                }
                if (strCanonicalPath == null) {
                    throw new HttpException(400);
                }
                this._request.setPathInfo(strCanonicalPath);
                if (this._out != null) {
                    this._out.reopen();
                }
                if (Log.isDebugEnabled()) {
                    name = Thread.currentThread().getName();
                    try {
                        Thread.currentThread().setName(new StringBuffer().append(name).append(" - ").append(this._uri).toString());
                    } catch (Throwable th3) {
                        th = th3;
                        str = name;
                        name = strCanonicalPath;
                        try {
                            if (th instanceof ThreadDeath) {
                                throw ((ThreadDeath) th);
                            }
                            if (name == null) {
                                Log.warn(new StringBuffer().append(this._uri).append(": ").append(th).toString());
                                Log.debug(th);
                                this._request.setHandled(true);
                                this._generator.sendError(400, null, null, true);
                            } else {
                                Log.warn(new StringBuffer().append("").append(this._uri).toString(), th);
                                this._request.setHandled(true);
                                this._generator.sendError(500, null, null, true);
                            }
                            if (str != null) {
                                Thread.currentThread().setName(str);
                            }
                            if (this._request.getContinuation() != null) {
                                Log.debug("continuation still pending {}");
                                this._request.getContinuation().reset();
                            }
                            if (this._endp.isOpen()) {
                                if (this._generator.isPersistent()) {
                                    this._connector.persist(this._endp);
                                }
                                endPoint = this._endp;
                                endPoint.close();
                                return;
                            }
                            response = this._response;
                        } catch (Throwable th4) {
                            th = th4;
                            name = str;
                        }
                    }
                }
                this._connector.customize(this._endp, this._request);
                this._server.handle(this);
                if (name != null) {
                    Thread.currentThread().setName(name);
                }
                if (this._request.getContinuation() != null) {
                    Log.debug("continuation still pending {}");
                    this._request.getContinuation().reset();
                }
                if (!this._endp.isOpen()) {
                    response = this._response;
                    response.complete();
                    return;
                }
                if (this._generator.isPersistent()) {
                    this._connector.persist(this._endp);
                }
                if (!this._response.isCommitted() && !this._request.isHandled()) {
                    this._response.sendError(404);
                }
                this._response.complete();
                return;
            }
            return;
        } catch (Throwable th5) {
            th = th5;
        }
        if (name != null) {
            Thread.currentThread().setName(name);
        }
        if (this._request.getContinuation() != null) {
            Log.debug("continuation still pending {}");
            this._request.getContinuation().reset();
        }
        if (this._endp.isOpen()) {
            if (this._generator.isPersistent()) {
                this._connector.persist(this._endp);
            }
            if (!this._response.isCommitted() && !this._request.isHandled()) {
                this._response.sendError(404);
            }
            this._response.complete();
        } else {
            this._response.complete();
        }
        throw th;
    }

    public void commitResponse(boolean z) throws IOException {
        if (!this._generator.isCommitted()) {
            this._generator.setResponse(this._response.getStatus(), this._response.getReason());
            try {
                this._generator.completeHeader(this._responseFields, z);
            } catch (IOException e2) {
                throw e2;
            } catch (RuntimeException e3) {
                Log.warn(new StringBuffer().append("header full: ").append(e3).toString());
                if (Log.isDebugEnabled() && (this._generator instanceof HttpGenerator)) {
                    Log.debug(((HttpGenerator) this._generator)._header.toDetailString(), e3);
                }
                this._response.reset();
                this._generator.reset(true);
                this._generator.setResponse(500, null);
                this._generator.completeHeader(this._responseFields, true);
                this._generator.complete();
                throw e3;
            }
        }
        if (z) {
            this._generator.complete();
        }
    }

    public void completeResponse() throws IOException {
        if (!this._generator.isCommitted()) {
            this._generator.setResponse(this._response.getStatus(), this._response.getReason());
            try {
                this._generator.completeHeader(this._responseFields, true);
            } catch (IOException e2) {
                throw e2;
            } catch (RuntimeException e3) {
                Log.warn(new StringBuffer().append("header full: ").append(e3).toString());
                Log.debug(e3);
                this._response.reset();
                this._generator.reset(true);
                this._generator.setResponse(500, null);
                this._generator.completeHeader(this._responseFields, true);
                this._generator.complete();
                throw e3;
            }
        }
        this._generator.complete();
    }

    public void flushResponse() throws IOException {
        try {
            commitResponse(false);
            this._generator.flush();
        } catch (IOException e2) {
            if (!(e2 instanceof EofException)) {
                throw new EofException(e2);
            }
            throw e2;
        }
    }

    public Generator getGenerator() {
        return this._generator;
    }

    public boolean isIncluding() {
        return this._include > 0;
    }

    public void include() {
        this._include++;
    }

    public void included() {
        this._include--;
        if (this._out != null) {
            this._out.reopen();
        }
    }

    @Override // org.mortbay.io.Connection
    public boolean isIdle() {
        return this._generator.isIdle() && (this._parser.isIdle() || this._delayedHandling);
    }

    class RequestHandler extends HttpParser.EventHandler {
        private String _charset;
        private final HttpConnection this$0;

        private RequestHandler(HttpConnection httpConnection) {
            this.this$0 = httpConnection;
        }

        RequestHandler(HttpConnection httpConnection, AnonymousClass1 anonymousClass1) {
            this(httpConnection);
        }

        @Override // org.mortbay.jetty.HttpParser.EventHandler
        public void startRequest(Buffer buffer, Buffer buffer2, Buffer buffer3) throws IOException {
            this.this$0._host = false;
            this.this$0._expect = HttpConnection.UNKNOWN;
            this.this$0._delayedHandling = false;
            this._charset = null;
            if (this.this$0._request.getTimeStamp() == 0) {
                this.this$0._request.setTimeStamp(System.currentTimeMillis());
            }
            this.this$0._request.setMethod(buffer.toString());
            try {
                this.this$0._uri.parse(buffer2.array(), buffer2.getIndex(), buffer2.length());
                this.this$0._request.setUri(this.this$0._uri);
                if (buffer3 == null) {
                    this.this$0._request.setProtocol("");
                    this.this$0._version = 9;
                } else {
                    BufferCache.CachedBuffer cachedBuffer = HttpVersions.CACHE.get(buffer3);
                    this.this$0._version = HttpVersions.CACHE.getOrdinal(cachedBuffer);
                    if (this.this$0._version <= 0) {
                        this.this$0._version = 10;
                    }
                    this.this$0._request.setProtocol(cachedBuffer.toString());
                }
                this.this$0._head = buffer == HttpMethods.HEAD_BUFFER;
            } catch (Exception e2) {
                Log.debug(e2);
                throw new HttpException(400, null, e2);
            }
        }

        @Override // org.mortbay.jetty.HttpParser.EventHandler
        public void parsedHeader(Buffer buffer, Buffer buffer2) {
            switch (HttpHeaders.CACHE.getOrdinal(buffer)) {
                case 1:
                    switch (HttpHeaderValues.CACHE.getOrdinal(buffer2)) {
                        case -1:
                            QuotedStringTokenizer quotedStringTokenizer = new QuotedStringTokenizer(buffer2.toString(), BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
                            while (quotedStringTokenizer.hasMoreTokens()) {
                                BufferCache.CachedBuffer cachedBuffer = HttpHeaderValues.CACHE.get(quotedStringTokenizer.nextToken().trim());
                                if (cachedBuffer != null) {
                                    switch (cachedBuffer.getOrdinal()) {
                                        case 1:
                                            this.this$0._responseFields.add(HttpHeaders.CONNECTION_BUFFER, HttpHeaderValues.CLOSE_BUFFER);
                                            this.this$0._generator.setPersistent(false);
                                            break;
                                        case 5:
                                            if (this.this$0._version == 10) {
                                                this.this$0._responseFields.add(HttpHeaders.CONNECTION_BUFFER, HttpHeaderValues.KEEP_ALIVE_BUFFER);
                                            }
                                            break;
                                    }
                                }
                            }
                            break;
                        case 1:
                            this.this$0._responseFields.put(HttpHeaders.CONNECTION_BUFFER, HttpHeaderValues.CLOSE_BUFFER);
                            this.this$0._generator.setPersistent(false);
                            break;
                        case 5:
                            if (this.this$0._version == 10) {
                                this.this$0._responseFields.put(HttpHeaders.CONNECTION_BUFFER, HttpHeaderValues.KEEP_ALIVE_BUFFER);
                            }
                            break;
                    }
                    break;
                case 16:
                    buffer2 = MimeTypes.CACHE.lookup(buffer2);
                    this._charset = MimeTypes.getCharsetFromContentType(buffer2);
                    break;
                case 21:
                case 40:
                    buffer2 = HttpHeaderValues.CACHE.lookup(buffer2);
                    break;
                case 24:
                    buffer2 = HttpHeaderValues.CACHE.lookup(buffer2);
                    this.this$0._expect = HttpHeaderValues.CACHE.getOrdinal(buffer2);
                    break;
                case 27:
                    this.this$0._host = true;
                    break;
            }
            this.this$0._requestFields.add(buffer, buffer2);
        }

        @Override // org.mortbay.jetty.HttpParser.EventHandler
        public void headerComplete() throws Throwable {
            if (this.this$0._endp instanceof SelectChannelEndPoint) {
                ((SelectChannelEndPoint) this.this$0._endp).scheduleIdle();
            }
            HttpConnection.access$708(this.this$0);
            this.this$0._generator.setVersion(this.this$0._version);
            switch (this.this$0._version) {
                case 10:
                    this.this$0._generator.setHead(this.this$0._head);
                    break;
                case 11:
                    this.this$0._generator.setHead(this.this$0._head);
                    if (this.this$0._server.getSendDateHeader()) {
                        this.this$0._responseFields.put(HttpHeaders.DATE_BUFFER, this.this$0._request.getTimeStampBuffer(), this.this$0._request.getTimeStamp());
                    }
                    if (this.this$0._host) {
                        if (this.this$0._expect != HttpConnection.UNKNOWN) {
                            if (this.this$0._expect != 6) {
                                if (this.this$0._expect != 7) {
                                    this.this$0._generator.setResponse(417, null);
                                    this.this$0._responseFields.put(HttpHeaders.CONNECTION_BUFFER, HttpHeaderValues.CLOSE_BUFFER);
                                    this.this$0._generator.completeHeader(this.this$0._responseFields, true);
                                    this.this$0._generator.complete();
                                    return;
                                }
                            } else if (((HttpParser) this.this$0._parser).getHeaderBuffer() == null || ((HttpParser) this.this$0._parser).getHeaderBuffer().length() < 2) {
                                this.this$0._generator.setResponse(100, null);
                                this.this$0._generator.completeHeader(null, true);
                                this.this$0._generator.complete();
                                this.this$0._generator.reset(false);
                            }
                        }
                    } else {
                        this.this$0._generator.setResponse(400, null);
                        this.this$0._responseFields.put(HttpHeaders.CONNECTION_BUFFER, HttpHeaderValues.CLOSE_BUFFER);
                        this.this$0._generator.completeHeader(this.this$0._responseFields, true);
                        this.this$0._generator.complete();
                        return;
                    }
                    break;
            }
            if (this._charset != null) {
                this.this$0._request.setCharacterEncodingUnchecked(this._charset);
            }
            if (((HttpParser) this.this$0._parser).getContentLength() > 0 || ((HttpParser) this.this$0._parser).isChunking()) {
                this.this$0._delayedHandling = true;
            } else {
                this.this$0.handleRequest();
            }
        }

        @Override // org.mortbay.jetty.HttpParser.EventHandler
        public void content(Buffer buffer) throws Throwable {
            if (this.this$0._endp instanceof SelectChannelEndPoint) {
                ((SelectChannelEndPoint) this.this$0._endp).scheduleIdle();
            }
            if (this.this$0._delayedHandling) {
                this.this$0._delayedHandling = false;
                this.this$0.handleRequest();
            }
        }

        @Override // org.mortbay.jetty.HttpParser.EventHandler
        public void messageComplete(long j) throws Throwable {
            if (this.this$0._delayedHandling) {
                this.this$0._delayedHandling = false;
                this.this$0.handleRequest();
            }
        }

        @Override // org.mortbay.jetty.HttpParser.EventHandler
        public void startResponse(Buffer buffer, int i, Buffer buffer2) {
            Log.debug(new StringBuffer().append("Bad request!: ").append(buffer).append(" ").append(i).append(" ").append(buffer2).toString());
        }
    }

    public class Output extends AbstractGenerator.Output {
        private final HttpConnection this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        Output(HttpConnection httpConnection) {
            super((AbstractGenerator) httpConnection._generator, httpConnection._connector.getMaxIdleTime());
            this.this$0 = httpConnection;
        }

        @Override // org.mortbay.jetty.AbstractGenerator.Output, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this._closed) {
                if (!this.this$0.isIncluding() && !this._generator.isCommitted()) {
                    this.this$0.commitResponse(true);
                } else {
                    this.this$0.flushResponse();
                }
                super.close();
            }
        }

        @Override // org.mortbay.jetty.AbstractGenerator.Output, java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            if (!this._generator.isCommitted()) {
                this.this$0.commitResponse(false);
            }
            super.flush();
        }

        @Override // org.mortbay.jetty.AbstractGenerator.Output, javax.servlet.ServletOutputStream
        public void print(String str) throws IOException {
            if (this._closed) {
                throw new IOException("Closed");
            }
            this.this$0.getPrintWriter(null).print(str);
        }

        public void sendResponse(Buffer buffer) throws IOException {
            ((HttpGenerator) this._generator).sendResponse(buffer);
        }

        public void sendContent(Object obj) throws IOException {
            Object inputStream;
            Resource resource;
            BufferCache.CachedBuffer associate;
            if (this._closed) {
                throw new IOException("Closed");
            }
            if (this._generator.getContentWritten() > 0) {
                throw new IllegalStateException("!empty");
            }
            if (obj instanceof HttpContent) {
                HttpContent httpContent = (HttpContent) obj;
                Buffer contentType = httpContent.getContentType();
                if (contentType != null && !this.this$0._responseFields.containsKey(HttpHeaders.CONTENT_TYPE_BUFFER)) {
                    String setCharacterEncoding = this.this$0._response.getSetCharacterEncoding();
                    if (setCharacterEncoding == null) {
                        this.this$0._responseFields.add(HttpHeaders.CONTENT_TYPE_BUFFER, contentType);
                    } else if ((contentType instanceof BufferCache.CachedBuffer) && (associate = ((BufferCache.CachedBuffer) contentType).getAssociate(setCharacterEncoding)) != null) {
                        this.this$0._responseFields.put(HttpHeaders.CONTENT_TYPE_BUFFER, associate);
                    } else {
                        this.this$0._responseFields.put(HttpHeaders.CONTENT_TYPE_BUFFER, new StringBuffer().append(contentType).append(";charset=").append(QuotedStringTokenizer.quote(setCharacterEncoding, ";= ")).toString());
                    }
                }
                if (httpContent.getContentLength() > 0) {
                    this.this$0._responseFields.putLongField(HttpHeaders.CONTENT_LENGTH_BUFFER, httpContent.getContentLength());
                }
                Buffer lastModified = httpContent.getLastModified();
                long jLastModified = httpContent.getResource().lastModified();
                if (lastModified != null) {
                    this.this$0._responseFields.put(HttpHeaders.LAST_MODIFIED_BUFFER, lastModified, jLastModified);
                } else if (httpContent.getResource() != null && jLastModified != -1) {
                    this.this$0._responseFields.putDateField(HttpHeaders.LAST_MODIFIED_BUFFER, jLastModified);
                }
                inputStream = httpContent.getBuffer();
                if (inputStream == null) {
                    inputStream = httpContent.getInputStream();
                }
                resource = null;
            } else if (!(obj instanceof Resource)) {
                inputStream = obj;
                resource = null;
            } else {
                resource = (Resource) obj;
                this.this$0._responseFields.putDateField(HttpHeaders.LAST_MODIFIED_BUFFER, resource.lastModified());
                inputStream = resource.getInputStream();
            }
            if (inputStream instanceof Buffer) {
                this._generator.addContent((Buffer) inputStream, true);
                this.this$0.commitResponse(true);
                return;
            }
            if (inputStream instanceof InputStream) {
                InputStream inputStream2 = (InputStream) inputStream;
                try {
                    int from = this._generator.getUncheckedBuffer().readFrom(inputStream2, this._generator.prepareUncheckedAddContent());
                    while (from >= 0) {
                        this._generator.completeUncheckedAddContent();
                        this.this$0._out.flush();
                        from = this._generator.getUncheckedBuffer().readFrom(inputStream2, this._generator.prepareUncheckedAddContent());
                    }
                    this._generator.completeUncheckedAddContent();
                    this.this$0._out.flush();
                    if (resource != null) {
                        resource.release();
                        return;
                    } else {
                        inputStream2.close();
                        return;
                    }
                } catch (Throwable th) {
                    if (resource != null) {
                        resource.release();
                    } else {
                        inputStream2.close();
                    }
                    throw th;
                }
            }
            throw new IllegalArgumentException("unknown content type?");
        }
    }

    public class OutputWriter extends AbstractGenerator.OutputWriter {
        private final HttpConnection this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        OutputWriter(HttpConnection httpConnection) {
            super(httpConnection._out);
            this.this$0 = httpConnection;
        }
    }
}
