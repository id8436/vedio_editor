package org.mortbay.util.ajax;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.google.gdata.data.Category;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.mortbay.log.Log;
import org.mortbay.util.IO;
import org.mortbay.util.Loader;
import org.mortbay.util.QuotedStringTokenizer;
import org.mortbay.util.TypeUtil;

/* JADX INFO: loaded from: classes3.dex */
public class JSON {
    private static JSON __default = new JSON();
    static Class class$java$lang$Object;
    static Class class$org$mortbay$util$ajax$JSON;
    static Class class$org$mortbay$util$ajax$JSON$Convertible;
    private Map _convertors = Collections.synchronizedMap(new HashMap());
    private int _stringBufferSize = 256;

    public interface Convertible {
        void fromJSON(Map map);

        void toJSON(Output output);
    }

    public interface Convertor {
        Object fromJSON(Map map);

        void toJSON(Object obj, Output output);
    }

    public interface Generator {
        void addJSON(StringBuffer stringBuffer);
    }

    public interface Output {
        void add(Object obj);

        void add(String str, double d2);

        void add(String str, long j);

        void add(String str, Object obj);

        void add(String str, boolean z);

        void addClass(Class cls);
    }

    public interface Source {
        boolean hasNext();

        char next();

        char peek();

        char[] scratchBuffer();
    }

    public int getStringBufferSize() {
        return this._stringBufferSize;
    }

    public void setStringBufferSize(int i) {
        this._stringBufferSize = i;
    }

    public static void registerConvertor(Class cls, Convertor convertor) {
        __default.addConvertor(cls, convertor);
    }

    public static JSON getDefault() {
        return __default;
    }

    public static void setDefault(JSON json) {
        __default = json;
    }

    public static String toString(Object obj) {
        String string;
        StringBuffer stringBuffer = new StringBuffer(__default.getStringBufferSize());
        synchronized (stringBuffer) {
            __default.append(stringBuffer, obj);
            string = stringBuffer.toString();
        }
        return string;
    }

    public static String toString(Map map) {
        String string;
        StringBuffer stringBuffer = new StringBuffer(__default.getStringBufferSize());
        synchronized (stringBuffer) {
            __default.appendMap(stringBuffer, map);
            string = stringBuffer.toString();
        }
        return string;
    }

    public static String toString(Object[] objArr) {
        String string;
        StringBuffer stringBuffer = new StringBuffer(__default.getStringBufferSize());
        synchronized (stringBuffer) {
            __default.appendArray(stringBuffer, objArr);
            string = stringBuffer.toString();
        }
        return string;
    }

    public static Object parse(String str) {
        return __default.parse((Source) new StringSource(str), false);
    }

    public static Object parse(String str, boolean z) {
        return __default.parse(new StringSource(str), z);
    }

    public static Object parse(Reader reader) throws IOException {
        return __default.parse((Source) new ReaderSource(reader), false);
    }

    public static Object parse(Reader reader, boolean z) throws IOException {
        return __default.parse(new ReaderSource(reader), z);
    }

    public static Object parse(InputStream inputStream) throws IOException {
        return __default.parse((Source) new StringSource(IO.toString(inputStream)), false);
    }

    public static Object parse(InputStream inputStream, boolean z) throws IOException {
        return __default.parse(new StringSource(IO.toString(inputStream)), z);
    }

    public String toJSON(Object obj) {
        String string;
        StringBuffer stringBuffer = new StringBuffer(getStringBufferSize());
        synchronized (stringBuffer) {
            append(stringBuffer, obj);
            string = stringBuffer.toString();
        }
        return string;
    }

    public Object fromJSON(String str) {
        return parse(new StringSource(str));
    }

    public void append(StringBuffer stringBuffer, Object obj) throws Throwable {
        if (obj == null) {
            stringBuffer.append("null");
            return;
        }
        if (obj instanceof Convertible) {
            appendJSON(stringBuffer, (Convertible) obj);
            return;
        }
        if (obj instanceof Generator) {
            appendJSON(stringBuffer, (Generator) obj);
            return;
        }
        if (obj instanceof Map) {
            appendMap(stringBuffer, (Map) obj);
            return;
        }
        if (obj instanceof Collection) {
            appendArray(stringBuffer, (Collection) obj);
            return;
        }
        if (obj.getClass().isArray()) {
            appendArray(stringBuffer, obj);
            return;
        }
        if (obj instanceof Number) {
            appendNumber(stringBuffer, (Number) obj);
            return;
        }
        if (obj instanceof Boolean) {
            appendBoolean(stringBuffer, (Boolean) obj);
            return;
        }
        if (obj instanceof String) {
            appendString(stringBuffer, (String) obj);
            return;
        }
        Convertor convertor = getConvertor(obj.getClass());
        if (convertor != null) {
            appendJSON(stringBuffer, convertor, obj);
        } else {
            appendString(stringBuffer, obj.toString());
        }
    }

