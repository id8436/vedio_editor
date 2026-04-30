package com.c.a.a;

import com.behance.sdk.util.BehanceSDKConstants;
import com.google.gdata.data.Category;
import com.google.gdata.data.analytics.Engagement;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.apache.commons.io.IOUtils;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

/* JADX INFO: compiled from: UriTemplate.java */
/* JADX INFO: loaded from: classes.dex */
public class e implements Serializable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final char[] f1302c = {'+', '#', '.', IOUtils.DIR_SEPARATOR_UNIX, ';', '?', '&', '!', '='};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final BitSet f1303d = new BitSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f1306e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private LinkedList<g> f1308g;
    private b[] h;
    private String[] i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    transient DateTimeFormatter f1304a = DateTimeFormat.forPattern("yyyy-MM-dd'T'HH:mm:ss.SSSZ");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Deprecated
    protected DateFormat f1305b = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<String, Object> f1307f = new LinkedHashMap();

    static {
        for (int i = 0; i < f1302c.length; i++) {
            f1303d.set(f1302c[i]);
        }
    }

    private e(String str) throws d {
        this.f1306e = str;
        c();
    }

    public static final e a(String str) throws d {
        return new e(str);
    }

    public b[] a() {
        return this.h;
    }

    public String[] b() {
        if (this.i == null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (b bVar : a()) {
                Iterator<com.c.a.a.a.e> it = bVar.c().iterator();
                while (it.hasNext()) {
                    linkedHashSet.add(it.next().d());
                }
            }
            this.i = (String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]);
        }
        return this.i;
    }

    protected void c() throws d {
        this.f1308g = new com.c.a.a.a.c().a(e());
        f();
    }

    private void f() {
        LinkedList linkedList = new LinkedList();
        for (g gVar : this.f1308g) {
            if (gVar instanceof b) {
                linkedList.add((b) gVar);
            }
        }
        this.h = (b[]) linkedList.toArray(new b[linkedList.size()]);
    }

    public String d() throws m {
        String strE = e();
        String strReplaceAll = strE;
        for (b bVar : this.h) {
            strReplaceAll = strReplaceAll.replaceAll(bVar.a(), a(bVar, false));
        }
        return strReplaceAll;
    }

    public String e() {
        return this.f1306e;
    }

    public e a(String str, Object obj) {
        this.f1307f.put(str, obj);
        return this;
    }

    public static boolean b(String str) {
        return f1303d.get(str.toCharArray()[0]);
    }

    private String a(b bVar, boolean z) throws m {
        com.c.a.a.a.b bVarB = bVar.b();
        List<String> listB = b(bVar, z);
        String strA = z ? a(bVar, listB) : a(bVarB.b(), listB);
        if (strA != null) {
            if (!z && bVarB != com.c.a.a.a.b.RESERVED) {
                return bVarB.g() + strA;
            }
            return strA;
        }
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00be A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0012 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.c.a.a.e] */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14, types: [java.util.ArrayList, java.util.List] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<java.lang.String> b(com.c.a.a.b r11, boolean r12) throws com.c.a.a.m {
        /*
            Method dump skipped, instruction units count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.c.a.a.e.b(com.c.a.a.b, boolean):java.util.List");
    }

    private boolean a(Object obj) {
        if (obj == null) {
            return false;
        }
        if ((obj instanceof Collection) || (obj instanceof Map) || obj.getClass().isArray()) {
            return true;
        }
        return !b(obj);
    }

    private boolean b(Object obj) {
        return obj.getClass().isPrimitive() || obj.getClass().isEnum() || (obj instanceof Class) || (obj instanceof Number) || (obj instanceof CharSequence) || (obj instanceof Date) || (obj instanceof Boolean) || (obj instanceof UUID);
    }

    private String a(com.c.a.a.a.b bVar, com.c.a.a.a.e eVar, Collection<?> collection) throws m {
        String string;
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        String strB = bVar.b();
        if (eVar.a() != com.c.a.a.a.a.EXPLODE) {
            strB = bVar.e();
        }
        for (Object obj : collection) {
            c(obj);
            if (c(obj)) {
                string = b(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR, obj);
            } else if (b(obj)) {
                string = obj.toString();
            } else {
                throw new m("Collections or other complex types are not supported in collections.");
            }
            arrayList.add(a(bVar, eVar, string, com.c.a.a.a.f.ARRAY));
        }
        if (eVar.a() != com.c.a.a.a.a.EXPLODE && bVar.f()) {
            String strA = a(strB, (List<String>) arrayList);
            if (bVar == com.c.a.a.a.b.QUERY && strA == null) {
                return eVar.d() + Engagement.Comparison.EQ;
            }
            return eVar.d() + Engagement.Comparison.EQ + strA;
        }
        return a(strB, (List<String>) arrayList);
    }

    private boolean c(Object obj) throws m {
        if (obj instanceof Map) {
            throw new m("Nested data structures are not supported.");
        }
        return (obj instanceof Collection) || obj.getClass().isArray();
    }

    private String a(com.c.a.a.a.b bVar, com.c.a.a.a.e eVar, Map<String, Object> map) throws m {
        String str;
        String string;
        if (map == null || map.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (eVar.a() == com.c.a.a.a.a.EXPLODE) {
            str = Engagement.Comparison.EQ;
        } else {
            str = BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR;
        }
        String strE = eVar.a() != com.c.a.a.a.a.EXPLODE ? bVar.e() : bVar.b();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            if (c(entry.getValue())) {
                string = b(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR, entry.getValue());
            } else if (b(entry.getValue())) {
                string = entry.getValue().toString();
            } else {
                throw new m("Collections or other complex types are not supported in collections.");
            }
            arrayList.add(a(bVar, eVar, key, com.c.a.a.a.f.PAIRS) + str + a(bVar, eVar, string, com.c.a.a.a.f.PAIRS));
        }
        if (eVar.a() != com.c.a.a.a.a.EXPLODE && (bVar == com.c.a.a.a.b.MATRIX || bVar == com.c.a.a.a.b.QUERY || bVar == com.c.a.a.a.b.CONTINUATION)) {
            String strA = a(strE, (List<String>) arrayList);
            if (bVar == com.c.a.a.a.b.QUERY && strA == null) {
                return eVar.d() + Engagement.Comparison.EQ;
            }
            return eVar.d() + Engagement.Comparison.EQ + strA;
        }
        return a(strE, (List<String>) arrayList);
    }

    private String a(com.c.a.a.a.b bVar, com.c.a.a.a.e eVar, String str, com.c.a.a.a.f fVar) throws m {
        String strB;
        int iIntValue;
        if (eVar.a() == com.c.a.a.a.a.PREFIX && (iIntValue = eVar.c().intValue()) < str.length()) {
            str = str.substring(0, iIntValue);
        }
        try {
            if (bVar.c() == f.UR) {
                strB = i.a(str);
            } else {
                strB = i.b(str);
            }
            if (bVar.d()) {
                if (strB.isEmpty() && !"&".equals(bVar.b())) {
                    return eVar.b();
                }
                if (fVar == com.c.a.a.a.f.SINGLE) {
                    return eVar.d() + Engagement.Comparison.EQ + strB;
                }
                if (eVar.a() == com.c.a.a.a.a.EXPLODE && bVar.f() && fVar != com.c.a.a.a.f.PAIRS) {
                    return eVar.d() + Engagement.Comparison.EQ + strB;
                }
                return strB;
            }
            return strB;
        } catch (UnsupportedEncodingException e2) {
            throw new m("Could not expand variable due to a problem URI encoding the value.", e2);
        }
    }

    private String b(String str, Object obj) {
        if (obj instanceof Collection) {
            ArrayList arrayList = new ArrayList();
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                arrayList.add((String) it.next());
            }
            return a(str, (List<String>) arrayList);
        }
        if (obj.getClass().isArray()) {
            return a(str, Arrays.asList((String[]) obj));
        }
        return null;
    }

    private String a(String str, List<String> list) {
        int i = 0;
        if (list.isEmpty()) {
            return null;
        }
        if (list.size() == 1) {
            return list.get(0);
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                String str2 = list.get(i2);
                if (!str2.isEmpty()) {
                    sb.append(str2);
                    if (list.size() > 0 && i2 != list.size() - 1) {
                        sb.append(str);
                    }
                }
                i = i2 + 1;
            } else {
                return sb.toString();
            }
        }
    }

    private String a(b bVar, List<String> list) {
        int[] iArrB = b(bVar, list);
        ArrayList arrayList = new ArrayList(list.size());
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                StringBuilder sb = new StringBuilder();
                if (list.get(iArrB[i2]) == null) {
                    sb.append(Category.SCHEME_PREFIX);
                    while (i2 < list.size() && list.get(iArrB[i2]) == null) {
                        if (sb.length() == 1) {
                            sb.append(arrayList.size() == 0 ? bVar.b().g() : bVar.b().b());
                        } else {
                            sb.append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
                        }
                        sb.append(bVar.c().get(iArrB[i2]).b());
                        i2++;
                    }
                    i2--;
                    sb.append(Category.SCHEME_SUFFIX);
                } else {
                    if (bVar.b() != com.c.a.a.a.b.RESERVED) {
                        sb.append(arrayList.size() == 0 ? bVar.b().g() : bVar.b().b());
                    }
                    sb.append(list.get(iArrB[i2]));
                }
                arrayList.add(sb.toString());
                i = i2 + 1;
            } else {
                return a("", (List<String>) arrayList);
            }
        }
    }

    private List<Object> d(Object obj) throws m {
        ArrayList arrayList = new ArrayList();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            Object obj2 = Array.get(obj, i);
            if (obj2.getClass().isArray()) {
                throw new m("Multi-dimenesional arrays are not supported.");
            }
            arrayList.add(obj2);
        }
        return arrayList;
    }

    private int[] b(b bVar, List<String> list) {
        int[] iArr = new int[list.size()];
        int size = list.size() - 1;
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (bVar.b() == com.c.a.a.a.b.QUERY) {
                int size2 = (list.size() - i2) - 1;
                if (list.get(i2) != null) {
                    iArr[i] = i2;
                    i++;
                }
                if (list.get(size2) == null) {
                    iArr[size] = size2;
                    size--;
                }
            } else {
                iArr[i2] = i2;
            }
        }
        return iArr;
    }
}
