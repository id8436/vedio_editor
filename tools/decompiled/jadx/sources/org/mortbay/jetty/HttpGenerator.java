package org.mortbay.jetty;

import android.support.v7.widget.ActivityChooserView;
import com.behance.sdk.util.BehanceSDKConstants;
import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import java.io.IOException;
import java.util.Iterator;
import org.mortbay.io.Buffer;
import org.mortbay.io.BufferCache;
import org.mortbay.io.BufferUtil;
import org.mortbay.io.Buffers;
import org.mortbay.io.EndPoint;
import org.mortbay.io.Portable;
import org.mortbay.jetty.HttpFields;
import org.mortbay.log.Log;
import org.mortbay.util.QuotedStringTokenizer;

/* JADX INFO: loaded from: classes3.dex */
public class HttpGenerator extends AbstractGenerator {
    private boolean _bufferChunked;
    private boolean _bypass;
    private boolean _needCRLF;
    private boolean _needEOC;
    private static byte[] LAST_CHUNK = {48, 13, 10, 13, 10};
    private static byte[] CONTENT_LENGTH_0 = Portable.getBytes("Content-Length: 0\r\n");
    private static byte[] CONNECTION_KEEP_ALIVE = Portable.getBytes("Connection: keep-alive\r\n");
    private static byte[] CONNECTION_CLOSE = Portable.getBytes("Connection: close\r\n");
    private static byte[] CONNECTION_ = Portable.getBytes("Connection: ");
    private static byte[] CRLF = Portable.getBytes("\r\n");
    private static byte[] TRANSFER_ENCODING_CHUNKED = Portable.getBytes("Transfer-Encoding: chunked\r\n");
    private static byte[] SERVER = Portable.getBytes("Server: Jetty(6.0.x)\r\n");
    private static int CHUNK_SPACE = 12;

    public static void setServerVersion(String str) {
        SERVER = Portable.getBytes(new StringBuffer().append("Server: Jetty(").append(str).append(")\r\n").toString());
    }

    public HttpGenerator(Buffers buffers, EndPoint endPoint, int i, int i2) {
        super(buffers, endPoint, i, i2);
        this._bypass = false;
        this._needCRLF = false;
        this._needEOC = false;
        this._bufferChunked = false;
    }

    @Override // org.mortbay.jetty.AbstractGenerator, org.mortbay.jetty.Generator
    public void reset(boolean z) {
        super.reset(z);
        this._bypass = false;
        this._needCRLF = false;
        this._needEOC = false;
        this._bufferChunked = false;
        this._method = null;
        this._uri = null;
        this._noContent = false;
    }

    @Override // org.mortbay.jetty.Generator
    public void addContent(Buffer buffer, boolean z) throws IOException {
        if (this._noContent) {
            throw new IllegalStateException("NO CONTENT");
        }
        if (this._last || this._state == 4) {
            Log.debug("Ignoring extra content {}", buffer);
            buffer.clear();
            return;
        }
        this._last = z;
        if ((this._content != null && this._content.length() > 0) || this._bufferChunked) {
            if (!this._endp.isOpen()) {
                throw new EofException();
            }
            flush();
            if ((this._content != null && this._content.length() > 0) || this._bufferChunked) {
                throw new IllegalStateException("FULL");
            }
        }
        this._content = buffer;
        this._contentWritten += (long) buffer.length();
        if (this._head) {
            buffer.clear();
            this._content = null;
            return;
        }
        if (this._endp != null && this._buffer == null && buffer.length() > 0 && this._last) {
            this._bypass = true;
            return;
        }
        if (this._buffer == null) {
            this._buffer = this._buffers.getBuffer(this._contentBufferSize);
        }
        this._content.skip(this._buffer.put(this._content));
        if (this._content.length() == 0) {
            this._content = null;
        }
    }

