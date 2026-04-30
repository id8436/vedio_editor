package org.mortbay.jetty.servlet;

import com.google.gdata.data.analytics.Engagement;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import org.mortbay.util.LazyList;
import org.mortbay.util.SingletonList;
import org.mortbay.util.StringMap;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class PathMap extends HashMap implements Externalizable {
    private static String __pathSpecSeparators = System.getProperty("org.mortbay.http.PathMap.separators", ":,");
    Entry _default;
    List _defaultSingletonList;
    Set _entrySet;
    StringMap _exactMap;
    boolean _nodefault;
    Entry _prefixDefault;
    StringMap _prefixMap;
    StringMap _suffixMap;

    public static void setPathSpecSeparators(String str) {
        __pathSpecSeparators = str;
    }

    public PathMap() {
        super(11);
        this._prefixMap = new StringMap();
        this._suffixMap = new StringMap();
        this._exactMap = new StringMap();
        this._defaultSingletonList = null;
        this._prefixDefault = null;
        this._default = null;
        this._nodefault = false;
        this._entrySet = entrySet();
    }

    public PathMap(boolean z) {
        super(11);
        this._prefixMap = new StringMap();
        this._suffixMap = new StringMap();
        this._exactMap = new StringMap();
        this._defaultSingletonList = null;
        this._prefixDefault = null;
        this._default = null;
        this._nodefault = false;
        this._entrySet = entrySet();
        this._nodefault = z;
    }

    public PathMap(int i) {
        super(i);
        this._prefixMap = new StringMap();
        this._suffixMap = new StringMap();
        this._exactMap = new StringMap();
        this._defaultSingletonList = null;
        this._prefixDefault = null;
        this._default = null;
        this._nodefault = false;
        this._entrySet = entrySet();
    }

    public PathMap(Map map) {
        this._prefixMap = new StringMap();
        this._suffixMap = new StringMap();
        this._exactMap = new StringMap();
        this._defaultSingletonList = null;
        this._prefixDefault = null;
        this._default = null;
        this._nodefault = false;
        putAll(map);
        this._entrySet = entrySet();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(new HashMap(this));
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        putAll((HashMap) objectInput.readObject());
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public synchronized Object put(Object obj, Object obj2) {
        Object objPut;
        StringTokenizer stringTokenizer = new StringTokenizer(obj.toString(), __pathSpecSeparators);
        objPut = null;
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (!strNextToken.startsWith(URIUtil.SLASH) && !strNextToken.startsWith("*.")) {
                throw new IllegalArgumentException(new StringBuffer().append("PathSpec ").append(strNextToken).append(". must start with '/' or '*.'").toString());
            }
            objPut = super.put(strNextToken, obj2);
            Entry entry = new Entry(strNextToken, obj2);
            if (entry.getKey().equals(strNextToken)) {
                if (strNextToken.equals("/*")) {
                    this._prefixDefault = entry;
                } else if (strNextToken.endsWith("/*")) {
                    String strSubstring = strNextToken.substring(0, strNextToken.length() - 2);
                    entry.setMapped(strSubstring);
                    this._prefixMap.put(strSubstring, (Object) entry);
                    this._exactMap.put(strSubstring, (Object) entry);
                    this._exactMap.put(strNextToken.substring(0, strNextToken.length() - 1), (Object) entry);
                } else if (strNextToken.startsWith("*.")) {
                    this._suffixMap.put(strNextToken.substring(2), (Object) entry);
                } else if (strNextToken.equals(URIUtil.SLASH)) {
                    if (this._nodefault) {
                        this._exactMap.put(strNextToken, (Object) entry);
                    } else {
                        this._default = entry;
                        this._defaultSingletonList = SingletonList.newSingletonList(this._default);
                    }
                } else {
                    entry.setMapped(strNextToken);
                    this._exactMap.put(strNextToken, (Object) entry);
                }
            }
        }
        return objPut;
    }

    public Object match(String str) {
        Entry match = getMatch(str);
        if (match != null) {
            return match.getValue();
        }
        return null;
    }

    public Entry getMatch(String str) {
        Map.Entry entry;
        Map.Entry entry2;
        if (str == null) {
            return null;
        }
        int length = str.length();
        Map.Entry entry3 = this._exactMap.getEntry(str, 0, length);
        if (entry3 != null) {
            return (Entry) entry3.getValue();
        }
        int iLastIndexOf = length;
        do {
            iLastIndexOf = str.lastIndexOf(47, iLastIndexOf - 1);
            if (iLastIndexOf >= 0) {
                entry2 = this._prefixMap.getEntry(str, 0, iLastIndexOf);
            } else {
                if (this._prefixDefault != null) {
                    return this._prefixDefault;
                }
                int iIndexOf = 0;
                do {
                    iIndexOf = str.indexOf(46, iIndexOf + 1);
                    if (iIndexOf > 0) {
                        entry = this._suffixMap.getEntry(str, iIndexOf + 1, (length - iIndexOf) - 1);
                    } else {
                        return this._default;
                    }
                } while (entry == null);
                return (Entry) entry.getValue();
            }
        } while (entry2 == null);
        return (Entry) entry2.getValue();
    }

    public Object getLazyMatches(String str) {
        if (str == null) {
            return LazyList.getList(null);
        }
        int length = str.length();
        Map.Entry entry = this._exactMap.getEntry(str, 0, length);
        Object objAdd = entry != null ? LazyList.add(null, entry.getValue()) : null;
        int iLastIndexOf = length - 1;
        while (true) {
            iLastIndexOf = str.lastIndexOf(47, iLastIndexOf - 1);
            if (iLastIndexOf < 0) {
                break;
            }
            Map.Entry entry2 = this._prefixMap.getEntry(str, 0, iLastIndexOf);
            if (entry2 != null) {
                objAdd = LazyList.add(objAdd, entry2.getValue());
            }
        }
        if (this._prefixDefault != null) {
            objAdd = LazyList.add(objAdd, this._prefixDefault);
        }
        int iIndexOf = 0;
        while (true) {
            iIndexOf = str.indexOf(46, iIndexOf + 1);
            if (iIndexOf <= 0) {
                break;
            }
            Map.Entry entry3 = this._suffixMap.getEntry(str, iIndexOf + 1, (length - iIndexOf) - 1);
            if (entry3 != null) {
                objAdd = LazyList.add(objAdd, entry3.getValue());
            }
        }
        if (this._default != null) {
            if (objAdd == null) {
                return this._defaultSingletonList;
            }
            return LazyList.add(objAdd, this._default);
        }
        return objAdd;
    }

    public List getMatches(String str) {
        return LazyList.getList(getLazyMatches(str));
    }

    public boolean containsMatch(String str) {
        Entry match = getMatch(str);
        return (match == null || match.equals(this._default)) ? false : true;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public synchronized Object remove(Object obj) {
        if (obj != null) {
            String str = (String) obj;
            if (str.equals("/*")) {
                this._prefixDefault = null;
            } else if (str.endsWith("/*")) {
                this._prefixMap.remove(str.substring(0, str.length() - 2));
                this._exactMap.remove(str.substring(0, str.length() - 1));
                this._exactMap.remove(str.substring(0, str.length() - 2));
            } else if (str.startsWith("*.")) {
                this._suffixMap.remove(str.substring(2));
            } else if (str.equals(URIUtil.SLASH)) {
                this._default = null;
                this._defaultSingletonList = null;
            } else {
                this._exactMap.remove(str);
            }
        }
        return super.remove(obj);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        this._exactMap = new StringMap();
        this._prefixMap = new StringMap();
        this._suffixMap = new StringMap();
        this._default = null;
        this._defaultSingletonList = null;
        super.clear();
    }

    public static boolean match(String str, String str2) throws IllegalArgumentException {
        return match(str, str2, false);
    }

    public static boolean match(String str, String str2, boolean z) throws IllegalArgumentException {
        char cCharAt = str.charAt(0);
        if (cCharAt == '/') {
            if ((!z && str.length() == 1) || str.equals(str2) || isPathWildcardMatch(str, str2)) {
                return true;
            }
        } else if (cCharAt == '*') {
            return str2.regionMatches((str2.length() - str.length()) + 1, str, 1, str.length() - 1);
        }
        return false;
    }

    private static boolean isPathWildcardMatch(String str, String str2) {
        int length = str.length() - 2;
        if (str.endsWith("/*") && str2.regionMatches(0, str, 0, length)) {
            return str2.length() == length || '/' == str2.charAt(length);
        }
        return false;
    }

    public static String pathMatch(String str, String str2) {
        char cCharAt = str.charAt(0);
        if (cCharAt == '/') {
            if (str.length() != 1 && !str.equals(str2)) {
                if (isPathWildcardMatch(str, str2)) {
                    return str2.substring(0, str.length() - 2);
                }
            } else {
                return str2;
            }
        } else if (cCharAt == '*' && str2.regionMatches(str2.length() - (str.length() - 1), str, 1, str.length() - 1)) {
            return str2;
        }
        return null;
    }

    public static String pathInfo(String str, String str2) {
        if (str.charAt(0) != '/' || str.length() == 1) {
            return null;
        }
        boolean zIsPathWildcardMatch = isPathWildcardMatch(str, str2);
        if ((!str.equals(str2) || zIsPathWildcardMatch) && zIsPathWildcardMatch && str2.length() != str.length() - 2) {
            return str2.substring(str.length() - 2);
        }
        return null;
    }

    public static String relativePath(String str, String str2, String str3) {
        String strPathInfo = pathInfo(str2, str3);
        if (strPathInfo != null) {
            str3 = strPathInfo;
        }
        if (str3.startsWith("./")) {
            str3 = str3.substring(2);
        }
        if (str.endsWith(URIUtil.SLASH)) {
            if (str3.startsWith(URIUtil.SLASH)) {
                return new StringBuffer().append(str).append(str3.substring(1)).toString();
            }
            return new StringBuffer().append(str).append(str3).toString();
        }
        if (str3.startsWith(URIUtil.SLASH)) {
            return new StringBuffer().append(str).append(str3).toString();
        }
        return new StringBuffer().append(str).append(URIUtil.SLASH).append(str3).toString();
    }

    public class Entry implements Map.Entry {
        private Object key;
        private String mapped;
        private transient String string;
        private Object value;

        Entry(Object obj, Object obj2) {
            this.key = obj;
            this.value = obj2;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.key;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.value;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            throw new UnsupportedOperationException();
        }

        public String toString() {
            if (this.string == null) {
                this.string = new StringBuffer().append(this.key).append(Engagement.Comparison.EQ).append(this.value).toString();
            }
            return this.string;
        }

        public String getMapped() {
            return this.mapped;
        }

        void setMapped(String str) {
            this.mapped = str;
        }
    }
}
