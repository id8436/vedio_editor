package javax.activation;

import com.l.a.a.b;
import com.l.a.a.c;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class MailcapCommandMap extends CommandMap {
    private static final int PROG = 0;
    static Class class$javax$activation$MailcapCommandMap;
    private static c defDB = null;
    private c[] DB;

    public MailcapCommandMap() throws Throwable {
        Class clsClass$;
        c cVarLoadFile;
        ArrayList arrayList = new ArrayList(5);
        arrayList.add(null);
        b.a("MailcapCommandMap: load HOME");
        try {
            String property = System.getProperty("user.home");
            if (property != null && (cVarLoadFile = loadFile(new StringBuffer().append(property).append(File.separator).append(".mailcap").toString())) != null) {
                arrayList.add(cVarLoadFile);
            }
        } catch (SecurityException e2) {
        }
        b.a("MailcapCommandMap: load SYS");
        try {
            c cVarLoadFile2 = loadFile(new StringBuffer().append(System.getProperty("java.home")).append(File.separator).append("lib").append(File.separator).append("mailcap").toString());
            if (cVarLoadFile2 != null) {
                arrayList.add(cVarLoadFile2);
            }
        } catch (SecurityException e3) {
        }
        b.a("MailcapCommandMap: load JAR");
        loadAllResources(arrayList, "META-INF/mailcap");
        b.a("MailcapCommandMap: load DEF");
        if (class$javax$activation$MailcapCommandMap == null) {
            clsClass$ = class$("javax.activation.MailcapCommandMap");
            class$javax$activation$MailcapCommandMap = clsClass$;
        } else {
            clsClass$ = class$javax$activation$MailcapCommandMap;
        }
        synchronized (clsClass$) {
            if (defDB == null) {
                defDB = loadResource("/META-INF/mailcap.default");
            }
        }
        if (defDB != null) {
            arrayList.add(defDB);
        }
        this.DB = new c[arrayList.size()];
        this.DB = (c[]) arrayList.toArray(this.DB);
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.l.a.a.c loadResource(java.lang.String r6) throws java.lang.Throwable {
        /*
            r5 = this;
            r1 = 0
            java.lang.Class r0 = r5.getClass()     // Catch: java.io.IOException -> L57 java.lang.SecurityException -> L7e java.lang.Throwable -> La5
            java.io.InputStream r2 = javax.activation.SecuritySupport.getResourceAsStream(r0, r6)     // Catch: java.io.IOException -> L57 java.lang.SecurityException -> L7e java.lang.Throwable -> La5
            if (r2 == 0) goto L33
            com.l.a.a.c r0 = new com.l.a.a.c     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            r0.<init>(r2)     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            boolean r3 = com.l.a.a.b.a()     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            if (r3 == 0) goto L2d
            java.lang.StringBuffer r3 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            r3.<init>()     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            java.lang.String r4 = "MailcapCommandMap: successfully loaded mailcap file: "
            java.lang.StringBuffer r3 = r3.append(r4)     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            java.lang.StringBuffer r3 = r3.append(r6)     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            com.l.a.a.b.a(r3)     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
        L2d:
            if (r2 == 0) goto L32
            r2.close()     // Catch: java.io.IOException -> Lad
        L32:
            return r0
        L33:
            boolean r0 = com.l.a.a.b.a()     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            if (r0 == 0) goto L50
            java.lang.StringBuffer r0 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            r0.<init>()     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            java.lang.String r3 = "MailcapCommandMap: not loading mailcap file: "
            java.lang.StringBuffer r0 = r0.append(r3)     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            java.lang.StringBuffer r0 = r0.append(r6)     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            com.l.a.a.b.a(r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
        L50:
            if (r2 == 0) goto L55
            r2.close()     // Catch: java.io.IOException -> Laf
        L55:
            r0 = r1
            goto L32
        L57:
            r0 = move-exception
            r2 = r1
        L59:
            boolean r3 = com.l.a.a.b.a()     // Catch: java.lang.Throwable -> Lb3
            if (r3 == 0) goto L76
            java.lang.StringBuffer r3 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> Lb3
            r3.<init>()     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r4 = "MailcapCommandMap: can't load "
            java.lang.StringBuffer r3 = r3.append(r4)     // Catch: java.lang.Throwable -> Lb3
            java.lang.StringBuffer r3 = r3.append(r6)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> Lb3
            com.l.a.a.b.a(r3, r0)     // Catch: java.lang.Throwable -> Lb3
        L76:
            if (r2 == 0) goto L55
            r2.close()     // Catch: java.io.IOException -> L7c
            goto L55
        L7c:
            r0 = move-exception
            goto L55
        L7e:
            r0 = move-exception
            r2 = r1
        L80:
            boolean r3 = com.l.a.a.b.a()     // Catch: java.lang.Throwable -> Lb3
            if (r3 == 0) goto L9d
            java.lang.StringBuffer r3 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> Lb3
            r3.<init>()     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r4 = "MailcapCommandMap: can't load "
            java.lang.StringBuffer r3 = r3.append(r4)     // Catch: java.lang.Throwable -> Lb3
            java.lang.StringBuffer r3 = r3.append(r6)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> Lb3
            com.l.a.a.b.a(r3, r0)     // Catch: java.lang.Throwable -> Lb3
        L9d:
            if (r2 == 0) goto L55
            r2.close()     // Catch: java.io.IOException -> La3
            goto L55
        La3:
            r0 = move-exception
            goto L55
        La5:
            r0 = move-exception
            r2 = r1
        La7:
            if (r2 == 0) goto Lac
            r2.close()     // Catch: java.io.IOException -> Lb1
        Lac:
            throw r0
        Lad:
            r1 = move-exception
            goto L32
        Laf:
            r0 = move-exception
            goto L55
        Lb1:
            r1 = move-exception
            goto Lac
        Lb3:
            r0 = move-exception
            goto La7
        Lb5:
            r0 = move-exception
            goto L80
        Lb7:
            r0 = move-exception
            goto L59
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.activation.MailcapCommandMap.loadResource(java.lang.String):com.l.a.a.c");
    }

    /* JADX WARN: Removed duplicated region for block: B:109:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0118  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void loadAllResources(java.util.List r10, java.lang.String r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.activation.MailcapCommandMap.loadAllResources(java.util.List, java.lang.String):void");
    }

    private c loadFile(String str) {
        try {
            return new c(str);
        } catch (IOException e2) {
            return null;
        }
    }

    public MailcapCommandMap(String str) throws IOException {
        this();
        if (b.a()) {
            b.a(new StringBuffer().append("MailcapCommandMap: load PROG from ").append(str).toString());
        }
        if (this.DB[0] == null) {
            this.DB[0] = new c(str);
        }
    }

    public MailcapCommandMap(InputStream inputStream) {
        this();
        b.a("MailcapCommandMap: load PROG");
        if (this.DB[0] == null) {
            try {
                this.DB[0] = new c(inputStream);
            } catch (IOException e2) {
            }
        }
    }

    @Override // javax.activation.CommandMap
    public synchronized CommandInfo[] getPreferredCommands(String str) {
        CommandInfo[] commandInfoArr;
        Map mapB;
        Map mapA;
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            if (str != null) {
                str = str.toLowerCase();
            }
            for (int i = 0; i < this.DB.length; i++) {
                if (this.DB[i] != null && (mapA = this.DB[i].a(str)) != null) {
                    appendPrefCmdsToList(mapA, arrayList);
                }
            }
            for (int i2 = 0; i2 < this.DB.length; i2++) {
                if (this.DB[i2] != null && (mapB = this.DB[i2].b(str)) != null) {
                    appendPrefCmdsToList(mapB, arrayList);
                }
            }
            commandInfoArr = (CommandInfo[]) arrayList.toArray(new CommandInfo[arrayList.size()]);
        }
        return commandInfoArr;
    }

    private void appendPrefCmdsToList(Map map, List list) {
        for (String str : map.keySet()) {
            if (!checkForVerb(list, str)) {
                list.add(new CommandInfo(str, (String) ((List) map.get(str)).get(0)));
            }
        }
    }

    private boolean checkForVerb(List list, String str) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((CommandInfo) it.next()).getCommandName().equals(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // javax.activation.CommandMap
    public synchronized CommandInfo[] getAllCommands(String str) {
        CommandInfo[] commandInfoArr;
        Map mapB;
        Map mapA;
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            if (str != null) {
                str = str.toLowerCase();
            }
            for (int i = 0; i < this.DB.length; i++) {
                if (this.DB[i] != null && (mapA = this.DB[i].a(str)) != null) {
                    appendCmdsToList(mapA, arrayList);
                }
            }
            for (int i2 = 0; i2 < this.DB.length; i2++) {
                if (this.DB[i2] != null && (mapB = this.DB[i2].b(str)) != null) {
                    appendCmdsToList(mapB, arrayList);
                }
            }
            commandInfoArr = (CommandInfo[]) arrayList.toArray(new CommandInfo[arrayList.size()]);
        }
        return commandInfoArr;
    }

    private void appendCmdsToList(Map map, List list) {
        for (String str : map.keySet()) {
            Iterator it = ((List) map.get(str)).iterator();
            while (it.hasNext()) {
                list.add(new CommandInfo(str, (String) it.next()));
            }
        }
    }

    @Override // javax.activation.CommandMap
    public synchronized CommandInfo getCommand(String str, String str2) {
        CommandInfo commandInfo;
        Map mapB;
        List list;
        String str3;
        Map mapA;
        List list2;
        String str4;
        int i = 0;
        synchronized (this) {
            if (str != null) {
                str = str.toLowerCase();
            }
            int i2 = 0;
            while (true) {
                if (i2 >= this.DB.length) {
                    while (true) {
                        if (i < this.DB.length) {
                            if (this.DB[i] == null || (mapB = this.DB[i].b(str)) == null || (list = (List) mapB.get(str2)) == null || (str3 = (String) list.get(0)) == null) {
                                i++;
                            } else {
                                commandInfo = new CommandInfo(str2, str3);
                                break;
                            }
                        } else {
                            commandInfo = null;
                            break;
                        }
                    }
                } else if (this.DB[i2] == null || (mapA = this.DB[i2].a(str)) == null || (list2 = (List) mapA.get(str2)) == null || (str4 = (String) list2.get(0)) == null) {
                    i2++;
                } else {
                    commandInfo = new CommandInfo(str2, str4);
                    break;
                }
            }
        }
        return commandInfo;
    }

    public synchronized void addMailcap(String str) {
        b.a("MailcapCommandMap: add to PROG");
        if (this.DB[0] == null) {
            this.DB[0] = new c();
        }
        this.DB[0].d(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0079, code lost:
    
        if (r1 >= r4.DB.length) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007f, code lost:
    
        if (r4.DB[r1] != null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0081, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0089, code lost:
    
        if (com.l.a.a.b.a() == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x008b, code lost:
    
        com.l.a.a.b.a(new java.lang.StringBuffer().append("  search fallback DB #").append(r1).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a2, code lost:
    
        r0 = r4.DB[r1].b(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00aa, code lost:
    
        if (r0 == null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ac, code lost:
    
        r0 = (java.util.List) r0.get("content-handler");
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b5, code lost:
    
        if (r0 == null) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b7, code lost:
    
        r0 = getDataContentHandler((java.lang.String) r0.get(0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c2, code lost:
    
        if (r0 == null) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c5, code lost:
    
        r0 = null;
     */
    @Override // javax.activation.CommandMap
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized javax.activation.DataContentHandler createDataContentHandler(java.lang.String r5) {
        /*
            Method dump skipped, instruction units count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.activation.MailcapCommandMap.createDataContentHandler(java.lang.String):javax.activation.DataContentHandler");
    }

    private DataContentHandler getDataContentHandler(String str) {
        Class<?> cls;
        if (b.a()) {
            b.a("    got content-handler");
        }
        if (b.a()) {
            b.a(new StringBuffer().append("      class ").append(str).toString());
        }
        try {
            ClassLoader contextClassLoader = SecuritySupport.getContextClassLoader();
            if (contextClassLoader == null) {
                contextClassLoader = getClass().getClassLoader();
            }
            try {
                cls = contextClassLoader.loadClass(str);
            } catch (Exception e2) {
                cls = Class.forName(str);
            }
            if (cls != null) {
                return (DataContentHandler) cls.newInstance();
            }
        } catch (ClassNotFoundException e3) {
            if (b.a()) {
                b.a(new StringBuffer().append("Can't load DCH ").append(str).toString(), e3);
            }
        } catch (IllegalAccessException e4) {
            if (b.a()) {
                b.a(new StringBuffer().append("Can't load DCH ").append(str).toString(), e4);
            }
        } catch (InstantiationException e5) {
            if (b.a()) {
                b.a(new StringBuffer().append("Can't load DCH ").append(str).toString(), e5);
            }
        }
        return null;
    }

    @Override // javax.activation.CommandMap
    public synchronized String[] getMimeTypes() {
        ArrayList arrayList;
        String[] strArrA;
        arrayList = new ArrayList();
        for (int i = 0; i < this.DB.length; i++) {
            if (this.DB[i] != null && (strArrA = this.DB[i].a()) != null) {
                for (int i2 = 0; i2 < strArrA.length; i2++) {
                    if (!arrayList.contains(strArrA[i2])) {
                        arrayList.add(strArrA[i2]);
                    }
                }
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public synchronized String[] getNativeCommands(String str) {
        ArrayList arrayList;
        String[] strArrC;
        arrayList = new ArrayList();
        if (str != null) {
            str = str.toLowerCase();
        }
        for (int i = 0; i < this.DB.length; i++) {
            if (this.DB[i] != null && (strArrC = this.DB[i].c(str)) != null) {
                for (int i2 = 0; i2 < strArrC.length; i2++) {
                    if (!arrayList.contains(strArrC[i2])) {
                        arrayList.add(strArrC[i2]);
                    }
                }
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