    public void sendResponse(Buffer buffer) throws IOException {
        if (this._noContent || this._state != 0 || ((this._content != null && this._content.length() > 0) || this._bufferChunked || this._head)) {
            throw new IllegalStateException();
        }
        this._last = true;
        this._content = buffer;
        this._bypass = true;
        this._state = 3;
        long length = buffer.length();
        this._contentWritten = length;
        this._contentLength = length;
    }

    @Override // org.mortbay.jetty.Generator
    public boolean addContent(byte b2) throws IOException {
        if (this._noContent) {
            throw new IllegalStateException("NO CONTENT");
        }
        if (this._last || this._state == 4) {
            Log.debug("Ignoring extra content {}", new Byte(b2));
            return false;
        }
        if ((this._content != null && this._content.length() > 0) || this._bufferChunked) {
            flush();
            if ((this._content != null && this._content.length() > 0) || this._bufferChunked) {
                throw new IllegalStateException("FULL");
            }
        }
        this._contentWritten++;
        if (this._head) {
            return false;
        }
        if (this._buffer == null) {
            this._buffer = this._buffers.getBuffer(this._contentBufferSize);
        }
        this._buffer.put(b2);
        return this._buffer.space() <= ((this._contentLength > (-2L) ? 1 : (this._contentLength == (-2L) ? 0 : -1)) == 0 ? CHUNK_SPACE : 0);
    }

    @Override // org.mortbay.jetty.AbstractGenerator
    protected int prepareUncheckedAddContent() throws IOException {
        if (this._noContent || this._last || this._state == 4) {
            return -1;
        }
        Buffer buffer = this._content;
        if ((buffer != null && buffer.length() > 0) || this._bufferChunked) {
            flush();
            if ((buffer != null && buffer.length() > 0) || this._bufferChunked) {
                throw new IllegalStateException("FULL");
            }
        }
        if (this._buffer == null) {
            this._buffer = this._buffers.getBuffer(this._contentBufferSize);
        }
        this._contentWritten -= (long) this._buffer.length();
        if (this._head) {
            return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }
        return this._buffer.space() - (this._contentLength == -2 ? CHUNK_SPACE : 0);
    }

    @Override // org.mortbay.jetty.AbstractGenerator, org.mortbay.jetty.Generator
    public boolean isBufferFull() {
        return super.isBufferFull() || this._bufferChunked || this._bypass || (this._contentLength == -2 && this._buffer != null && this._buffer.space() < CHUNK_SPACE);
    }

