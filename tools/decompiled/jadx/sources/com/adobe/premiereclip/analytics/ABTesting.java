package com.adobe.premiereclip.analytics;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.time.DateUtils;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ABTesting {
    protected Context context;
    protected final String successTargetName;
    protected final String targetName;
    protected final long TEST_REFRESH_TIMEOUT = DateUtils.MILLIS_PER_DAY;
    protected Map<String, Object> defaultContentMap = new HashMap();

    public interface ABInterface {
    }

    public abstract void decideGroup(ABInterface aBInterface);

    public ABTesting(String str, String str2, Context context) {
        this.targetName = str;
        this.successTargetName = str2;
        this.context = context;
    }
}
