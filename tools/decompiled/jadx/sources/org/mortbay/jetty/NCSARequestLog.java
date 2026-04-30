package org.mortbay.jetty;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Locale;
import java.util.TimeZone;
import javax.servlet.http.Cookie;
import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.jetty.servlet.PathMap;
import org.mortbay.log.Log;
import org.mortbay.util.DateCache;
import org.mortbay.util.RolloverFileOutputStream;
import org.mortbay.util.StringUtil;
import org.mortbay.util.TypeUtil;
import org.mortbay.util.Utf8StringBuffer;

/* JADX INFO: loaded from: classes3.dex */
public class NCSARequestLog extends AbstractLifeCycle implements RequestLog {
    private transient ArrayList _buffers;
    private boolean _closeOut;
    private transient char[] _copy;
    private transient OutputStream _fileOut;
    private String _filename;
    private transient PathMap _ignorePathMap;
    private String[] _ignorePaths;
    private transient DateCache _logDateCache;
    private transient OutputStream _out;
    private boolean _preferProxiedForAddress;
    private transient Writer _writer;
    private String _logDateFormat = "dd/MMM/yyyy:HH:mm:ss Z";
    private String _filenameDateFormat = null;
    private Locale _logLocale = Locale.getDefault();
    private String _logTimeZone = "GMT";
    private boolean _logLatency = false;
    private boolean _logCookies = false;
    private boolean _logServer = false;
    private boolean _extended = true;
    private boolean _append = true;
    private int _retainDays = 31;

    public NCSARequestLog() {
    }

    public NCSARequestLog(String str) {
        setFilename(str);
    }

    public void setFilename(String str) {
        if (str != null) {
            str = str.trim();
            if (str.length() == 0) {
                str = null;
            }
        }
        this._filename = str;
    }

    public String getFilename() {
        return this._filename;
    }

    public String getDatedFilename() {
        if (this._fileOut instanceof RolloverFileOutputStream) {
            return ((RolloverFileOutputStream) this._fileOut).getDatedFilename();
        }
        return null;
    }

    public void setLogDateFormat(String str) {
        this._logDateFormat = str;
    }

    public String getLogDateFormat() {
        return this._logDateFormat;
    }

    public void setLogLocale(Locale locale) {
        this._logLocale = locale;
    }

    public Locale getLogLocale() {
        return this._logLocale;
    }

    public void setLogTimeZone(String str) {
        this._logTimeZone = str;
    }

    public String getLogTimeZone() {
        return this._logTimeZone;
    }

    public void setRetainDays(int i) {
        this._retainDays = i;
    }

    public int getRetainDays() {
        return this._retainDays;
    }

    public void setExtended(boolean z) {
        this._extended = z;
    }

    public boolean isExtended() {
        return this._extended;
    }

    public void setAppend(boolean z) {
        this._append = z;
    }

    public boolean isAppend() {
        return this._append;
    }

    public void setIgnorePaths(String[] strArr) {
        this._ignorePaths = strArr;
    }

    public String[] getIgnorePaths() {
        return this._ignorePaths;
    }

    public void setLogCookies(boolean z) {
        this._logCookies = z;
    }

    public boolean getLogCookies() {
        return this._logCookies;
    }

    public boolean getLogServer() {
        return this._logServer;
    }

    public void setLogServer(boolean z) {
        this._logServer = z;
    }

    public void setLogLatency(boolean z) {
        this._logLatency = z;
    }

    public boolean getLogLatency() {
        return this._logLatency;
    }

    public void setPreferProxiedForAddress(boolean z) {
        this._preferProxiedForAddress = z;
    }

