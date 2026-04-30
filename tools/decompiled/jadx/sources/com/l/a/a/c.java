package com.l.a.a;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.mortbay.util.URIUtil;

/* JADX INFO: compiled from: MailcapFile.java */
/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f3581d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map f3582a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map f3583b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map f3584c = new HashMap();

    static {
        f3581d = false;
        try {
            f3581d = Boolean.getBoolean("javax.activation.addreverse");
        } catch (Throwable th) {
        }
    }

    public c(String str) throws Throwable {
        FileReader fileReader;
        if (b.a()) {
            b.a(new StringBuffer().append("new MailcapFile: file ").append(str).toString());
        }
        try {
            fileReader = new FileReader(str);
            try {
                a(new BufferedReader(fileReader));
                if (fileReader != null) {
                    try {
                        fileReader.close();
                    } catch (IOException e2) {
                    }
                }
            } catch (Throwable th) {
                th = th;
                if (fileReader != null) {
                    try {
                        fileReader.close();
                    } catch (IOException e3) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileReader = null;
        }
    }

    public c(InputStream inputStream) throws IOException {
        if (b.a()) {
            b.a("new MailcapFile: InputStream");
        }
        a(new BufferedReader(new InputStreamReader(inputStream, "iso-8859-1")));
    }

    public c() {
        if (b.a()) {
            b.a("new MailcapFile: default");
        }
    }

    public Map a(String str) {
        Map map = (Map) this.f3582a.get(str);
        int iIndexOf = str.indexOf(47);
        if (!str.substring(iIndexOf + 1).equals("*")) {
            Map map2 = (Map) this.f3582a.get(new StringBuffer().append(str.substring(0, iIndexOf + 1)).append("*").toString());
            if (map2 != null) {
                return map != null ? a(map, map2) : map2;
            }
            return map;
        }
        return map;
    }

    public Map b(String str) {
        Map map = (Map) this.f3583b.get(str);
        int iIndexOf = str.indexOf(47);
        if (!str.substring(iIndexOf + 1).equals("*")) {
            Map map2 = (Map) this.f3583b.get(new StringBuffer().append(str.substring(0, iIndexOf + 1)).append("*").toString());
            if (map2 != null) {
                return map != null ? a(map, map2) : map2;
            }
            return map;
        }
        return map;
    }

    public String[] a() {
        HashSet hashSet = new HashSet(this.f3582a.keySet());
        hashSet.addAll(this.f3583b.keySet());
        hashSet.addAll(this.f3584c.keySet());
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    public String[] c(String str) {
        List list = (List) this.f3584c.get(str.toLowerCase());
        if (list == null) {
            return null;
        }
        return (String[]) list.toArray(new String[list.size()]);
    }

    private Map a(Map map, Map map2) {
        HashMap map3 = new HashMap(map);
        for (String str : map2.keySet()) {
            List list = (List) map3.get(str);
            if (list == null) {
                map3.put(str, map2.get(str));
            } else {
                List list2 = (List) map2.get(str);
                ArrayList arrayList = new ArrayList(list);
                arrayList.addAll(list2);
                map3.put(str, arrayList);
            }
        }
        return map3;
    }

    public void d(String str) {
        if (b.a()) {
            b.a(new StringBuffer().append("appendToMailcap: ").append(str).toString());
        }
        try {
            a(new StringReader(str));
        } catch (IOException e2) {
        }
    }

    private void a(Reader reader) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(reader);
        String string = null;
        while (true) {
            String line = bufferedReader.readLine();
            if (line != null) {
                String strTrim = line.trim();
                try {
                    if (strTrim.charAt(0) != '#') {
                        if (strTrim.charAt(strTrim.length() - 1) == '\\') {
                            if (string != null) {
                                string = new StringBuffer().append(string).append(strTrim.substring(0, strTrim.length() - 1)).toString();
                            } else {
                                string = strTrim.substring(0, strTrim.length() - 1);
                            }
                        } else if (string != null) {
                            try {
                                e(new StringBuffer().append(string).append(strTrim).toString());
                            } catch (d e2) {
                            }
                            string = null;
                        } else {
                            try {
                                e(strTrim);
                            } catch (d e3) {
                            }
                        }
                    }
                } catch (StringIndexOutOfBoundsException e4) {
                }
            } else {
                return;
            }
        }
    }

    protected void e(String str) throws d, IOException {
        int iB;
        boolean z;
        e eVar = new e(str);
        eVar.a(false);
        if (b.a()) {
            b.a(new StringBuffer().append("parse: ").append(str).toString());
        }
        int iB2 = eVar.b();
        if (iB2 != 2) {
            a(2, iB2, eVar.a());
        }
        String lowerCase = eVar.a().toLowerCase();
        String lowerCase2 = "*";
        int iB3 = eVar.b();
        if (iB3 != 47 && iB3 != 59) {
            a(47, 59, iB3, eVar.a());
        }
        if (iB3 == 47) {
            int iB4 = eVar.b();
            if (iB4 != 2) {
                a(2, iB4, eVar.a());
            }
            lowerCase2 = eVar.a().toLowerCase();
            iB3 = eVar.b();
        }
        String string = new StringBuffer().append(lowerCase).append(URIUtil.SLASH).append(lowerCase2).toString();
        if (b.a()) {
            b.a(new StringBuffer().append("  Type: ").append(string).toString());
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (iB3 != 59) {
            a(59, iB3, eVar.a());
        }
        eVar.a(true);
        int iB5 = eVar.b();
        eVar.a(false);
        if (iB5 != 2 && iB5 != 59) {
            a(2, 59, iB5, eVar.a());
        }
        if (iB5 == 2) {
            List list = (List) this.f3584c.get(string);
            if (list == null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(str);
                this.f3584c.put(string, arrayList);
            } else {
                list.add(str);
            }
        }
        int iB6 = iB5 != 59 ? eVar.b() : iB5;
        if (iB6 == 59) {
            boolean z2 = false;
            while (true) {
                int iB7 = eVar.b();
                if (iB7 != 2) {
                    a(2, iB7, eVar.a());
                }
                String lowerCase3 = eVar.a().toLowerCase();
                int iB8 = eVar.b();
                if (iB8 != 61 && iB8 != 59 && iB8 != 5) {
                    a(61, 59, 5, iB8, eVar.a());
                }
                if (iB8 == 61) {
                    eVar.a(true);
                    int iB9 = eVar.b();
                    eVar.a(false);
                    if (iB9 != 2) {
                        a(2, iB9, eVar.a());
                    }
                    String strA = eVar.a();
                    if (lowerCase3.startsWith("x-java-")) {
                        String strSubstring = lowerCase3.substring(7);
                        if (strSubstring.equals("fallback-entry") && strA.equalsIgnoreCase("true")) {
                            z2 = true;
                        } else {
                            if (b.a()) {
                                b.a(new StringBuffer().append("    Command: ").append(strSubstring).append(", Class: ").append(strA).toString());
                            }
                            List arrayList2 = (List) linkedHashMap.get(strSubstring);
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                                linkedHashMap.put(strSubstring, arrayList2);
                            }
                            if (f3581d) {
                                arrayList2.add(0, strA);
                            } else {
                                arrayList2.add(strA);
                            }
                        }
                    }
                    boolean z3 = z2;
                    iB = eVar.b();
                    z = z3;
                } else {
                    boolean z4 = z2;
                    iB = iB8;
                    z = z4;
                }
                if (iB != 59) {
                    break;
                } else {
                    z2 = z;
                }
            }
            Map map = z ? this.f3583b : this.f3582a;
            Map map2 = (Map) map.get(string);
            if (map2 == null) {
                map.put(string, linkedHashMap);
                return;
            }
            if (b.a()) {
                b.a(new StringBuffer().append("Merging commands for type ").append(string).toString());
            }
            for (String str2 : map2.keySet()) {
                List list2 = (List) map2.get(str2);
                List<String> list3 = (List) linkedHashMap.get(str2);
                if (list3 != null) {
                    for (String str3 : list3) {
                        if (!list2.contains(str3)) {
                            if (f3581d) {
                                list2.add(0, str3);
                            } else {
                                list2.add(str3);
                            }
                        }
                    }
                }
            }
            for (String str4 : linkedHashMap.keySet()) {
                if (!map2.containsKey(str4)) {
                    map2.put(str4, (List) linkedHashMap.get(str4));
                }
            }
            return;
        }
        if (iB6 != 5) {
            a(5, 59, iB6, eVar.a());
        }
    }

    protected static void a(int i, int i2, String str) throws d {
        throw new d(new StringBuffer().append("Encountered a ").append(e.a(i2)).append(" token (").append(str).append(") while expecting a ").append(e.a(i)).append(" token.").toString());
    }

    protected static void a(int i, int i2, int i3, String str) throws d {
        throw new d(new StringBuffer().append("Encountered a ").append(e.a(i3)).append(" token (").append(str).append(") while expecting a ").append(e.a(i)).append(" or a ").append(e.a(i2)).append(" token.").toString());
    }

    protected static void a(int i, int i2, int i3, int i4, String str) throws d {
        if (b.a()) {
            b.a(new StringBuffer().append("PARSE ERROR: Encountered a ").append(e.a(i4)).append(" token (").append(str).append(") while expecting a ").append(e.a(i)).append(", a ").append(e.a(i2)).append(", or a ").append(e.a(i3)).append(" token.").toString());
        }
        throw new d(new StringBuffer().append("Encountered a ").append(e.a(i4)).append(" token (").append(str).append(") while expecting a ").append(e.a(i)).append(", a ").append(e.a(i2)).append(", or a ").append(e.a(i3)).append(" token.").toString());
    }
}
