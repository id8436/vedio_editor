package com.google.gdata.client.youtube;

import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.behance.sdk.util.BehanceSDKConstants;
import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.google.gdata.client.GDataProtocol;
import com.google.gdata.client.Query;
import com.google.gdata.data.geo.impl.GeoRssWhere;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class YouTubeQuery extends Query {
    private static final String FORMAT = "format";
    private static final String LANGUAGE_RESTRICT = "lr";
    private static final String LOCATION = "location";
    private static final String LOCATION_RADIUS = "location-radius";
    private static final String ORDERBY = "orderby";
    private static final String RACY = "racy";
    private static final String RACY_EXCLUDE = "exclude";
    private static final String RACY_INCLUDE = "include";
    private static final String RESTRICTION = "restriction";
    private static final String SAFE_SEARCH = "safeSearch";
    private static final String TIME = "time";
    private static final String UPLOADER = "uploader";
    private static final String VQ = "vq";
    private static final Pattern COUNTRY_CODE_PATTERN = Pattern.compile("[a-zA-Z]{2}");
    private static final Pattern IP_V4_PATTERN = Pattern.compile("\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}");
    private static final Pattern LOCATION_RADIUS_PATTERN = Pattern.compile("\\d+(ft|mi|m|km)");
    private static final Pattern RELEVANCE_LANGUAGE_PATTERN = Pattern.compile("_lang_([^_]+)");

    /* JADX INFO: loaded from: classes3.dex */
    public enum Time {
        TODAY("today"),
        THIS_WEEK("this_week"),
        THIS_MONTH("this_month"),
        ALL_TIME("all_time");

        private static Map<String, Time> PARAMETER_TO_TIME;
        private final String value;

        static {
            HashMap map = new HashMap();
            for (Time time : values()) {
                map.put(time.toParameterValue(), time);
            }
            PARAMETER_TO_TIME = Collections.unmodifiableMap(map);
        }

        Time(String str) {
            this.value = str;
        }

        public String toParameterValue() {
            return this.value;
        }

        public static Time fromParameterValue(String str) {
            if (str == null) {
                return null;
            }
            Time time = PARAMETER_TO_TIME.get(str);
            if (time == null) {
                throw new IllegalStateException("Cannot convert time value: " + str);
            }
            return time;
        }
    }

    public enum OrderBy {
        RELEVANCE("relevance"),
        UPDATED(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED),
        VIEW_COUNT("viewCount"),
        RATING("rating"),
        PUBLISHED(BehanceSDKPublishConstants.KEY_PUBLISHED);

        private static Map<String, OrderBy> PARAMETER_TO_ORDERBY;
        private final String value;

        static {
            HashMap map = new HashMap();
            for (OrderBy orderBy : values()) {
                map.put(orderBy.toParameterValue(), orderBy);
            }
            PARAMETER_TO_ORDERBY = Collections.unmodifiableMap(map);
        }

        OrderBy(String str) {
            this.value = str;
        }

        public String toParameterValue() {
            return this.value;
        }

        public static OrderBy fromParameterValue(String str) {
            if (str == null) {
                return null;
            }
            OrderBy orderBy = PARAMETER_TO_ORDERBY.get(str);
            if (orderBy == null) {
                throw new IllegalStateException("Cannot convert orderBy value: " + str);
            }
            return orderBy;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public enum SafeSearch {
        NONE("none"),
        MODERATE("moderate"),
        STRICT(GDataProtocol.Parameter.STRICT);

        private static Map<String, SafeSearch> PARAMETER_TO_SAFESEARCH;
        private final String value;

        static {
            HashMap map = new HashMap();
            for (SafeSearch safeSearch : values()) {
                map.put(safeSearch.toParameterValue(), safeSearch);
            }
            PARAMETER_TO_SAFESEARCH = Collections.unmodifiableMap(map);
        }

        SafeSearch(String str) {
            this.value = str;
        }

        public String toParameterValue() {
            return this.value;
        }

        public static SafeSearch fromParameterValue(String str) {
            if (str == null) {
                return null;
            }
            SafeSearch safeSearch = PARAMETER_TO_SAFESEARCH.get(str);
            if (safeSearch == null) {
                throw new IllegalStateException("Cannot convert safeSearch value: " + str);
            }
            return safeSearch;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public enum Uploader {
        PARTNER("partner");

        private static Map<String, Uploader> PARAMETER_TO_UPLOADER;
        private final String value;

        static {
            HashMap map = new HashMap();
            for (Uploader uploader : values()) {
                map.put(uploader.toParameterValue(), uploader);
            }
            PARAMETER_TO_UPLOADER = Collections.unmodifiableMap(map);
        }

        Uploader(String str) {
            this.value = str;
        }

        public String toParameterValue() {
            return this.value;
        }

        public static Uploader fromParameterValue(String str) {
            if (str == null) {
                return null;
            }
            Uploader uploader = PARAMETER_TO_UPLOADER.get(str);
            if (uploader == null) {
                throw new IllegalStateException("Cannot convert uploader value: " + str);
            }
            return uploader;
        }
    }

    public YouTubeQuery(URL url) {
        super(url);
    }

    @Deprecated
    public String getVideoQuery() {
        return getCustomParameterValue(VQ);
    }

    @Deprecated
    public void setVideoQuery(String str) {
        overwriteCustomParameter(VQ, str);
    }

    public Time getTime() {
        return Time.fromParameterValue(getCustomParameterValue("time"));
    }

    public void setTime(Time time) {
        overwriteCustomParameter("time", time == null ? null : time.toParameterValue());
    }

    public Set<Integer> getFormats() {
        String customParameterValue = getCustomParameterValue(FORMAT);
        if (customParameterValue == null) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        String[] strArrSplit = customParameterValue.trim().split(" *, *");
        for (String str : strArrSplit) {
            linkedHashSet.add(new Integer(str));
        }
        return linkedHashSet;
    }

    public void setFormats(int... iArr) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (int i : iArr) {
            linkedHashSet.add(Integer.valueOf(i));
        }
        setFormats(linkedHashSet);
    }

    public void setFormats(Set<Integer> set) {
        if (set == null || set.isEmpty()) {
            overwriteCustomParameter(FORMAT, null);
            return;
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        Iterator<Integer> it = set.iterator();
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                int iIntValue = it.next().intValue();
                if (z2) {
                    z = false;
                } else {
                    sb.append(',');
                    z = z2;
                }
                sb.append(iIntValue);
            } else {
                overwriteCustomParameter(FORMAT, sb.toString());
                return;
            }
        }
    }

    public void setLanguageRestrict(String str) {
        overwriteCustomParameter(LANGUAGE_RESTRICT, str);
    }

    public String getLanguageRestrict() {
        return getCustomParameterValue(LANGUAGE_RESTRICT);
    }

    public OrderBy getOrderby() {
        String customParameterValue = getCustomParameterValue("orderby");
        return (customParameterValue == null || !customParameterValue.startsWith("relevance_")) ? OrderBy.fromParameterValue(customParameterValue) : OrderBy.RELEVANCE;
    }

    public void setOrderBy(OrderBy orderBy) {
        overwriteCustomParameter("orderby", orderBy == null ? null : orderBy.toParameterValue());
    }

    public void setOrderByRelevanceForLanguage(String str) {
        overwriteCustomParameter("orderby", str == null ? OrderBy.RELEVANCE.toParameterValue() : "relevance_lang_" + str);
    }

    public String getOrderByRelevanceForLanguage() {
        String customParameterValue = getCustomParameterValue("orderby");
        if (customParameterValue == null) {
            return null;
        }
        if (getOrderby() != OrderBy.RELEVANCE) {
            throw new IllegalStateException("Not ordering by relevance. Please check with getOrderBy() first");
        }
        if (customParameterValue == null) {
            return null;
        }
        Matcher matcher = RELEVANCE_LANGUAGE_PATTERN.matcher(customParameterValue);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    public SafeSearch getSafeSearch() {
        return SafeSearch.fromParameterValue(getCustomParameterValue(SAFE_SEARCH));
    }

    public void setSafeSearch(SafeSearch safeSearch) {
        overwriteCustomParameter(SAFE_SEARCH, safeSearch == null ? null : safeSearch.toParameterValue());
    }

    @Deprecated
    public boolean getIncludeRacy() {
        return RACY_INCLUDE.equals(getCustomParameterValue(RACY));
    }

    @Deprecated
    public void setIncludeRacy(Boolean bool) {
        String str;
        if (bool == null) {
            str = null;
        } else {
            str = bool.booleanValue() ? RACY_INCLUDE : RACY_EXCLUDE;
        }
        overwriteCustomParameter(RACY, str);
    }

    public void setLocation(GeoRssWhere geoRssWhere) {
        StringBuilder sb = new StringBuilder();
        if (geoRssWhere != null) {
            sb.append(geoRssWhere.getLatitude()).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR).append(geoRssWhere.getLongitude());
        }
        if (hasRestrictLocation()) {
            sb.append("!");
        }
        overwriteCustomParameter("location", sb.toString().equals("") ? null : sb.toString());
    }

    public GeoRssWhere getLocation() {
        String[] strArrSplit = getCustomParameterValue("location").replaceAll("!", "").split(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
        return new GeoRssWhere(Double.valueOf(Double.parseDouble(strArrSplit[0])), Double.valueOf(Double.parseDouble(strArrSplit[1])));
    }

    public void setLocationRadius(String str) {
        if (str != null && !LOCATION_RADIUS_PATTERN.matcher(str).matches()) {
            throw new IllegalArgumentException("Invalid location radius: " + str);
        }
        overwriteCustomParameter(LOCATION_RADIUS, str);
    }

    public String getLocationRadius() {
        return getCustomParameterValue(LOCATION_RADIUS);
    }

    public void setRestrictLocation(boolean z) {
        String customParameterValue = getCustomParameterValue("location");
        if (customParameterValue == null) {
            customParameterValue = "";
        }
        if (z) {
            if (!customParameterValue.endsWith("!")) {
                overwriteCustomParameter("location", customParameterValue + "!");
            }
        } else {
            String strReplaceAll = customParameterValue.replaceAll("!", "");
            if (strReplaceAll.length() == 0) {
                strReplaceAll = null;
            }
            overwriteCustomParameter("location", strReplaceAll);
        }
    }

    public boolean hasRestrictLocation() {
        String customParameterValue = getCustomParameterValue("location");
        return customParameterValue != null && customParameterValue.endsWith("!");
    }

    public String getCountryRestriction() {
        String customParameterValue = getCustomParameterValue(RESTRICTION);
        if (customParameterValue == null) {
            return null;
        }
        if (!COUNTRY_CODE_PATTERN.matcher(customParameterValue).matches()) {
            customParameterValue = null;
        }
        return customParameterValue;
    }

    public void setCountryRestriction(String str) {
        if (str != null && !COUNTRY_CODE_PATTERN.matcher(str).matches()) {
            throw new IllegalArgumentException("Invalid country code: " + str);
        }
        overwriteCustomParameter(RESTRICTION, str);
    }

    public String getIpRestriction() {
        String customParameterValue = getCustomParameterValue(RESTRICTION);
        if (customParameterValue == null) {
            return null;
        }
        if (!IP_V4_PATTERN.matcher(customParameterValue).matches()) {
            customParameterValue = null;
        }
        return customParameterValue;
    }

    public void setIpRestriction(String str) {
        if (str != null && !IP_V4_PATTERN.matcher(str).matches()) {
            throw new IllegalArgumentException("Invalid IP v4 address: " + str);
        }
        overwriteCustomParameter(RESTRICTION, str);
    }

    void overwriteCustomParameter(String str, String str2) {
        List<Query.CustomParameter> customParameters = getCustomParameters();
        Iterator<Query.CustomParameter> it = getCustomParameters(str).iterator();
        while (it.hasNext()) {
            customParameters.remove(it.next());
        }
        if (str2 != null) {
            customParameters.add(new Query.CustomParameter(str, str2));
        }
    }

    String getCustomParameterValue(String str) {
        List<Query.CustomParameter> customParameters = getCustomParameters(str);
        if (customParameters.isEmpty()) {
            return null;
        }
        return customParameters.get(0).getValue();
    }

    public Uploader getUploader() {
        return Uploader.fromParameterValue(getCustomParameterValue("uploader"));
    }

    public void setUploader(Uploader uploader) {
        overwriteCustomParameter("uploader", uploader == null ? null : uploader.toParameterValue());
    }
}
