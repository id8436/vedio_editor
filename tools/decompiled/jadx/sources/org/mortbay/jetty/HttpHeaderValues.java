package org.mortbay.jetty;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import org.mortbay.io.Buffer;
import org.mortbay.io.BufferCache;
import org.mortbay.log.Log;

/* JADX INFO: loaded from: classes3.dex */
public class HttpHeaderValues extends BufferCache {
    public static final int BYTES_ORDINAL = 9;
    public static final int CHUNKED_ORDINAL = 2;
    public static final int CLOSE_ORDINAL = 1;
    public static final int CONTINUE_ORDINAL = 6;
    public static final int GZIP_ORDINAL = 3;
    public static final String IDENTITY = "identity";
    public static final int IDENTITY_ORDINAL = 4;
    public static final int KEEP_ALIVE_ORDINAL = 5;
    public static final int NO_CACHE_ORDINAL = 10;
    public static final int PROCESSING_ORDINAL = 7;
    public static final String TE = "TE";
    public static final int TE_ORDINAL = 8;
    static Class class$org$mortbay$jetty$HttpHeaderValues;
    public static final HttpHeaderValues CACHE = new HttpHeaderValues();
    public static final String CLOSE = "close";
    public static final Buffer CLOSE_BUFFER = CACHE.add(CLOSE, 1);
    public static final String CHUNKED = "chunked";
    public static final Buffer CHUNKED_BUFFER = CACHE.add(CHUNKED, 2);
    public static final String GZIP = "gzip";
    public static final Buffer GZIP_BUFFER = CACHE.add(GZIP, 3);
    public static final Buffer IDENTITY_BUFFER = CACHE.add("identity", 4);
    public static final String KEEP_ALIVE = "keep-alive";
    public static final Buffer KEEP_ALIVE_BUFFER = CACHE.add(KEEP_ALIVE, 5);
    public static final String CONTINUE = "100-continue";
    public static final Buffer CONTINUE_BUFFER = CACHE.add(CONTINUE, 6);
    public static final String PROCESSING = "102-processing";
    public static final Buffer PROCESSING_BUFFER = CACHE.add(PROCESSING, 7);
    public static final Buffer TE_BUFFER = CACHE.add("TE", 8);
    public static final String BYTES = "bytes";
    public static final Buffer BYTES_BUFFER = CACHE.add(BYTES, 9);
    public static final String NO_CACHE = "no-cache";
    public static final Buffer NO_CACHE_BUFFER = CACHE.add(NO_CACHE, 10);

    static {
        Class clsClass$;
        CACHE.add(GZIP, 100);
        CACHE.add("gzip,deflate", 101);
        int i = 103;
        CACHE.add("deflate", 102);
        try {
            if (class$org$mortbay$jetty$HttpHeaderValues == null) {
                clsClass$ = class$("org.mortbay.jetty.HttpHeaderValues");
                class$org$mortbay$jetty$HttpHeaderValues = clsClass$;
            } else {
                clsClass$ = class$org$mortbay$jetty$HttpHeaderValues;
            }
            InputStream resourceAsStream = clsClass$.getResourceAsStream("/org/mortbay/jetty/useragents");
            if (resourceAsStream != null) {
                LineNumberReader lineNumberReader = new LineNumberReader(new InputStreamReader(resourceAsStream));
                String line = lineNumberReader.readLine();
                while (line != null) {
                    CACHE.add(line, i);
                    line = lineNumberReader.readLine();
                    i++;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            Log.ignore(e2);
        }
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }
}
