package com.google.api.client.util.store;

import com.google.gdata.data.Category;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class DataStoreUtils {
    public static String toString(DataStore<?> dataStore) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(Category.SCHEME_PREFIX);
            boolean z = true;
            for (String str : dataStore.keySet()) {
                if (z) {
                    z = false;
                } else {
                    sb.append(", ");
                }
                sb.append(str).append('=').append(dataStore.get(str));
            }
            return sb.append(Category.SCHEME_SUFFIX).toString();
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    private DataStoreUtils() {
    }
}