    @Override // org.mortbay.jetty.RequestLog
    public void log(Request request, Response response) {
        Utf8StringBuffer utf8StringBuffer;
        StringBuffer stringBuffer;
        if (isStarted()) {
            try {
            } catch (IOException e2) {
                Log.warn(e2);
            }
            if ((this._ignorePathMap == null || this._ignorePathMap.getMatch(request.getRequestURI()) == null) && this._fileOut != null) {
                synchronized (this._writer) {
                    int size = this._buffers.size();
                    utf8StringBuffer = size == 0 ? new Utf8StringBuffer(160) : (Utf8StringBuffer) this._buffers.remove(size - 1);
                    stringBuffer = utf8StringBuffer.getStringBuffer();
                }
                synchronized (stringBuffer) {
                    if (this._logServer) {
                        stringBuffer.append(request.getServerName());
                        stringBuffer.append(' ');
                    }
                    String remoteAddr = null;
                    if (this._preferProxiedForAddress) {
                        remoteAddr = request.getHeader("X-Forwarded-For");
                    }
                    if (remoteAddr == null) {
                        remoteAddr = request.getRemoteAddr();
                    }
                    stringBuffer.append(remoteAddr);
                    stringBuffer.append(" - ");
                    String remoteUser = request.getRemoteUser();
                    if (remoteUser == null) {
                        remoteUser = " - ";
                    }
                    stringBuffer.append(remoteUser);
                    stringBuffer.append(" [");
                    if (this._logDateCache != null) {
                        stringBuffer.append(this._logDateCache.format(request.getTimeStamp()));
                    } else {
                        stringBuffer.append(request.getTimeStampBuffer().toString());
                    }
                    stringBuffer.append("] \"");
                    stringBuffer.append(request.getMethod());
                    stringBuffer.append(' ');
                    request.getUri().writeTo(utf8StringBuffer);
                    stringBuffer.append(' ');
                    stringBuffer.append(request.getProtocol());
                    stringBuffer.append("\" ");
                    int status = response.getStatus();
                    if (status <= 0) {
                        status = 404;
                    }
                    stringBuffer.append((char) (((status / 100) % 10) + 48));
                    stringBuffer.append((char) (((status / 10) % 10) + 48));
                    stringBuffer.append((char) ((status % 10) + 48));
                    long contentCount = response.getContentCount();
                    if (contentCount >= 0) {
                        stringBuffer.append(' ');
                        if (contentCount > 99999) {
                            stringBuffer.append(Long.toString(contentCount));
                        } else {
                            if (contentCount > 9999) {
                                stringBuffer.append((char) (48 + ((contentCount / 10000) % 10)));
                            }
                            if (contentCount > 999) {
                                stringBuffer.append((char) (48 + ((contentCount / 1000) % 10)));
                            }
                            if (contentCount > 99) {
                                stringBuffer.append((char) (48 + ((contentCount / 100) % 10)));
                            }
                            if (contentCount > 9) {
                                stringBuffer.append((char) (48 + ((contentCount / 10) % 10)));
                            }
                            stringBuffer.append((char) ((contentCount % 10) + 48));
                        }
                        stringBuffer.append(' ');
                    } else {
                        stringBuffer.append(" - ");
                    }
                }
                if (!this._extended && !this._logCookies && !this._logLatency) {
                    synchronized (this._writer) {
                        stringBuffer.append(StringUtil.__LINE_SEPARATOR);
                        int length = stringBuffer.length();
                        if (length > this._copy.length) {
                            length = this._copy.length;
                        }
                        stringBuffer.getChars(0, length, this._copy, 0);
                        this._writer.write(this._copy, 0, length);
                        this._writer.flush();
                        utf8StringBuffer.reset();
                        this._buffers.add(utf8StringBuffer);
                    }
                    return;
                }
                synchronized (this._writer) {
                    int length2 = stringBuffer.length();
                    if (length2 > this._copy.length) {
                        length2 = this._copy.length;
                    }
                    stringBuffer.getChars(0, length2, this._copy, 0);
                    this._writer.write(this._copy, 0, length2);
                    utf8StringBuffer.reset();
                    this._buffers.add(utf8StringBuffer);
                    if (this._extended) {
                        logExtended(request, response, this._writer);
                    }
                    if (this._logCookies) {
                        Cookie[] cookies = request.getCookies();
                        if (cookies == null || cookies.length == 0) {
                            this._writer.write(" -");
                        } else {
                            this._writer.write(" \"");
                            for (int i = 0; i < cookies.length; i++) {
                                if (i != 0) {
                                    this._writer.write(59);
                                }
                                this._writer.write(cookies[i].getName());
                                this._writer.write(61);
                                this._writer.write(cookies[i].getValue());
                            }
                            this._writer.write(34);
                        }
                    }
                    if (this._logLatency) {
                        this._writer.write(32);
                        this._writer.write(TypeUtil.toString(System.currentTimeMillis() - request.getTimeStamp()));
                    }
                    this._writer.write(StringUtil.__LINE_SEPARATOR);
                    this._writer.flush();
                }
                return;
                Log.warn(e2);
            }
        }
    }

    protected void logExtended(Request request, Response response, Writer writer) throws IOException {
        String header = request.getHeader("Referer");
        if (header == null) {
            writer.write("\"-\" ");
        } else {
            writer.write(34);
            writer.write(header);
            writer.write("\" ");
        }
        String header2 = request.getHeader("User-Agent");
        if (header2 == null) {
            writer.write("\"-\" ");
            return;
        }
        writer.write(34);
        writer.write(header2);
        writer.write(34);
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    protected void doStart() throws Exception {
        if (this._logDateFormat != null) {
            this._logDateCache = new DateCache(this._logDateFormat, this._logLocale);
            this._logDateCache.setTimeZoneID(this._logTimeZone);
        }
        if (this._filename != null) {
            this._fileOut = new RolloverFileOutputStream(this._filename, this._append, this._retainDays, TimeZone.getTimeZone(this._logTimeZone), this._filenameDateFormat, null);
            this._closeOut = true;
            Log.info(new StringBuffer().append("Opened ").append(getDatedFilename()).toString());
        } else {
            this._fileOut = System.err;
        }
        this._out = this._fileOut;
        if (this._ignorePaths != null && this._ignorePaths.length > 0) {
            this._ignorePathMap = new PathMap();
            for (int i = 0; i < this._ignorePaths.length; i++) {
                this._ignorePathMap.put(this._ignorePaths[i], this._ignorePaths[i]);
            }
        } else {
            this._ignorePathMap = null;
        }
        this._writer = new OutputStreamWriter(this._out);
        this._buffers = new ArrayList();
        this._copy = new char[1024];
        super.doStart();
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    protected void doStop() throws Exception {
        super.doStop();
        try {
            if (this._writer != null) {
                this._writer.flush();
            }
        } catch (IOException e2) {
            Log.ignore(e2);
        }
        if (this._out != null && this._closeOut) {
            try {
                this._out.close();
            } catch (IOException e3) {
                Log.ignore(e3);
            }
        }
        this._out = null;
        this._fileOut = null;
        this._closeOut = false;
        this._logDateCache = null;
        this._writer = null;
        this._buffers = null;
        this._copy = null;
    }

    public String getFilenameDateFormat() {
        return this._filenameDateFormat;
    }

    public void setFilenameDateFormat(String str) {
        this._filenameDateFormat = str;
    }
}
