package com.adobe.mobile;

import android.content.SharedPreferences;
import com.adobe.mobile.StaticMethods;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class AnalyticsTrackLifetimeValueIncrease {
    private static final String LOCAL_STORAGE_LIFETIME_VALUE_KEY = "ADB_LIFETIME_VALUE";
    private static final String LTV_ACTION_NAME = "LifetimeValueIncrease";
    protected static final String LTV_AMOUNT_KEY = "a.ltv.amount";
    private static final String LTV_INCREASE_KEY = "a.ltv.increase";
    private static final Object _lifetimeValueMutex = new Object();

    AnalyticsTrackLifetimeValueIncrease() {
    }

    public static void trackLifetimeValueIncrease(BigDecimal bigDecimal, Map<String, Object> map) {
        if (bigDecimal == null || bigDecimal.signum() == -1) {
            StaticMethods.logWarningFormat("Analytics - trackLifetimeValueIncrease failed, invalid amount specified '%f'", bigDecimal);
            return;
        }
        incrementLifetimeValue(bigDecimal);
        HashMap map2 = new HashMap();
        if (map != null) {
            map2.putAll(map);
        }
        if (getLifetimeValue() != null) {
            Lifecycle.updateContextData(new HashMap<String, Object>() { // from class: com.adobe.mobile.AnalyticsTrackLifetimeValueIncrease.1
                {
                    put(AnalyticsTrackLifetimeValueIncrease.LTV_AMOUNT_KEY, AnalyticsTrackLifetimeValueIncrease.getLifetimeValue());
                }
            });
            map2.put(LTV_AMOUNT_KEY, getLifetimeValue());
            map2.put(LTV_INCREASE_KEY, bigDecimal);
            AnalyticsTrackInternal.trackInternal(LTV_ACTION_NAME, map2, StaticMethods.getTimeSince1970());
        }
    }

    protected static BigDecimal getLifetimeValue() {
        BigDecimal bigDecimal;
        synchronized (_lifetimeValueMutex) {
            try {
                bigDecimal = new BigDecimal(StaticMethods.getSharedPreferences().getString(LOCAL_STORAGE_LIFETIME_VALUE_KEY, "0"));
            } catch (StaticMethods.NullContextException e2) {
                StaticMethods.logErrorFormat("Analytics - Error getting current lifetime value:(%s).", e2.getMessage());
                bigDecimal = null;
            } catch (NumberFormatException e3) {
                bigDecimal = new BigDecimal("0");
            }
        }
        return bigDecimal;
    }

    protected static void setLifetimeValue(BigDecimal bigDecimal) {
        synchronized (_lifetimeValueMutex) {
            try {
                SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
                if (bigDecimal == null || bigDecimal.signum() == -1) {
                    sharedPreferencesEditor.putString(LOCAL_STORAGE_LIFETIME_VALUE_KEY, "0.00");
                } else {
                    sharedPreferencesEditor.putString(LOCAL_STORAGE_LIFETIME_VALUE_KEY, bigDecimal.toString());
                }
                sharedPreferencesEditor.commit();
            } catch (StaticMethods.NullContextException e2) {
                StaticMethods.logErrorFormat("Analytics - Error updating lifetime value: (%s).", e2.getMessage());
            }
        }
    }

    private static void incrementLifetimeValue(BigDecimal bigDecimal) {
        synchronized (_lifetimeValueMutex) {
            BigDecimal lifetimeValue = getLifetimeValue();
            if (bigDecimal != null && bigDecimal.signum() != -1 && lifetimeValue != null) {
                setLifetimeValue(lifetimeValue.add(bigDecimal));
            }
        }
    }
}
