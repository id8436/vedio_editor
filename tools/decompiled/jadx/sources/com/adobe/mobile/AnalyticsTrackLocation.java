package com.adobe.mobile;

import android.location.Location;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class AnalyticsTrackLocation {
    private static final String ACCURACY_KEY = "a.loc.acc";
    private static final String LOCATION_ACTION_NAME = "Location";
    private static final String LOCATION_LAT_PART1_KEY = "a.loc.lat.a";
    private static final String LOCATION_LAT_PART2_KEY = "a.loc.lat.b";
    private static final String LOCATION_LAT_PART3_KEY = "a.loc.lat.c";
    private static final String LOCATION_LON_PART1_KEY = "a.loc.lon.a";
    private static final String LOCATION_LON_PART2_KEY = "a.loc.lon.b";
    private static final String LOCATION_LON_PART3_KEY = "a.loc.lon.c";
    private static final String POI_DIST_KEY = "a.loc.dist";
    private static final String POI_NAME_KEY = "a.loc.poi";
    private static final String WHOLE_ONLY_FLOAT_FORMAT = "%.0f";
    private static final String ZERO_PADDED_11_6_FLOAT_FORMAT = "% 011.6f";

    AnalyticsTrackLocation() {
    }

    public static void trackLocation(Location location, Map<String, Object> map) {
        if (location == null) {
            StaticMethods.logWarningFormat("Analytics - trackLocation failed, invalid location specified", new Object[0]);
            return;
        }
        String str = String.format(Locale.US, ZERO_PADDED_11_6_FLOAT_FORMAT, Double.valueOf(location.getLatitude()));
        String str2 = String.format(Locale.US, ZERO_PADDED_11_6_FLOAT_FORMAT, Double.valueOf(location.getLongitude()));
        HashMap map2 = new HashMap();
        if (map != null) {
            map2.putAll(map);
        }
        map2.put(LOCATION_LAT_PART1_KEY, str.substring(0, 6).trim());
        map2.put(LOCATION_LAT_PART2_KEY, str.substring(6, 8));
        map2.put(LOCATION_LAT_PART3_KEY, str.substring(8, 10));
        map2.put(LOCATION_LON_PART1_KEY, str2.substring(0, 6).trim());
        map2.put(LOCATION_LON_PART2_KEY, str2.substring(6, 8));
        map2.put(LOCATION_LON_PART3_KEY, str2.substring(8, 10));
        if (location.hasAccuracy() && location.getAccuracy() > 0.0f) {
            map2.put(ACCURACY_KEY, String.format(Locale.US, WHOLE_ONLY_FLOAT_FORMAT, Float.valueOf(location.getAccuracy())));
        }
        TargetWorker.removePersistentParameter(POI_NAME_KEY);
        TargetWorker.removePersistentParameter(POI_DIST_KEY);
        Lifecycle.removeContextData(POI_NAME_KEY);
        List<List<Object>> pointsOfInterest = MobileConfig.getInstance().getPointsOfInterest();
        if (pointsOfInterest != null) {
            Iterator<List<Object>> it = pointsOfInterest.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                List<Object> next = it.next();
                if (next != null && next.size() == 4) {
                    try {
                        String string = next.get(0).toString();
                        double dDoubleValue = ((Double) next.get(1)).doubleValue();
                        double dDoubleValue2 = ((Double) next.get(2)).doubleValue();
                        double dDoubleValue3 = ((Double) next.get(3)).doubleValue();
                        Location location2 = new Location("poi");
                        location2.setLatitude(dDoubleValue);
                        location2.setLongitude(dDoubleValue2);
                        double dDistanceTo = location2.distanceTo(location);
                        if (dDistanceTo <= dDoubleValue3 && string != null) {
                            map2.put(POI_NAME_KEY, string);
                            TargetWorker.addPersistentParameter(POI_NAME_KEY, string);
                            map2.put(POI_DIST_KEY, String.format(Locale.US, WHOLE_ONLY_FLOAT_FORMAT, Double.valueOf(dDistanceTo)));
                            TargetWorker.addPersistentParameter(POI_DIST_KEY, String.valueOf(dDistanceTo));
                            HashMap map3 = new HashMap();
                            map3.put(POI_NAME_KEY, string);
                            Lifecycle.updateContextData(map3);
                            break;
                        }
                    } catch (ClassCastException e2) {
                        StaticMethods.logWarningFormat("Analytics - Invalid data for point of interest(%s)", e2.getLocalizedMessage());
                    }
                }
            }
        }
        AnalyticsTrackInternal.trackInternal("Location", map2, StaticMethods.getTimeSince1970());
    }
}