    @Override // org.mortbay.jetty.AbstractGenerator, org.mortbay.jetty.Generator
    public void completeHeader(HttpFields httpFields, boolean z) throws IOException {
        StringBuffer stringBuffer;
        boolean z2;
        boolean z3;
        boolean z4;
        HttpFields.Field field;
        HttpFields.Field field2;
        boolean z5;
        if (this._state == 0) {
            if (this._method == null && this._status == 0) {
                throw new EofException();
            }
            if (this._last && !z) {
                throw new IllegalStateException("last?");
            }
            this._last |= z;
            if (this._header == null) {
                this._header = this._buffers.getBuffer(this._headerBufferSize);
            }
            boolean z6 = false;
            if (this._method != null) {
                this._close = false;
                if (this._version == 9) {
                    this._contentLength = 0L;
                    this._header.put(this._method);
                    this._header.put((byte) 32);
                    this._header.put(this._uri.getBytes("utf-8"));
                    this._header.put(HttpTokens.CRLF);
                    this._state = 3;
                    this._noContent = true;
                    return;
                }
                this._header.put(this._method);
                this._header.put((byte) 32);
                this._header.put(this._uri.getBytes("utf-8"));
                this._header.put((byte) 32);
                this._header.put(this._version == 10 ? HttpVersions.HTTP_1_0_BUFFER : HttpVersions.HTTP_1_1_BUFFER);
                this._header.put(HttpTokens.CRLF);
            } else {
                if (this._version == 9) {
                    this._close = true;
                    this._contentLength = -1L;
                    this._state = 2;
                    return;
                }
                if (this._version == 10) {
                    this._close = true;
                }
                Buffer responseLine = HttpStatus.getResponseLine(this._status);
                if (responseLine == null) {
                    if (this._reason == null) {
                        this._reason = getReasonBuffer(this._status);
                    }
                    this._header.put(HttpVersions.HTTP_1_1_BUFFER);
                    this._header.put((byte) 32);
                    this._header.put((byte) ((this._status / 100) + 48));
                    this._header.put((byte) (((this._status % 100) / 10) + 48));
                    this._header.put((byte) ((this._status % 10) + 48));
                    this._header.put((byte) 32);
                    if (this._reason == null) {
                        this._header.put((byte) ((this._status / 100) + 48));
                        this._header.put((byte) (((this._status % 100) / 10) + 48));
                        this._header.put((byte) ((this._status % 10) + 48));
                    } else {
                        this._header.put(this._reason);
                    }
                    this._header.put(HttpTokens.CRLF);
                } else if (this._reason == null) {
                    this._header.put(responseLine);
                } else {
                    this._header.put(responseLine.array(), 0, HttpVersions.HTTP_1_1_BUFFER.length() + 5);
                    this._header.put(this._reason);
                    this._header.put(HttpTokens.CRLF);
                }
                if (this._status < 200 && this._status >= 100) {
                    this._noContent = true;
                    this._content = null;
                    if (this._buffer != null) {
                        this._buffer.clear();
                    }
                    this._header.put(HttpTokens.CRLF);
                    this._state = 2;
                    return;
                }
                if (this._status == 204 || this._status == 304) {
                    this._noContent = true;
                    this._content = null;
                    if (this._buffer != null) {
                        this._buffer.clear();
                    }
                }
            }
            HttpFields.Field field3 = null;
            HttpFields.Field field4 = null;
            boolean z7 = false;
            boolean z8 = false;
            boolean z9 = false;
            StringBuffer stringBuffer2 = null;
            if (httpFields != null) {
                Iterator fields = httpFields.getFields();
                while (fields.hasNext()) {
                    HttpFields.Field field5 = (HttpFields.Field) fields.next();
                    switch (field5.getNameOrdinal()) {
                        case 1:
                            if (this._method != null) {
                                field5.put(this._header);
                            }
                            switch (field5.getValueOrdinal()) {
                                case -1:
                                    QuotedStringTokenizer quotedStringTokenizer = new QuotedStringTokenizer(field5.getValue(), BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
                                    stringBuffer = stringBuffer2;
                                    boolean z10 = z8;
                                    z4 = z7;
                                    while (quotedStringTokenizer.hasMoreTokens()) {
                                        String strTrim = quotedStringTokenizer.nextToken().trim();
                                        BufferCache.CachedBuffer cachedBuffer = HttpHeaderValues.CACHE.get(strTrim);
                                        if (cachedBuffer != null) {
                                            switch (cachedBuffer.getOrdinal()) {
                                                case 1:
                                                    z10 = true;
                                                    if (this._method == null) {
                                                        this._close = true;
                                                    }
                                                    z4 = false;
                                                    if (this._close && this._method == null && this._contentLength == -3) {
                                                        this._contentLength = -1L;
                                                    }
                                                    break;
                                                case 5:
                                                    if (this._version == 10) {
                                                        z4 = true;
                                                        if (this._method == null) {
                                                            this._close = false;
                                                        }
                                                    }
                                                    break;
                                                default:
                                                    if (stringBuffer == null) {
                                                        stringBuffer = new StringBuffer();
                                                    } else {
                                                        stringBuffer.append(',');
                                                    }
                                                    stringBuffer.append(strTrim);
                                                    break;
                                            }
                                        } else {
                                            if (stringBuffer == null) {
                                                stringBuffer = new StringBuffer();
                                            } else {
                                                stringBuffer.append(',');
                                            }
                                            stringBuffer.append(strTrim);
                                        }
                                    }
                                    field = field4;
                                    field2 = field3;
                                    z5 = z6;
                                    boolean z11 = z10;
                                    z2 = z9;
                                    z3 = z11;
                                    continue;
                                    z6 = z5;
                                    field3 = field2;
                                    field4 = field;
                                    z7 = z4;
                                    z8 = z3;
                                    z9 = z2;
                                    stringBuffer2 = stringBuffer;
                                    break;
                                case 1:
                                    if (this._method == null) {
                                        this._close = true;
                                    }
                                    if (!this._close || this._method != null || this._contentLength != -3) {
                                        z4 = z7;
                                        field = field4;
                                        field2 = field3;
                                        z5 = z6;
                                        boolean z12 = z9;
                                        z3 = true;
                                        stringBuffer = stringBuffer2;
                                        z2 = z12;
                                    } else {
                                        this._contentLength = -1L;
                                        z4 = z7;
                                        field = field4;
                                        field2 = field3;
                                        z5 = z6;
                                        boolean z13 = z9;
                                        z3 = true;
                                        stringBuffer = stringBuffer2;
                                        z2 = z13;
                                        continue;
                                    }
                                    z6 = z5;
                                    field3 = field2;
                                    field4 = field;
                                    z7 = z4;
                                    z8 = z3;
                                    z9 = z2;
                                    stringBuffer2 = stringBuffer;
                                    break;
                                case 5:
                                    if (this._version == 10) {
                                        if (this._method != null) {
                                            field = field4;
                                            field2 = field3;
                                            z5 = z6;
                                            stringBuffer = stringBuffer2;
                                            z2 = z9;
                                            z3 = z8;
                                            z4 = true;
                                        } else {
                                            this._close = false;
                                            field = field4;
                                            field2 = field3;
                                            z5 = z6;
                                            stringBuffer = stringBuffer2;
                                            z2 = z9;
                                            z3 = z8;
                                            z4 = true;
                                        }
                                    }
                                    z6 = z5;
                                    field3 = field2;
                                    field4 = field;
                                    z7 = z4;
                                    z8 = z3;
                                    z9 = z2;
                                    stringBuffer2 = stringBuffer;
                                    break;
                                default:
                                    if (stringBuffer2 == null) {
                                        stringBuffer2 = new StringBuffer();
                                    } else {
                                        stringBuffer2.append(',');
                                    }
                                    stringBuffer2.append(field5.getValue());
                                    stringBuffer = stringBuffer2;
                                    z2 = z9;
                                    z3 = z8;
                                    z4 = z7;
                                    field = field4;
                                    field2 = field3;
                                    z5 = z6;
                                    continue;
                                    z6 = z5;
                                    field3 = field2;
                                    field4 = field;
                                    z7 = z4;
                                    z8 = z3;
                                    z9 = z2;
                                    stringBuffer2 = stringBuffer;
                                    break;
                            }
                            break;
                        case 5:
                            if (this._version == 11) {
                                field2 = field3;
                                z5 = z6;
                                boolean z14 = z8;
                                z4 = z7;
                                field = field5;
                                stringBuffer = stringBuffer2;
                                z2 = z9;
                                z3 = z14;
                            }
                            z6 = z5;
                            field3 = field2;
                            field4 = field;
                            z7 = z4;
                            z8 = z3;
                            z9 = z2;
                            stringBuffer2 = stringBuffer;
                            break;
                        case 12:
                            this._contentLength = field5.getLongValue();
                            HttpFields.Field field6 = (this._contentLength < this._contentWritten || (this._last && this._contentLength != this._contentWritten)) ? null : field5;
                            field5.put(this._header);
                            stringBuffer = stringBuffer2;
                            z2 = z9;
                            z3 = z8;
                            z4 = z7;
                            field = field4;
                            field2 = field6;
                            z5 = z6;
                            continue;
                            z6 = z5;
                            field3 = field2;
                            field4 = field;
                            z7 = z4;
                            z8 = z3;
                            z9 = z2;
                            stringBuffer2 = stringBuffer;
                            break;
                        case 16:
                            if (BufferUtil.isPrefix(MimeTypes.MULTIPART_BYTERANGES_BUFFER, field5.getValueBuffer())) {
                                this._contentLength = -4L;
                            }
                            field5.put(this._header);
                            stringBuffer = stringBuffer2;
                            z2 = true;
                            z3 = z8;
                            z4 = z7;
                            field = field4;
                            field2 = field3;
                            z5 = z6;
                            continue;
                            z6 = z5;
                            field3 = field2;
                            field4 = field;
                            z7 = z4;
                            z8 = z3;
                            z9 = z2;
                            stringBuffer2 = stringBuffer;
                            break;
                        case 48:
                            if (getSendServerVersion()) {
                                field5.put(this._header);
                                stringBuffer = stringBuffer2;
                                z2 = z9;
                                z3 = z8;
                                z4 = z7;
                                field = field4;
                                field2 = field3;
                                z5 = true;
                            }
                            z6 = z5;
                            field3 = field2;
                            field4 = field;
                            z7 = z4;
                            z8 = z3;
                            z9 = z2;
                            stringBuffer2 = stringBuffer;
                            break;
                        default:
                            field5.put(this._header);
                            break;
                    }
                    stringBuffer = stringBuffer2;
                    z2 = z9;
                    z3 = z8;
                    z4 = z7;
                    field = field4;
                    field2 = field3;
                    z5 = z6;
                    z6 = z5;
                    field3 = field2;
                    field4 = field;
                    z7 = z4;
                    z8 = z3;
                    z9 = z2;
                    stringBuffer2 = stringBuffer;
                }
            }
            switch ((int) this._contentLength) {
                case -3:
                    if (this._contentWritten == 0 && this._method == null && (this._status < 200 || this._status == 204 || this._status == 304)) {
                        this._contentLength = 0L;
                    } else if (this._last) {
                        this._contentLength = this._contentWritten;
                        if (field3 == null && (this._method == null || z9 || this._contentLength > 0)) {
                            this._header.put(HttpHeaders.CONTENT_LENGTH_BUFFER);
                            this._header.put(HttpTokens.COLON);
                            this._header.put((byte) 32);
                            BufferUtil.putDecLong(this._header, this._contentLength);
                            this._header.put(HttpTokens.CRLF);
                        }
                    } else {
                        this._contentLength = (this._close || this._version < 11) ? -1L : -2L;
                        if (this._method != null && this._contentLength == -1) {
                            this._contentLength = 0L;
                            this._noContent = true;
                        }
                    }
                    break;
                case -1:
                    this._close = this._method == null;
                    break;
                case 0:
                    if (field3 == null && this._method == null && this._status >= 200 && this._status != 204 && this._status != 304) {
                        this._header.put(CONTENT_LENGTH_0);
                    }
                    break;
            }
            if (this._contentLength == -2) {
                if (field4 != null && 2 != field4.getValueOrdinal()) {
                    if (field4.getValue().endsWith(HttpHeaderValues.CHUNKED)) {
                        field4.put(this._header);
                    } else {
                        throw new IllegalArgumentException("BAD TE");
                    }
                } else {
                    this._header.put(TRANSFER_ENCODING_CHUNKED);
                }
            }
            if (this._contentLength == -1) {
                z7 = false;
                this._close = true;
            }
            if (this._method == null) {
                if (this._close && (z8 || this._version > 10)) {
                    this._header.put(CONNECTION_CLOSE);
                    if (stringBuffer2 != null) {
                        this._header.setPutIndex(this._header.putIndex() - 2);
                        this._header.put(ClosedCaptionCtrl.ERASE_DISPLAYED_MEMORY);
                        this._header.put(stringBuffer2.toString().getBytes());
                        this._header.put(CRLF);
                    }
                } else if (z7) {
                    this._header.put(CONNECTION_KEEP_ALIVE);
                    if (stringBuffer2 != null) {
                        this._header.setPutIndex(this._header.putIndex() - 2);
                        this._header.put(ClosedCaptionCtrl.ERASE_DISPLAYED_MEMORY);
                        this._header.put(stringBuffer2.toString().getBytes());
                        this._header.put(CRLF);
                    }
                } else if (stringBuffer2 != null) {
                    this._header.put(CONNECTION_);
                    this._header.put(stringBuffer2.toString().getBytes());
                    this._header.put(CRLF);
                }
            }
            if (!z6 && this._status > 100 && getSendServerVersion()) {
                this._header.put(SERVER);
            }
            this._header.put(HttpTokens.CRLF);
            this._state = 2;
        }
    }

    @Override // org.mortbay.jetty.AbstractGenerator, org.mortbay.jetty.Generator
    public void complete() throws IOException {
        if (this._state != 4) {
            super.complete();
            if (this._state < 3) {
                this._state = 3;
                if (this._contentLength == -2) {
                    this._needEOC = true;
                }
            }
            flush();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:100:0x011c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x007f A[Catch: IOException -> 0x0010, LOOP:0: B:28:0x004c->B:48:0x007f, LOOP_END, TryCatch #0 {IOException -> 0x0010, blocks: (B:3:0x0003, B:5:0x0007, B:6:0x000f, B:11:0x0019, B:13:0x0020, B:15:0x0024, B:17:0x0028, B:18:0x002f, B:20:0x0033, B:22:0x0037, B:24:0x003b, B:25:0x0042, B:28:0x004c, B:30:0x0051, B:33:0x005a, B:35:0x005e, B:38:0x0067, B:40:0x006c, B:42:0x0070, B:45:0x0079, B:46:0x007a, B:48:0x007f, B:75:0x011c, B:52:0x008a, B:53:0x008f, B:54:0x0090, B:55:0x009c, B:56:0x00a8, B:57:0x00b1, B:58:0x00b6, B:59:0x00b7, B:60:0x00c0, B:61:0x00c9, B:63:0x00cd, B:64:0x00d2, B:66:0x00dc, B:68:0x00e9, B:70:0x00fb, B:72:0x0109, B:74:0x010d, B:76:0x011f, B:78:0x0123, B:80:0x0127, B:82:0x012b, B:84:0x0133, B:86:0x0137, B:87:0x013a, B:89:0x013e, B:91:0x0142, B:93:0x0148, B:94:0x014e), top: B:97:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x011f A[Catch: IOException -> 0x0010, TryCatch #0 {IOException -> 0x0010, blocks: (B:3:0x0003, B:5:0x0007, B:6:0x000f, B:11:0x0019, B:13:0x0020, B:15:0x0024, B:17:0x0028, B:18:0x002f, B:20:0x0033, B:22:0x0037, B:24:0x003b, B:25:0x0042, B:28:0x004c, B:30:0x0051, B:33:0x005a, B:35:0x005e, B:38:0x0067, B:40:0x006c, B:42:0x0070, B:45:0x0079, B:46:0x007a, B:48:0x007f, B:75:0x011c, B:52:0x008a, B:53:0x008f, B:54:0x0090, B:55:0x009c, B:56:0x00a8, B:57:0x00b1, B:58:0x00b6, B:59:0x00b7, B:60:0x00c0, B:61:0x00c9, B:63:0x00cd, B:64:0x00d2, B:66:0x00dc, B:68:0x00e9, B:70:0x00fb, B:72:0x0109, B:74:0x010d, B:76:0x011f, B:78:0x0123, B:80:0x0127, B:82:0x012b, B:84:0x0133, B:86:0x0137, B:87:0x013a, B:89:0x013e, B:91:0x0142, B:93:0x0148, B:94:0x014e), top: B:97:0x0003 }] */
    @Override // org.mortbay.jetty.AbstractGenerator, org.mortbay.jetty.Generator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long flush() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.HttpGenerator.flush():long");
    }

    private void prepareBuffers() {
        if (!this._bufferChunked) {
            if (this._content != null && this._content.length() > 0 && this._buffer != null && this._buffer.space() > 0) {
                this._content.skip(this._buffer.put(this._content));
                if (this._content.length() == 0) {
                    this._content = null;
                }
            }
            if (this._contentLength == -2) {
                int length = this._buffer == null ? 0 : this._buffer.length();
                if (length > 0) {
                    this._bufferChunked = true;
                    if (this._buffer.getIndex() == CHUNK_SPACE) {
                        this._buffer.poke(this._buffer.getIndex() - 2, HttpTokens.CRLF, 0, 2);
                        this._buffer.setGetIndex(this._buffer.getIndex() - 2);
                        BufferUtil.prependHexInt(this._buffer, length);
                        if (this._needCRLF) {
                            this._buffer.poke(this._buffer.getIndex() - 2, HttpTokens.CRLF, 0, 2);
                            this._buffer.setGetIndex(this._buffer.getIndex() - 2);
                            this._needCRLF = false;
                        }
                    } else {
                        if (this._needCRLF) {
                            if (this._header.length() > 0) {
                                throw new IllegalStateException("EOC");
                            }
                            this._header.put(HttpTokens.CRLF);
                            this._needCRLF = false;
                        }
                        BufferUtil.putHexInt(this._header, length);
                        this._header.put(HttpTokens.CRLF);
                    }
                    if (this._buffer.space() >= 2) {
                        this._buffer.put(HttpTokens.CRLF);
                    } else {
                        this._needCRLF = true;
                    }
                }
                if (this._needEOC && (this._content == null || this._content.length() == 0)) {
                    if (this._needCRLF) {
                        if (this._buffer == null && this._header.space() >= 2) {
                            this._header.put(HttpTokens.CRLF);
                            this._needCRLF = false;
                        } else if (this._buffer != null && this._buffer.space() >= 2) {
                            this._buffer.put(HttpTokens.CRLF);
                            this._needCRLF = false;
                        }
                    }
                    if (!this._needCRLF && this._needEOC) {
                        if (this._buffer == null && this._header.space() >= LAST_CHUNK.length) {
                            if (!this._head) {
                                this._header.put(LAST_CHUNK);
                                this._bufferChunked = true;
                            }
                            this._needEOC = false;
                        } else if (this._buffer != null && this._buffer.space() >= LAST_CHUNK.length) {
                            if (!this._head) {
                                this._buffer.put(LAST_CHUNK);
                                this._bufferChunked = true;
                            }
                            this._needEOC = false;
                        }
                    }
                }
            }
        }
        if (this._content != null && this._content.length() == 0) {
            this._content = null;
        }
    }

    public int getBytesBuffered() {
        return (this._header == null ? 0 : this._header.length()) + (this._buffer == null ? 0 : this._buffer.length()) + (this._content != null ? this._content.length() : 0);
    }

    public boolean isEmpty() {
        return (this._header == null || this._header.length() == 0) && (this._buffer == null || this._buffer.length() == 0) && (this._content == null || this._content.length() == 0);
    }

    public String toString() {
        return new StringBuffer().append("HttpGenerator s=").append(this._state).append(" h=").append(this._header == null ? "null" : new StringBuffer().append("").append(this._header.length()).toString()).append(" b=").append(this._buffer == null ? "null" : new StringBuffer().append("").append(this._buffer.length()).toString()).append(" c=").append(this._content == null ? "null" : new StringBuffer().append("").append(this._content.length()).toString()).toString();
    }
}
