package com.google.gdata.client.calendar;

import android.support.v4.view.InputDeviceCompat;
import com.google.gdata.client.Query;
import com.google.gdata.data.DateTime;
import java.net.URL;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class CalendarQuery extends Query {
    private static final ExtendedPropertyMatch[] EMPTY_EXT_PROP_MATCH = new ExtendedPropertyMatch[0];
    public static final String EXT_PROP_QUERY = "extq";
    public static final String MAXIMUM_START_TIME = "start-max";
    public static final String MINIMUM_START_TIME = "start-min";

    public class ExtendedPropertyMatch {
        public static final int MAX_EXTENDED_PROPERTY_NAME_LENGTH = 44;
        public static final int MAX_EXTENDED_PROPERTY_VALUE_LENGTH = 1024;
        public static final String PROPERTY_NAME_REGEX = "[^:=]+";
        public static final String PROPERTY_VALUE_REGEX = "\\\"(?:[^\\\"\\\\]|(?:\\\\\\\\)|(?:\\\\\\\"))*\\\"|[^\\]]*";
        private String expr;
        private String name;
        public static final String SINGLE_EXT_PROP_QUERY_REGEX = "\\[([^:=]+):(\\\"(?:[^\\\"\\\\]|(?:\\\\\\\\)|(?:\\\\\\\"))*\\\"|[^\\]]*)\\]";
        public static final Pattern EXT_PROP_QUERY_PATTERN = Pattern.compile(SINGLE_EXT_PROP_QUERY_REGEX);

        public ExtendedPropertyMatch(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("Property name is null");
            }
            if (str2 == null) {
                throw new NullPointerException("Property value is null");
            }
            if (str.length() > 44) {
                throw new IllegalArgumentException("Property name length in characters must not be more than 44");
            }
            if (str2.length() > 1024) {
                throw new IllegalArgumentException("Property value length in characters must not be more than 1024");
            }
            this.name = str;
            this.expr = str2;
        }

        public String getName() {
            return this.name;
        }

        public String getExpression() {
            return this.expr;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append('[').append(this.name).append(':');
            appendExpr(sb);
            sb.append(']');
            return sb.toString();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ExtendedPropertyMatch)) {
                return false;
            }
            ExtendedPropertyMatch extendedPropertyMatch = (ExtendedPropertyMatch) obj;
            return safeEquals(this.name, extendedPropertyMatch.name) && safeEquals(this.expr, extendedPropertyMatch.expr);
        }

        public int hashCode() {
            return (this.name.hashCode() * InputDeviceCompat.SOURCE_KEYBOARD) + (this.expr.hashCode() * 17);
        }

        private static boolean safeEquals(Object obj, Object obj2) {
            return obj == obj2 || (obj != null && obj.equals(obj2));
        }

        private void appendExpr(StringBuilder sb) {
            if (this.expr.contains("]") || this.expr.contains("\"")) {
                sb.append('\"').append(this.expr.replaceAll("\\\\", "\\\\\\\\").replaceAll("\\\"", "\\\\\"")).append('\"');
            } else {
                sb.append(this.expr);
            }
        }

        public static ExtendedPropertyMatch[] arrayFromExtendedPropertyQueryString(String str) {
            LinkedList linkedList = new LinkedList();
            int iEnd = 0;
            Matcher matcher = EXT_PROP_QUERY_PATTERN.matcher(str);
            while (iEnd < str.length()) {
                if (!matcher.find(iEnd) || matcher.start() != iEnd) {
                    throw new IllegalArgumentException("Invalid extended property query:" + str);
                }
                iEnd = matcher.end();
                String strGroup = matcher.group(1);
                String strGroup2 = matcher.group(2);
                if (strGroup2.startsWith("\"") && strGroup2.endsWith("\"")) {
                    strGroup2 = strGroup2.substring(1, strGroup2.length() - 1).replaceAll("\\\\(.)", "$1");
                }
                linkedList.add(new ExtendedPropertyMatch(strGroup, strGroup2));
            }
            return (ExtendedPropertyMatch[]) linkedList.toArray(CalendarQuery.EMPTY_EXT_PROP_MATCH);
        }
    }

    public CalendarQuery(URL url) {
        super(url);
    }

    public void setMinimumStartTime(DateTime dateTime) {
        List<Query.CustomParameter> customParameters = getCustomParameters();
        Iterator<Query.CustomParameter> it = getCustomParameters(MINIMUM_START_TIME).iterator();
        while (it.hasNext()) {
            customParameters.remove(it.next());
        }
        if (dateTime != null) {
            customParameters.add(new Query.CustomParameter(MINIMUM_START_TIME, dateTime.toString()));
        }
    }

    public DateTime getMinimumStartTime() {
        List<Query.CustomParameter> customParameters = getCustomParameters(MINIMUM_START_TIME);
        if (customParameters.size() == 0) {
            return null;
        }
        return DateTime.parseDateTime(customParameters.get(0).getValue());
    }

    public void setMaximumStartTime(DateTime dateTime) {
        List<Query.CustomParameter> customParameters = getCustomParameters();
        Iterator<Query.CustomParameter> it = getCustomParameters(MAXIMUM_START_TIME).iterator();
        while (it.hasNext()) {
            customParameters.remove(it.next());
        }
        if (dateTime != null) {
            customParameters.add(new Query.CustomParameter(MAXIMUM_START_TIME, dateTime.toString()));
        }
    }

    public DateTime getMaximumStartTime() {
        List<Query.CustomParameter> customParameters = getCustomParameters(MAXIMUM_START_TIME);
        if (customParameters.size() == 0) {
            return null;
        }
        return DateTime.parseDateTime(customParameters.get(0).getValue());
    }

    public void setExtendedPropertyQuery(ExtendedPropertyMatch... extendedPropertyMatchArr) {
        if (extendedPropertyMatchArr == null || extendedPropertyMatchArr.length == 0) {
            setStringCustomParameter(EXT_PROP_QUERY, null);
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (ExtendedPropertyMatch extendedPropertyMatch : extendedPropertyMatchArr) {
            sb.append(extendedPropertyMatch.toString());
        }
        setStringCustomParameter(EXT_PROP_QUERY, sb.toString());
    }

    public ExtendedPropertyMatch[] getExtendedPropertyQuery() {
        String stringCustomParameter = getStringCustomParameter(EXT_PROP_QUERY);
        return stringCustomParameter == null ? EMPTY_EXT_PROP_MATCH : ExtendedPropertyMatch.arrayFromExtendedPropertyQueryString(stringCustomParameter);
    }
}