    public void appendNull(StringBuffer stringBuffer) {
        stringBuffer.append("null");
    }

    public void appendJSON(StringBuffer stringBuffer, Convertor convertor, Object obj) {
        appendJSON(stringBuffer, new Convertible(this, convertor, obj) { // from class: org.mortbay.util.ajax.JSON.1
            private final JSON this$0;
            private final Convertor val$convertor;
            private final Object val$object;

            {
                this.this$0 = this;
                this.val$convertor = convertor;
                this.val$object = obj;
            }

            @Override // org.mortbay.util.ajax.JSON.Convertible
            public void fromJSON(Map map) {
            }

            @Override // org.mortbay.util.ajax.JSON.Convertible
            public void toJSON(Output output) {
                this.val$convertor.toJSON(this.val$object, output);
            }
        });
    }

    public void appendJSON(StringBuffer stringBuffer, Convertible convertible) {
        char[] cArr = {Category.SCHEME_PREFIX};
        convertible.toJSON(new Output(this, cArr, stringBuffer) { // from class: org.mortbay.util.ajax.JSON.2
            private final JSON this$0;
            private final StringBuffer val$buffer;
            private final char[] val$c;

            {
                this.this$0 = this;
                this.val$c = cArr;
                this.val$buffer = stringBuffer;
            }

            @Override // org.mortbay.util.ajax.JSON.Output
            public void add(Object obj) throws Throwable {
                if (this.val$c[0] == 0) {
                    throw new IllegalStateException();
                }
                this.this$0.append(this.val$buffer, obj);
                this.val$c[0] = 0;
            }

            @Override // org.mortbay.util.ajax.JSON.Output
            public void addClass(Class cls) throws Throwable {
                if (this.val$c[0] == 0) {
                    throw new IllegalStateException();
                }
                this.val$buffer.append(this.val$c);
                this.val$buffer.append("\"class\":");
                this.this$0.append(this.val$buffer, cls.getName());
                this.val$c[0] = ',';
            }

            @Override // org.mortbay.util.ajax.JSON.Output
            public void add(String str, Object obj) throws Throwable {
                if (this.val$c[0] == 0) {
                    throw new IllegalStateException();
                }
                this.val$buffer.append(this.val$c);
                QuotedStringTokenizer.quote(this.val$buffer, str);
                this.val$buffer.append(':');
                this.this$0.append(this.val$buffer, obj);
                this.val$c[0] = ',';
            }

            @Override // org.mortbay.util.ajax.JSON.Output
            public void add(String str, double d2) {
                if (this.val$c[0] == 0) {
                    throw new IllegalStateException();
                }
                this.val$buffer.append(this.val$c);
                QuotedStringTokenizer.quote(this.val$buffer, str);
                this.val$buffer.append(':');
                this.this$0.appendNumber(this.val$buffer, new Double(d2));
                this.val$c[0] = ',';
            }

            @Override // org.mortbay.util.ajax.JSON.Output
            public void add(String str, long j) {
                if (this.val$c[0] == 0) {
                    throw new IllegalStateException();
                }
                this.val$buffer.append(this.val$c);
                QuotedStringTokenizer.quote(this.val$buffer, str);
                this.val$buffer.append(':');
                this.this$0.appendNumber(this.val$buffer, TypeUtil.newLong(j));
                this.val$c[0] = ',';
            }

            @Override // org.mortbay.util.ajax.JSON.Output
            public void add(String str, boolean z) {
                if (this.val$c[0] == 0) {
                    throw new IllegalStateException();
                }
                this.val$buffer.append(this.val$c);
                QuotedStringTokenizer.quote(this.val$buffer, str);
                this.val$buffer.append(':');
                this.this$0.appendBoolean(this.val$buffer, z ? Boolean.TRUE : Boolean.FALSE);
                this.val$c[0] = ',';
            }
        });
        if (cArr[0] == '{') {
            stringBuffer.append("{}");
        } else if (cArr[0] != 0) {
            stringBuffer.append("}");
        }
    }

