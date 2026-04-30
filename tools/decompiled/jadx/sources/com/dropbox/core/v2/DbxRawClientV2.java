package com.dropbox.core.v2;

import com.d.a.a.d;
import com.d.a.a.g;
import com.d.a.a.m;
import com.dropbox.core.BadResponseException;
import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.DbxRequestUtil;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.NetworkIOException;
import com.dropbox.core.RetryException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.util.LangUtil;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DbxRawClientV2 {
    private static final d JSON = new d();
    private static final Random RAND = new Random();
    public static final String USER_AGENT_ID = "OfficialDropboxJavaSDKv2";
    private final DbxHost host;
    private final DbxRequestConfig requestConfig;
    private final String userId;

    interface RetriableExecution<T> {
        T execute() throws DbxException, DbxWrappedException;
    }

    protected abstract void addAuthHeaders(List<HttpRequestor.Header> list);

    protected DbxRawClientV2(DbxRequestConfig dbxRequestConfig, DbxHost dbxHost, String str) {
        if (dbxRequestConfig == null) {
            throw new NullPointerException("requestConfig");
        }
        if (dbxHost == null) {
            throw new NullPointerException("host");
        }
        this.requestConfig = dbxRequestConfig;
        this.host = dbxHost;
        this.userId = str;
    }

    public <ArgT, ResT, ErrT> ResT rpcStyle(final String str, final String str2, ArgT argt, boolean z, StoneSerializer<ArgT> stoneSerializer, final StoneSerializer<ResT> stoneSerializer2, final StoneSerializer<ErrT> stoneSerializer3) throws DbxException, DbxWrappedException {
        final byte[] bArrWriteAsBytes = writeAsBytes(stoneSerializer, argt);
        final ArrayList arrayList = new ArrayList();
        if (!z) {
            addAuthHeaders(arrayList);
        }
        if (!this.host.getNotify().equals(str)) {
            DbxRequestUtil.addUserLocaleHeader(arrayList, this.requestConfig);
        }
        arrayList.add(new HttpRequestor.Header("Content-Type", "application/json; charset=utf-8"));
        return (ResT) executeRetriable(this.requestConfig.getMaxRetries(), new RetriableExecution<ResT>() { // from class: com.dropbox.core.v2.DbxRawClientV2.1
            private String userIdAnon;

            @Override // com.dropbox.core.v2.DbxRawClientV2.RetriableExecution
            public ResT execute() throws DbxException, DbxWrappedException {
                HttpRequestor.Response responseStartPostRaw = DbxRequestUtil.startPostRaw(DbxRawClientV2.this.requestConfig, DbxRawClientV2.USER_AGENT_ID, str, str2, bArrWriteAsBytes, arrayList);
                try {
                    switch (responseStartPostRaw.getStatusCode()) {
                        case 200:
                            return (ResT) stoneSerializer2.deserialize(responseStartPostRaw.getBody());
                        case 409:
                            throw DbxWrappedException.fromResponse(stoneSerializer3, responseStartPostRaw, this.userIdAnon);
                        default:
                            throw DbxRequestUtil.unexpectedStatus(responseStartPostRaw, this.userIdAnon);
                    }
                } catch (m e2) {
                    throw new BadResponseException(DbxRequestUtil.getRequestId(responseStartPostRaw), "Bad JSON: " + e2.getMessage(), e2);
                } catch (IOException e3) {
                    throw new NetworkIOException(e3);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public RetriableExecution<ResT> init(String str3) {
                this.userIdAnon = str3;
                return this;
            }
        }.init(this.userId));
    }

    public <ArgT, ResT, ErrT> DbxDownloader<ResT> downloadStyle(final String str, final String str2, ArgT argt, boolean z, List<HttpRequestor.Header> list, StoneSerializer<ArgT> stoneSerializer, final StoneSerializer<ResT> stoneSerializer2, final StoneSerializer<ErrT> stoneSerializer3) throws DbxException, DbxWrappedException {
        final ArrayList arrayList = new ArrayList(list);
        if (!z) {
            addAuthHeaders(arrayList);
        }
        DbxRequestUtil.addUserLocaleHeader(arrayList, this.requestConfig);
        arrayList.add(new HttpRequestor.Header("Dropbox-API-Arg", headerSafeJson(stoneSerializer, argt)));
        arrayList.add(new HttpRequestor.Header("Content-Type", ""));
        final byte[] bArr = new byte[0];
        return (DbxDownloader) executeRetriable(this.requestConfig.getMaxRetries(), new RetriableExecution<DbxDownloader<ResT>>() { // from class: com.dropbox.core.v2.DbxRawClientV2.2
            private String userIdAnon;

            @Override // com.dropbox.core.v2.DbxRawClientV2.RetriableExecution
            public DbxDownloader<ResT> execute() throws DbxException, DbxWrappedException {
                HttpRequestor.Response responseStartPostRaw = DbxRequestUtil.startPostRaw(DbxRawClientV2.this.requestConfig, DbxRawClientV2.USER_AGENT_ID, str, str2, bArr, arrayList);
                String requestId = DbxRequestUtil.getRequestId(responseStartPostRaw);
                try {
                    switch (responseStartPostRaw.getStatusCode()) {
                        case 200:
                        case 206:
                            List<String> list2 = responseStartPostRaw.getHeaders().get("dropbox-api-result");
                            if (list2 == null) {
                                throw new BadResponseException(requestId, "Missing Dropbox-API-Result header; " + responseStartPostRaw.getHeaders());
                            }
                            if (list2.size() == 0) {
                                throw new BadResponseException(requestId, "No Dropbox-API-Result header; " + responseStartPostRaw.getHeaders());
                            }
                            String str3 = list2.get(0);
                            if (str3 == null) {
                                throw new BadResponseException(requestId, "Null Dropbox-API-Result header; " + responseStartPostRaw.getHeaders());
                            }
                            return new DbxDownloader<>(stoneSerializer2.deserialize(str3), responseStartPostRaw.getBody());
                        case 409:
                            throw DbxWrappedException.fromResponse(stoneSerializer3, responseStartPostRaw, this.userIdAnon);
                        default:
                            throw DbxRequestUtil.unexpectedStatus(responseStartPostRaw, this.userIdAnon);
                    }
                } catch (m e2) {
                    throw new BadResponseException(requestId, "Bad JSON: " + e2.getMessage(), e2);
                } catch (IOException e3) {
                    throw new NetworkIOException(e3);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public RetriableExecution<DbxDownloader<ResT>> init(String str3) {
                this.userIdAnon = str3;
                return this;
            }
        }.init(this.userId));
    }

    private static <T> byte[] writeAsBytes(StoneSerializer<T> stoneSerializer, T t) throws DbxException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            stoneSerializer.serialize(t, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            throw LangUtil.mkAssert("Impossible", e2);
        }
    }

    private static <T> String headerSafeJson(StoneSerializer<T> stoneSerializer, T t) {
        StringWriter stringWriter = new StringWriter();
        try {
            g gVarA = JSON.a(stringWriter);
            gVarA.a(126);
            stoneSerializer.serialize(t, gVarA);
            gVarA.flush();
            return stringWriter.toString();
        } catch (IOException e2) {
            throw LangUtil.mkAssert("Impossible", e2);
        }
    }

    public <ArgT> HttpRequestor.Uploader uploadStyle(String str, String str2, ArgT argt, boolean z, StoneSerializer<ArgT> stoneSerializer) throws DbxException {
        String strBuildUri = DbxRequestUtil.buildUri(str, str2);
        ArrayList arrayList = new ArrayList();
        if (!z) {
            addAuthHeaders(arrayList);
        }
        DbxRequestUtil.addUserLocaleHeader(arrayList, this.requestConfig);
        arrayList.add(new HttpRequestor.Header("Content-Type", "application/octet-stream"));
        List<HttpRequestor.Header> listAddUserAgentHeader = DbxRequestUtil.addUserAgentHeader(arrayList, this.requestConfig, USER_AGENT_ID);
        listAddUserAgentHeader.add(new HttpRequestor.Header("Dropbox-API-Arg", headerSafeJson(stoneSerializer, argt)));
        try {
            return this.requestConfig.getHttpRequestor().startPost(strBuildUri, listAddUserAgentHeader);
        } catch (IOException e2) {
            throw new NetworkIOException(e2);
        }
    }

    public DbxRequestConfig getRequestConfig() {
        return this.requestConfig;
    }

    public DbxHost getHost() {
        return this.host;
    }

    public String getUserId() {
        return this.userId;
    }

    private static <T> T executeRetriable(int i, RetriableExecution<T> retriableExecution) throws DbxException, DbxWrappedException {
        if (i == 0) {
            return retriableExecution.execute();
        }
        int i2 = 0;
        while (true) {
            try {
                return retriableExecution.execute();
            } catch (RetryException e2) {
                if (i2 < i) {
                    i2++;
                    sleepQuietlyWithJitter(e2.getBackoffMillis());
                } else {
                    throw e2;
                }
            }
        }
    }

    private static void sleepQuietlyWithJitter(long j) {
        long jNextInt = ((long) RAND.nextInt(1000)) + j;
        if (jNextInt > 0) {
            try {
                Thread.sleep(jNextInt);
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
            }
        }
    }
}
