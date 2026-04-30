package com.google.android.gms.common.data;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.simple.JSONArray;

/* JADX INFO: loaded from: classes3.dex */
public final class DataBufferUtils {
    private DataBufferUtils() {
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freezeAndClose(DataBuffer<E> dataBuffer) {
        JSONArray jSONArray = (ArrayList<T>) new ArrayList(dataBuffer.getCount());
        try {
            Iterator<E> it = dataBuffer.iterator();
            while (it.hasNext()) {
                jSONArray.add(it.next().freeze());
            }
            return jSONArray;
        } finally {
            dataBuffer.close();
        }
    }

    public static boolean hasData(DataBuffer<?> dataBuffer) {
        return dataBuffer != null && dataBuffer.getCount() > 0;
    }

    public static boolean hasNextPage(DataBuffer<?> dataBuffer) {
        Bundle bundleZzlm = dataBuffer.zzlm();
        return (bundleZzlm == null || bundleZzlm.getString("next_page_token") == null) ? false : true;
    }

    public static boolean hasPrevPage(DataBuffer<?> dataBuffer) {
        Bundle bundleZzlm = dataBuffer.zzlm();
        return (bundleZzlm == null || bundleZzlm.getString("prev_page_token") == null) ? false : true;
    }
}