    public void appendJSON(StringBuffer stringBuffer, Generator generator) {
        generator.addJSON(stringBuffer);
    }

    public void appendMap(StringBuffer stringBuffer, Map map) {
        if (map == null) {
            appendNull(stringBuffer);
            return;
        }
        stringBuffer.append(Category.SCHEME_PREFIX);
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            QuotedStringTokenizer.quote(stringBuffer, entry.getKey().toString());
            stringBuffer.append(':');
            append(stringBuffer, entry.getValue());
            if (it.hasNext()) {
                stringBuffer.append(',');
            }
        }
        stringBuffer.append(Category.SCHEME_SUFFIX);
    }

    public void appendArray(StringBuffer stringBuffer, Collection collection) {
        if (collection == null) {
            appendNull(stringBuffer);
            return;
        }
        stringBuffer.append('[');
        Iterator it = collection.iterator();
        boolean z = true;
        while (it.hasNext()) {
            if (!z) {
                stringBuffer.append(',');
            }
            z = false;
            append(stringBuffer, it.next());
        }
        stringBuffer.append(']');
    }

    public void appendArray(StringBuffer stringBuffer, Object obj) {
        if (obj == null) {
            appendNull(stringBuffer);
            return;
        }
        stringBuffer.append('[');
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                stringBuffer.append(',');
            }
            append(stringBuffer, Array.get(obj, i));
        }
        stringBuffer.append(']');
    }

    public void appendBoolean(StringBuffer stringBuffer, Boolean bool) {
        if (bool == null) {
            appendNull(stringBuffer);
        } else {
            stringBuffer.append(bool.booleanValue() ? "true" : "false");
        }
    }

    public void appendNumber(StringBuffer stringBuffer, Number number) {
        if (number == null) {
            appendNull(stringBuffer);
        } else {
            stringBuffer.append(number);
        }
    }

    public void appendString(StringBuffer stringBuffer, String str) {
        if (str == null) {
            appendNull(stringBuffer);
        } else {
            QuotedStringTokenizer.quote(stringBuffer, str);
        }
    }

    protected String toString(char[] cArr, int i, int i2) {
        return new String(cArr, i, i2);
    }

    protected Map newMap() {
        return new HashMap();
    }

    protected Object[] newArray(int i) {
        return new Object[i];
    }

    protected JSON contextForArray() {
        return this;
    }

    protected JSON contextFor(String str) {
        return this;
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    protected Object convertTo(Class cls, Map map) throws Throwable {
        Class clsClass$;
        if (cls != null) {
            if (class$org$mortbay$util$ajax$JSON$Convertible == null) {
                clsClass$ = class$("org.mortbay.util.ajax.JSON$Convertible");
                class$org$mortbay$util$ajax$JSON$Convertible = clsClass$;
            } else {
                clsClass$ = class$org$mortbay$util$ajax$JSON$Convertible;
            }
            if (clsClass$.isAssignableFrom(cls)) {
                try {
                    Convertible convertible = (Convertible) cls.newInstance();
                    convertible.fromJSON(map);
                    return convertible;
                } catch (Exception e2) {
                    throw new RuntimeException(e2);
                }
            }
        }
        Convertor convertor = getConvertor(cls);
        return convertor != null ? convertor.fromJSON(map) : map;
    }

    public void addConvertor(Class cls, Convertor convertor) {
        this._convertors.put(cls.getName(), convertor);
    }

    protected Convertor getConvertor(Class cls) throws Throwable {
        Convertor convertor;
        Class superclass;
        Class clsClass$;
        Convertor convertor2 = (Convertor) this._convertors.get(cls.getName());
        if (convertor2 != null || this == __default) {
            convertor = convertor2;
            superclass = cls;
        } else {
            convertor = __default.getConvertor(cls);
            superclass = cls;
        }
        while (convertor == null && superclass != null) {
            if (class$java$lang$Object == null) {
                clsClass$ = class$("java.lang.Object");
                class$java$lang$Object = clsClass$;
            } else {
                clsClass$ = class$java$lang$Object;
            }
            if (superclass == clsClass$) {
                break;
            }
            Class<?>[] interfaces = superclass.getInterfaces();
            Convertor convertor3 = convertor;
            for (int i = 0; convertor3 == null && interfaces != null && i < interfaces.length; i++) {
                convertor3 = (Convertor) this._convertors.get(interfaces[i].getName());
            }
            if (convertor3 == null) {
                superclass = superclass.getSuperclass();
                convertor3 = (Convertor) this._convertors.get(superclass.getName());
            }
            convertor = convertor3;
        }
        return convertor;
    }

    public void addConvertorFor(String str, Convertor convertor) {
        this._convertors.put(str, convertor);
    }

    public Convertor getConvertorFor(String str) {
        Convertor convertor = (Convertor) this._convertors.get(str);
        if (convertor == null && this != __default) {
            return __default.getConvertorFor(str);
        }
        return convertor;
    }

    public Object parse(Source source, boolean z) {
        if (!z) {
            return parse(source);
        }
        Object obj = null;
        char c2 = 1;
        byte b2 = 0;
        while (source.hasNext()) {
            char cPeek = source.peek();
            if (b2 == 1) {
                switch (cPeek) {
                    case '*':
                        if (c2 != 1) {
                            b2 = 2;
                        } else {
                            c2 = 2;
                            b2 = 0;
                        }
                        break;
                    case '/':
                        b2 = -1;
                        break;
                }
            } else if (b2 > 1) {
                switch (cPeek) {
                    case '*':
                        b2 = 3;
                        break;
                    case '/':
                        if (b2 != 3) {
                            b2 = 2;
                        } else {
                            if (c2 == 2) {
                                return obj;
                            }
                            b2 = 0;
                        }
                        break;
                    default:
                        b2 = 2;
                        break;
                }
            } else if (b2 < 0) {
                switch (cPeek) {
                    case '\n':
                    case '\r':
                        b2 = 0;
                        break;
                }
            } else if (!Character.isWhitespace(cPeek)) {
                if (cPeek == '/') {
                    b2 = 1;
                } else if (cPeek == '*') {
                    b2 = 3;
                } else if (obj == null) {
                    obj = parse(source);
                }
            }
            source.next();
        }
        return obj;
    }

    public Object parse(Source source) {
        byte b2 = 0;
        while (source.hasNext()) {
            char cPeek = source.peek();
            if (b2 == 1) {
                switch (cPeek) {
                    case '*':
                        b2 = 2;
                        break;
                    case '/':
                        b2 = -1;
                        break;
                }
            } else if (b2 > 1) {
                switch (cPeek) {
                    case '*':
                        b2 = 3;
                        break;
                    case '/':
                        b2 = b2 != 3 ? (byte) 2 : (byte) 0;
                        break;
                    default:
                        b2 = 2;
                        break;
                }
            } else if (b2 < 0) {
                switch (cPeek) {
                    case '\n':
                    case '\r':
                        b2 = 0;
                        break;
                }
            } else {
                switch (cPeek) {
                    case '\"':
                        return parseString(source);
                    case '-':
                        return parseNumber(source);
                    case '/':
                        b2 = 1;
                        break;
                    case 'N':
                        complete("NaN", source);
                        return null;
                    case '[':
                        return parseArray(source);
                    case 'f':
                        complete("false", source);
                        return Boolean.FALSE;
                    case 'n':
                        complete("null", source);
                        return null;
                    case 't':
                        complete("true", source);
                        return Boolean.TRUE;
                    case 'u':
                        complete("undefined", source);
                        return null;
                    case '{':
                        return parseObject(source);
                    default:
                        if (Character.isDigit(cPeek)) {
                            return parseNumber(source);
                        }
                        if (!Character.isWhitespace(cPeek)) {
                            return handleUnknown(source, cPeek);
                        }
                        break;
                        break;
                }
            }
            source.next();
        }
        return null;
    }

    protected Object handleUnknown(Source source, char c2) {
        throw new IllegalStateException(new StringBuffer().append("unknown char '").append(c2).append("'(").append((int) c2).append(") in ").append(source).toString());
    }

    protected Object parseObject(Source source) throws Throwable {
        Class clsClass$;
        if (source.next() != '{') {
            throw new IllegalStateException();
        }
        Map mapNewMap = newMap();
        char cSeekTo = seekTo("\"}", source);
        while (true) {
            if (!source.hasNext()) {
                break;
            }
            if (cSeekTo == '}') {
                source.next();
                break;
            }
            String string = parseString(source);
            seekTo(':', source);
            source.next();
            mapNewMap.put(string, contextFor(string).parse(source));
            seekTo(",}", source);
            if (source.next() == '}') {
                break;
            }
            cSeekTo = seekTo("\"}", source);
        }
        String str = (String) mapNewMap.get(AdobePSDCompositeConstants.AdobePSDCompositeLayerFillClassKey);
        if (str != null) {
            try {
                if (class$org$mortbay$util$ajax$JSON == null) {
                    clsClass$ = class$("org.mortbay.util.ajax.JSON");
                    class$org$mortbay$util$ajax$JSON = clsClass$;
                } else {
                    clsClass$ = class$org$mortbay$util$ajax$JSON;
                }
                return convertTo(Loader.loadClass(clsClass$, str), mapNewMap);
            } catch (ClassNotFoundException e2) {
                e2.printStackTrace();
            }
        }
        return mapNewMap;
    }

    protected Object parseArray(Source source) {
        if (source.next() != '[') {
            throw new IllegalStateException();
        }
        boolean z = true;
        Object obj = null;
        ArrayList arrayList = null;
        int i = 0;
        while (source.hasNext()) {
            char cPeek = source.peek();
            switch (cPeek) {
                case ',':
                    if (z) {
                        throw new IllegalStateException();
                    }
                    source.next();
                    z = true;
                    break;
                    break;
                case ']':
                    source.next();
                    switch (i) {
                        case 0:
                            return newArray(0);
                        case 1:
                            Object[] objArrNewArray = newArray(1);
                            Array.set(objArrNewArray, 0, obj);
                            return objArrNewArray;
                        default:
                            return arrayList.toArray(newArray(arrayList.size()));
                    }
                default:
                    if (Character.isWhitespace(cPeek)) {
                        source.next();
                    } else {
                        int i2 = i + 1;
                        if (i == 0) {
                            obj = contextForArray().parse(source);
                            i = i2;
                            z = false;
                        } else if (arrayList == null) {
                            ArrayList arrayList2 = new ArrayList();
                            arrayList2.add(obj);
                            arrayList2.add(contextForArray().parse(source));
                            obj = null;
                            arrayList = arrayList2;
                            i = i2;
                            z = false;
                        } else {
                            arrayList.add(contextForArray().parse(source));
                            z = false;
                            obj = null;
                            i = i2;
                        }
                    }
                    break;
            }
        }
        throw new IllegalStateException("unexpected end of array");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0031, code lost:
    
        if (r4 != null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0037, code lost:
    
        return toString(r6, 0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ca, code lost:
    
        r0 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.String parseString(org.mortbay.util.ajax.JSON.Source r12) {
        /*
            Method dump skipped, instruction units count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.util.ajax.JSON.parseString(org.mortbay.util.ajax.JSON$Source):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0018, code lost:
    
        r0 = r0 * (-1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001f, code lost:
    
        return org.mortbay.util.TypeUtil.newLong(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0055, code lost:
    
        monitor-enter(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005a, code lost:
    
        if (r11.hasNext() == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005c, code lost:
    
        r0 = r11.peek();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0060, code lost:
    
        switch(r0) {
            case 43: goto L34;
            case 45: goto L34;
            case 46: goto L34;
            case 48: goto L34;
            case 49: goto L34;
            case 50: goto L34;
            case 51: goto L34;
            case 52: goto L34;
            case 53: goto L34;
            case 54: goto L34;
            case 55: goto L34;
            case 56: goto L34;
            case 57: goto L34;
            case 69: goto L34;
            case 101: goto L34;
            default: goto L49;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0063, code lost:
    
        r0 = new java.lang.Double(r2.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006c, code lost:
    
        monitor-exit(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0071, code lost:
    
        r2.append(r0);
        r11.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0014, code lost:
    
        if (r2 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
    
        if (r4 == false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Number parseNumber(org.mortbay.util.ajax.JSON.Source r11) {
        /*
            Method dump skipped, instruction units count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.util.ajax.JSON.parseNumber(org.mortbay.util.ajax.JSON$Source):java.lang.Number");
    }

    protected void seekTo(char c2, Source source) {
        while (source.hasNext()) {
            char cPeek = source.peek();
            if (cPeek == c2) {
                return;
            }
            if (!Character.isWhitespace(cPeek)) {
                throw new IllegalStateException(new StringBuffer().append("Unexpected '").append(cPeek).append(" while seeking '").append(c2).append("'").toString());
            }
            source.next();
        }
        throw new IllegalStateException(new StringBuffer().append("Expected '").append(c2).append("'").toString());
    }

    protected char seekTo(String str, Source source) {
        while (source.hasNext()) {
            char cPeek = source.peek();
            if (str.indexOf(cPeek) >= 0) {
                return cPeek;
            }
            if (!Character.isWhitespace(cPeek)) {
                throw new IllegalStateException(new StringBuffer().append("Unexpected '").append(cPeek).append("' while seeking one of '").append(str).append("'").toString());
            }
            source.next();
        }
        throw new IllegalStateException(new StringBuffer().append("Expected one of '").append(str).append("'").toString());
    }

    protected static void complete(String str, Source source) {
        int i = 0;
        while (source.hasNext() && i < str.length()) {
            char next = source.next();
            int i2 = i + 1;
            if (next != str.charAt(i)) {
                throw new IllegalStateException(new StringBuffer().append("Unexpected '").append(next).append(" while seeking  \"").append(str).append("\"").toString());
            }
            i = i2;
        }
        if (i < str.length()) {
            throw new IllegalStateException(new StringBuffer().append("Expected \"").append(str).append("\"").toString());
        }
    }

    public class StringSource implements Source {
        private int index;
        private char[] scratch;
        private final String string;

        public StringSource(String str) {
            this.string = str;
        }

        @Override // org.mortbay.util.ajax.JSON.Source
        public boolean hasNext() {
            if (this.index < this.string.length()) {
                return true;
            }
            this.scratch = null;
            return false;
        }

        @Override // org.mortbay.util.ajax.JSON.Source
        public char next() {
            String str = this.string;
            int i = this.index;
            this.index = i + 1;
            return str.charAt(i);
        }

        @Override // org.mortbay.util.ajax.JSON.Source
        public char peek() {
            return this.string.charAt(this.index);
        }

        public String toString() {
            return new StringBuffer().append(this.string.substring(0, this.index)).append("|||").append(this.string.substring(this.index)).toString();
        }

        @Override // org.mortbay.util.ajax.JSON.Source
        public char[] scratchBuffer() {
            if (this.scratch == null) {
                this.scratch = new char[this.string.length()];
            }
            return this.scratch;
        }
    }

    public class ReaderSource implements Source {
        private int _next = -1;
        private Reader _reader;
        private char[] scratch;

        public ReaderSource(Reader reader) {
            this._reader = reader;
        }

        public void setReader(Reader reader) {
            this._reader = reader;
            this._next = -1;
        }

        @Override // org.mortbay.util.ajax.JSON.Source
        public boolean hasNext() {
            getNext();
            if (this._next >= 0) {
                return true;
            }
            this.scratch = null;
            return false;
        }

        @Override // org.mortbay.util.ajax.JSON.Source
        public char next() {
            getNext();
            char c2 = (char) this._next;
            this._next = -1;
            return c2;
        }

        @Override // org.mortbay.util.ajax.JSON.Source
        public char peek() {
            getNext();
            return (char) this._next;
        }

        private void getNext() {
            if (this._next < 0) {
                try {
                    this._next = this._reader.read();
                } catch (IOException e2) {
                    throw new RuntimeException(e2);
                }
            }
        }

        @Override // org.mortbay.util.ajax.JSON.Source
        public char[] scratchBuffer() {
            if (this.scratch == null) {
                this.scratch = new char[1024];
            }
            return this.scratch;
        }
    }

    public class Literal implements Generator {
        private String _json;

        public Literal(String str) {
            if (Log.isDebugEnabled()) {
                JSON.parse(str);
            }
            this._json = str;
        }

        public String toString() {
            return this._json;
        }

        @Override // org.mortbay.util.ajax.JSON.Generator
        public void addJSON(StringBuffer stringBuffer) {
            stringBuffer.append(this._json);
        }
    }
}
