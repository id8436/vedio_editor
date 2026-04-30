package com.google.api.client.googleapis.util;

import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.client.util.Beta;

/* JADX INFO: loaded from: classes3.dex */
@Beta
public final class Utils {
    public static JsonFactory getDefaultJsonFactory() {
        return JsonFactoryInstanceHolder.INSTANCE;
    }

    class JsonFactoryInstanceHolder {
        static final JsonFactory INSTANCE = new JacksonFactory();

        private JsonFactoryInstanceHolder() {
        }
    }

    public static HttpTransport getDefaultTransport() {
        return TransportInstanceHolder.INSTANCE;
    }

    class TransportInstanceHolder {
        static final HttpTransport INSTANCE = new NetHttpTransport();

        private TransportInstanceHolder() {
        }
    }

    private Utils() {
    }
}
