package com.google.android.exoplayer.upstream;

import android.text.TextUtils;
import android.util.Log;
import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Predicate;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class HttpDataSource implements DataSource {
    public static final int DEFAULT_CONNECT_TIMEOUT_MILLIS = 8000;
    public static final int DEFAULT_READ_TIMEOUT_MILLIS = 8000;
    private static final String TAG = "HttpDataSource";
    private long bytesRead;
    private final int connectTimeoutMillis;
    private HttpURLConnection connection;
    private final Predicate<String> contentTypePredicate;
    private long dataLength;
    private DataSpec dataSpec;
    private InputStream inputStream;
    private final TransferListener listener;
    private boolean opened;
    private final int readTimeoutMillis;
    private final HashMap<String, String> requestProperties;
    private final String userAgent;
    public static final Predicate<String> REJECT_PAYWALL_TYPES = new Predicate<String>() { // from class: com.google.android.exoplayer.upstream.HttpDataSource.1
        @Override // com.google.android.exoplayer.util.Predicate
        public boolean evaluate(String str) {
            String lowerInvariant = Util.toLowerInvariant(str);
            return (TextUtils.isEmpty(lowerInvariant) || (lowerInvariant.contains("text") && !lowerInvariant.contains("text/vtt")) || lowerInvariant.contains(BehanceSDKPublishConstants.KEY_HTML) || lowerInvariant.contains("xml")) ? false : true;
        }
    };
    private static final Pattern CONTENT_RANGE_HEADER = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    public class HttpDataSourceException extends IOException {
        public final DataSpec dataSpec;

        public HttpDataSourceException(DataSpec dataSpec) {
            this.dataSpec = dataSpec;
        }

        public HttpDataSourceException(String str, DataSpec dataSpec) {
            super(str);
            this.dataSpec = dataSpec;
        }

        public HttpDataSourceException(IOException iOException, DataSpec dataSpec) {
            super(iOException);
            this.dataSpec = dataSpec;
        }

        public HttpDataSourceException(String str, IOException iOException, DataSpec dataSpec) {
            super(str, iOException);
            this.dataSpec = dataSpec;
        }
    }

    public final class InvalidContentTypeException extends HttpDataSourceException {
        public final String contentType;

        public InvalidContentTypeException(String str, DataSpec dataSpec) {
            super("Invalid content type: " + str, dataSpec);
            this.contentType = str;
        }
    }

    public final class InvalidResponseCodeException extends HttpDataSourceException {
        public final Map<String, List<String>> headerFields;
        public final int responseCode;

        public InvalidResponseCodeException(int i, Map<String, List<String>> map, DataSpec dataSpec) {
            super("Response code: " + i, dataSpec);
            this.responseCode = i;
            this.headerFields = map;
        }
    }

    public HttpDataSource(String str, Predicate<String> predicate) {
        this(str, predicate, null);
    }

    public HttpDataSource(String str, Predicate<String> predicate, TransferListener transferListener) {
        this(str, predicate, transferListener, 8000, 8000);
    }

    public HttpDataSource(String str, Predicate<String> predicate, TransferListener transferListener, int i, int i2) {
        this.userAgent = Assertions.checkNotEmpty(str);
        this.contentTypePredicate = predicate;
        this.listener = transferListener;
        this.requestProperties = new HashMap<>();
        this.connectTimeoutMillis = i;
        this.readTimeoutMillis = i2;
    }

    public void setRequestProperty(String str, String str2) {
        Assertions.checkNotNull(str);
        Assertions.checkNotNull(str2);
        synchronized (this.requestProperties) {
            this.requestProperties.put(str, str2);
        }
    }

    public void clearRequestProperty(String str) {
        Assertions.checkNotNull(str);
        synchronized (this.requestProperties) {
            this.requestProperties.remove(str);
        }
    }

    public void clearAllRequestProperties() {
        synchronized (this.requestProperties) {
            this.requestProperties.clear();
        }
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public long open(DataSpec dataSpec) throws HttpDataSourceException {
        this.dataSpec = dataSpec;
        this.bytesRead = 0L;
        try {
            this.connection = makeConnection(dataSpec);
            try {
                int responseCode = this.connection.getResponseCode();
                if (responseCode < 200 || responseCode > 299) {
                    Map<String, List<String>> headerFields = this.connection.getHeaderFields();
                    closeConnection();
                    throw new InvalidResponseCodeException(responseCode, headerFields, dataSpec);
                }
                String contentType = this.connection.getContentType();
                if (this.contentTypePredicate != null && !this.contentTypePredicate.evaluate(contentType)) {
                    closeConnection();
                    throw new InvalidContentTypeException(contentType, dataSpec);
                }
                long contentLength = getContentLength(this.connection);
                this.dataLength = dataSpec.length == -1 ? contentLength : dataSpec.length;
                if (dataSpec.length != -1 && contentLength != -1 && contentLength != dataSpec.length) {
                    closeConnection();
                    throw new HttpDataSourceException(new UnexpectedLengthException(dataSpec.length, contentLength), dataSpec);
                }
                try {
                    this.inputStream = this.connection.getInputStream();
                    this.opened = true;
                    if (this.listener != null) {
                        this.listener.onTransferStart();
                    }
                    return this.dataLength;
                } catch (IOException e2) {
                    closeConnection();
                    throw new HttpDataSourceException(e2, dataSpec);
                }
            } catch (IOException e3) {
                throw new HttpDataSourceException("Unable to connect to " + dataSpec.uri.toString(), e3, dataSpec);
            }
        } catch (IOException e4) {
            throw new HttpDataSourceException("Unable to connect to " + dataSpec.uri.toString(), e4, dataSpec);
        }
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) throws HttpDataSourceException {
        try {
            int i3 = this.inputStream.read(bArr, i, i2);
            if (i3 > 0) {
                this.bytesRead += (long) i3;
                if (this.listener != null) {
                    this.listener.onBytesTransferred(i3);
                }
            } else if (this.dataLength != -1 && this.dataLength != this.bytesRead) {
                throw new HttpDataSourceException(new UnexpectedLengthException(this.dataLength, this.bytesRead), this.dataSpec);
            }
            return i3;
        } catch (IOException e2) {
            throw new HttpDataSourceException(e2, this.dataSpec);
        }
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public void close() throws HttpDataSourceException {
        try {
            if (this.inputStream != null) {
                try {
                    this.inputStream.close();
                    this.inputStream = null;
                } catch (IOException e2) {
                    throw new HttpDataSourceException(e2, this.dataSpec);
                }
            }
        } finally {
            if (this.opened) {
                this.opened = false;
                if (this.listener != null) {
                    this.listener.onTransferEnd();
                }
                closeConnection();
            }
        }
    }

    private void closeConnection() {
        if (this.connection != null) {
            this.connection.disconnect();
            this.connection = null;
        }
    }

    protected final HttpURLConnection getConnection() {
        return this.connection;
    }

    protected final long bytesRead() {
        return this.bytesRead;
    }

    protected final long bytesRemaining() {
        return this.dataLength == -1 ? this.dataLength : this.dataLength - this.bytesRead;
    }

    private HttpURLConnection makeConnection(DataSpec dataSpec) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(dataSpec.uri.toString()).openConnection();
        httpURLConnection.setConnectTimeout(this.connectTimeoutMillis);
        httpURLConnection.setReadTimeout(this.readTimeoutMillis);
        httpURLConnection.setDoOutput(false);
        synchronized (this.requestProperties) {
            for (Map.Entry<String, String> entry : this.requestProperties.entrySet()) {
                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        setRangeHeader(httpURLConnection, dataSpec);
        httpURLConnection.setRequestProperty("User-Agent", this.userAgent);
        httpURLConnection.connect();
        return httpURLConnection;
    }

    private void setRangeHeader(HttpURLConnection httpURLConnection, DataSpec dataSpec) {
        if (dataSpec.position != 0 || dataSpec.length != -1) {
            String str = "bytes=" + dataSpec.position + "-";
            if (dataSpec.length != -1) {
                str = str + ((dataSpec.position + dataSpec.length) - 1);
            }
            httpURLConnection.setRequestProperty("Range", str);
        }
    }

    private long getContentLength(HttpURLConnection httpURLConnection) {
        long j = -1;
        String headerField = httpURLConnection.getHeaderField("Content-Length");
        if (!TextUtils.isEmpty(headerField)) {
            try {
                j = Long.parseLong(headerField);
            } catch (NumberFormatException e2) {
                Log.e(TAG, "Unexpected Content-Length [" + headerField + "]");
            }
        }
        String headerField2 = httpURLConnection.getHeaderField("Content-Range");
        if (!TextUtils.isEmpty(headerField2)) {
            Matcher matcher = CONTENT_RANGE_HEADER.matcher(headerField2);
            if (matcher.find()) {
                try {
                    long j2 = (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
                    if (j < 0) {
                        return j2;
                    }
                    if (j != j2) {
                        Log.w(TAG, "Inconsistent headers [" + headerField + "] [" + headerField2 + "]");
                        return Math.max(j, j2);
                    }
                    return j;
                } catch (NumberFormatException e3) {
                    Log.e(TAG, "Unexpected Content-Range [" + headerField2 + "]");
                    return j;
                }
            }
            return j;
        }
        return j;
    }
}
