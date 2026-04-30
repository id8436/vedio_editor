package org.mortbay.xml;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.behance.sdk.util.BehanceSDKConstants;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import org.mortbay.component.LifeCycle;
import org.mortbay.jetty.servlet.ServletHandler;
import org.mortbay.log.Log;
import org.mortbay.resource.Resource;
import org.mortbay.util.LazyList;
import org.mortbay.util.Loader;
import org.mortbay.util.TypeUtil;
import org.mortbay.xml.XmlParser;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes3.dex */
public class XmlConfiguration {
    private static final Integer ZERO;
    private static XmlParser __parser;
    private static Class[] __primitiveHolders;
    private static Class[] __primitives = {Boolean.TYPE, Character.TYPE, Byte.TYPE, Short.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE, Void.TYPE};
    static Class class$java$lang$Boolean;
    static Class class$java$lang$Byte;
    static Class class$java$lang$Character;
    static Class class$java$lang$Double;
    static Class class$java$lang$Float;
    static Class class$java$lang$Integer;
    static Class class$java$lang$Long;
    static Class class$java$lang$Object;
    static Class class$java$lang$Short;
    static Class class$java$lang$String;
    static Class class$java$lang$Void;
    static Class class$java$net$InetAddress;
    static Class class$java$net$URL;
    static Class class$org$mortbay$xml$XmlConfiguration;
    private XmlParser.Node _config;
    private Map _idMap = new HashMap();
    private Map _propertyMap = new HashMap();

    static {
        Class clsClass$;
        Class clsClass$2;
        Class clsClass$3;
        Class clsClass$4;
        Class clsClass$5;
        Class clsClass$6;
        Class clsClass$7;
        Class clsClass$8;
        Class clsClass$9;
        Class[] clsArr = new Class[9];
        if (class$java$lang$Boolean == null) {
            clsClass$ = class$("java.lang.Boolean");
            class$java$lang$Boolean = clsClass$;
        } else {
            clsClass$ = class$java$lang$Boolean;
        }
        clsArr[0] = clsClass$;
        if (class$java$lang$Character == null) {
            clsClass$2 = class$("java.lang.Character");
            class$java$lang$Character = clsClass$2;
        } else {
            clsClass$2 = class$java$lang$Character;
        }
        clsArr[1] = clsClass$2;
        if (class$java$lang$Byte == null) {
            clsClass$3 = class$("java.lang.Byte");
            class$java$lang$Byte = clsClass$3;
        } else {
            clsClass$3 = class$java$lang$Byte;
        }
        clsArr[2] = clsClass$3;
        if (class$java$lang$Short == null) {
            clsClass$4 = class$("java.lang.Short");
            class$java$lang$Short = clsClass$4;
        } else {
            clsClass$4 = class$java$lang$Short;
        }
        clsArr[3] = clsClass$4;
        if (class$java$lang$Integer == null) {
            clsClass$5 = class$("java.lang.Integer");
            class$java$lang$Integer = clsClass$5;
        } else {
            clsClass$5 = class$java$lang$Integer;
        }
        clsArr[4] = clsClass$5;
        if (class$java$lang$Long == null) {
            clsClass$6 = class$("java.lang.Long");
            class$java$lang$Long = clsClass$6;
        } else {
            clsClass$6 = class$java$lang$Long;
        }
        clsArr[5] = clsClass$6;
        if (class$java$lang$Float == null) {
            clsClass$7 = class$("java.lang.Float");
            class$java$lang$Float = clsClass$7;
        } else {
            clsClass$7 = class$java$lang$Float;
        }
        clsArr[6] = clsClass$7;
        if (class$java$lang$Double == null) {
            clsClass$8 = class$("java.lang.Double");
            class$java$lang$Double = clsClass$8;
        } else {
            clsClass$8 = class$java$lang$Double;
        }
        clsArr[7] = clsClass$8;
        if (class$java$lang$Void == null) {
            clsClass$9 = class$("java.lang.Void");
            class$java$lang$Void = clsClass$9;
        } else {
            clsClass$9 = class$java$lang$Void;
        }
        clsArr[8] = clsClass$9;
        __primitiveHolders = clsArr;
        ZERO = new Integer(0);
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    private static synchronized void initParser() throws IOException {
        Class clsClass$;
        if (__parser == null) {
            __parser = new XmlParser();
            try {
                if (class$org$mortbay$xml$XmlConfiguration == null) {
                    clsClass$ = class$("org.mortbay.xml.XmlConfiguration");
                    class$org$mortbay$xml$XmlConfiguration = clsClass$;
                } else {
                    clsClass$ = class$org$mortbay$xml$XmlConfiguration;
                }
                URL resource = Loader.getResource(clsClass$, "org/mortbay/xml/configure_6_0.dtd", true);
                __parser.redirectEntity("configure.dtd", resource);
                __parser.redirectEntity("configure_1_3.dtd", resource);
                __parser.redirectEntity("http://jetty.mortbay.org/configure.dtd", resource);
                __parser.redirectEntity("-//Mort Bay Consulting//DTD Configure//EN", resource);
                __parser.redirectEntity("http://jetty.mortbay.org/configure_1_3.dtd", resource);
                __parser.redirectEntity("-//Mort Bay Consulting//DTD Configure 1.3//EN", resource);
                __parser.redirectEntity("configure_1_2.dtd", resource);
                __parser.redirectEntity("http://jetty.mortbay.org/configure_1_2.dtd", resource);
                __parser.redirectEntity("-//Mort Bay Consulting//DTD Configure 1.2//EN", resource);
                __parser.redirectEntity("configure_1_1.dtd", resource);
                __parser.redirectEntity("http://jetty.mortbay.org/configure_1_1.dtd", resource);
                __parser.redirectEntity("-//Mort Bay Consulting//DTD Configure 1.1//EN", resource);
                __parser.redirectEntity("configure_1_0.dtd", resource);
                __parser.redirectEntity("http://jetty.mortbay.org/configure_1_0.dtd", resource);
                __parser.redirectEntity("-//Mort Bay Consulting//DTD Configure 1.0//EN", resource);
            } catch (ClassNotFoundException e2) {
                Log.warn(e2.toString());
                Log.debug(e2);
            }
        }
    }

    public XmlConfiguration(URL url) throws SAXException, IOException {
        initParser();
        synchronized (__parser) {
            this._config = __parser.parse(url.toString());
        }
    }

    public XmlConfiguration(String str) throws SAXException, IOException {
        initParser();
        InputSource inputSource = new InputSource(new StringReader(new StringBuffer().append("<?xml version=\"1.0\"  encoding=\"ISO-8859-1\"?>\n<!DOCTYPE Configure PUBLIC \"-//Mort Bay Consulting//DTD Configure 1.2//EN\" \"http://jetty.mortbay.org/configure_1_2.dtd\">").append(str).toString()));
        synchronized (__parser) {
            this._config = __parser.parse(inputSource);
        }
    }

    public XmlConfiguration(InputStream inputStream) throws SAXException, IOException {
        initParser();
        InputSource inputSource = new InputSource(inputStream);
        synchronized (__parser) {
            this._config = __parser.parse(inputSource);
        }
    }

    public Map getIdMap() {
        return this._idMap;
    }

    public void setIdMap(Map map) {
        this._idMap = map;
    }

    public void setProperties(Map map) {
        this._propertyMap = map;
    }

    public Map getProperties() {
        return this._propertyMap;
    }

    public void configure(Object obj) throws Exception {
        Class clsNodeClass = nodeClass(this._config);
        if (!clsNodeClass.isInstance(obj)) {
            throw new IllegalArgumentException(new StringBuffer().append("Object is not of type ").append(clsNodeClass).toString());
        }
        configure(obj, this._config, 0);
    }

    public Object configure() throws Exception {
        Class clsNodeClass = nodeClass(this._config);
        String attribute = this._config.getAttribute("id");
        Object objNewInstance = attribute == null ? null : this._idMap.get(attribute);
        if (objNewInstance == null && clsNodeClass != null) {
            objNewInstance = clsNodeClass.newInstance();
        }
        if (clsNodeClass != null && !clsNodeClass.isInstance(objNewInstance)) {
            throw new ClassCastException(clsNodeClass.toString());
        }
        configure(objNewInstance, this._config, 0);
        return objNewInstance;
    }

    private Class nodeClass(XmlParser.Node node) throws Throwable {
        Class clsClass$;
        String attribute = node.getAttribute(AdobePSDCompositeConstants.AdobePSDCompositeLayerFillClassKey);
        if (attribute == null) {
            return null;
        }
        if (class$org$mortbay$xml$XmlConfiguration == null) {
            clsClass$ = class$("org.mortbay.xml.XmlConfiguration");
            class$org$mortbay$xml$XmlConfiguration = clsClass$;
        } else {
            clsClass$ = class$org$mortbay$xml$XmlConfiguration;
        }
        return Loader.loadClass(clsClass$, attribute, true);
    }

    private void configure(Object obj, XmlParser.Node node, int i) throws Exception {
        String attribute = node.getAttribute("id");
        if (attribute != null) {
            this._idMap.put(attribute, obj);
        }
        while (i < node.size()) {
            Object obj2 = node.get(i);
            if (!(obj2 instanceof String)) {
                XmlParser.Node node2 = (XmlParser.Node) obj2;
                try {
                    String tag = node2.getTag();
                    if ("Set".equals(tag)) {
                        set(obj, node2);
                    } else if ("Put".equals(tag)) {
                        put(obj, node2);
                    } else if ("Call".equals(tag)) {
                        call(obj, node2);
                    } else if ("Get".equals(tag)) {
                        get(obj, node2);
                    } else if ("New".equals(tag)) {
                        newObj(obj, node2);
                    } else if ("Array".equals(tag)) {
                        newArray(obj, node2);
                    } else if ("Ref".equals(tag)) {
                        refObj(obj, node2);
                    } else if ("Property".equals(tag)) {
                        propertyObj(obj, node2);
                    } else {
                        throw new IllegalStateException(new StringBuffer().append("Unknown tag: ").append(tag).toString());
                    }
                } catch (Exception e2) {
                    Log.warn(new StringBuffer().append("Config error at ").append(node2).toString(), e2.toString());
                    throw e2;
                }
            }
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00df A[Catch: NoSuchFieldException -> 0x00e3, TRY_LEAVE, TryCatch #5 {NoSuchFieldException -> 0x00e3, blocks: (B:29:0x00d1, B:31:0x00df), top: B:87:0x00d1 }] */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:36:0x00ed
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:226)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:196)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:63)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.processExcHandler(ExcHandlersRegionMaker.java:154)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:77)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void set(java.lang.Object r14, org.mortbay.xml.XmlParser.Node r15) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.xml.XmlConfiguration.set(java.lang.Object, org.mortbay.xml.XmlParser$Node):void");
    }

    private void put(Object obj, XmlParser.Node node) throws Exception {
        if (!(obj instanceof Map)) {
            throw new IllegalArgumentException(new StringBuffer().append("Object for put is not a Map: ").append(obj).toString());
        }
        String attribute = node.getAttribute("name");
        Object objValue = value(obj, node);
        ((Map) obj).put(attribute, objValue);
        if (Log.isDebugEnabled()) {
            Log.debug(new StringBuffer().append("XML ").append(obj).append(".put(").append(attribute).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR).append(objValue).append(")").toString());
        }
    }

    private Object get(Object obj, XmlParser.Node node) throws Exception {
        Class<?> cls;
        Class<?> clsNodeClass = nodeClass(node);
        if (clsNodeClass != null) {
            obj = null;
            cls = clsNodeClass;
        } else {
            cls = obj.getClass();
        }
        String attribute = node.getAttribute("name");
        String attribute2 = node.getAttribute("id");
        if (Log.isDebugEnabled()) {
            Log.debug(new StringBuffer().append("XML get ").append(attribute).toString());
        }
        try {
            obj = cls.getMethod(new StringBuffer().append("get").append(attribute.substring(0, 1).toUpperCase()).append(attribute.substring(1)).toString(), (Class[]) null).invoke(obj, (Object[]) null);
            configure(obj, node, 0);
        } catch (NoSuchMethodException e2) {
            try {
                obj = cls.getField(attribute).get(obj);
                configure(obj, node, 0);
            } catch (NoSuchFieldException e3) {
                throw e2;
            }
        }
        if (attribute2 != null) {
            this._idMap.put(attribute2, obj);
        }
        return obj;
    }

    private Object call(Object obj, XmlParser.Node node) throws Exception {
        Class<?> cls;
        boolean z;
        Object objInvoke;
        int i;
        String attribute = node.getAttribute("id");
        Class<?> clsNodeClass = nodeClass(node);
        if (clsNodeClass != null) {
            cls = clsNodeClass;
            obj = null;
        } else {
            cls = obj != null ? obj.getClass() : clsNodeClass;
        }
        if (cls == null) {
            throw new IllegalArgumentException(node.toString());
        }
        int size = node.size();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= node.size()) {
                i2 = size;
                break;
            }
            Object obj2 = node.get(i2);
            if (!(obj2 instanceof String)) {
                if (!((XmlParser.Node) obj2).getTag().equals("Arg")) {
                    break;
                }
                i3++;
            }
            i2++;
        }
        Object[] objArr = new Object[i3];
        int i4 = 0;
        int i5 = 0;
        while (i4 < i3) {
            Object obj3 = node.get(i5);
            if (obj3 instanceof String) {
                i = i4;
            } else {
                objArr[i4] = value(obj, (XmlParser.Node) obj3);
                i = i4 + 1;
            }
            i5++;
            i4 = i;
        }
        String attribute2 = node.getAttribute("name");
        if (Log.isDebugEnabled()) {
            Log.debug(new StringBuffer().append("XML call ").append(attribute2).toString());
        }
        Method[] methods = cls.getMethods();
        for (int i6 = 0; methods != null && i6 < methods.length; i6++) {
            if (methods[i6].getName().equals(attribute2) && methods[i6].getParameterTypes().length == i3) {
                if (Modifier.isStatic(methods[i6].getModifiers()) == (obj == null) && (obj != null || methods[i6].getDeclaringClass() == cls)) {
                    try {
                        objInvoke = methods[i6].invoke(obj, objArr);
                        z = true;
                    } catch (IllegalAccessException e2) {
                        Log.ignore(e2);
                        z = false;
                        objInvoke = null;
                    } catch (IllegalArgumentException e3) {
                        Log.ignore(e3);
                        z = false;
                        objInvoke = null;
                    }
                    if (z) {
                        if (attribute != null) {
                            this._idMap.put(attribute, objInvoke);
                        }
                        configure(objInvoke, node, i2);
                        return objInvoke;
                    }
                }
            }
        }
        throw new IllegalStateException(new StringBuffer().append("No Method: ").append(node).append(" on ").append(cls).toString());
    }

    private Object newObj(Object obj, XmlParser.Node node) throws Exception {
        boolean z;
        int i;
        Class clsNodeClass = nodeClass(node);
        String attribute = node.getAttribute("id");
        int size = node.size();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= node.size()) {
                i2 = size;
                break;
            }
            Object obj2 = node.get(i2);
            if (!(obj2 instanceof String)) {
                if (!((XmlParser.Node) obj2).getTag().equals("Arg")) {
                    break;
                }
                i3++;
            }
            i2++;
        }
        Object[] objArr = new Object[i3];
        int i4 = 0;
        int i5 = 0;
        while (i4 < i3) {
            Object obj3 = node.get(i5);
            if (obj3 instanceof String) {
                i = i4;
            } else {
                objArr[i4] = value(obj, (XmlParser.Node) obj3);
                i = i4 + 1;
            }
            i5++;
            i4 = i;
        }
        if (Log.isDebugEnabled()) {
            Log.debug(new StringBuffer().append("XML new ").append(clsNodeClass).toString());
        }
        Constructor<?>[] constructors = clsNodeClass.getConstructors();
        for (int i6 = 0; constructors != null && i6 < constructors.length; i6++) {
            if (constructors[i6].getParameterTypes().length == i3) {
                Object objNewInstance = null;
                try {
                    objNewInstance = constructors[i6].newInstance(objArr);
                    z = true;
                } catch (IllegalAccessException e2) {
                    Log.ignore(e2);
                    z = false;
                } catch (IllegalArgumentException e3) {
                    Log.ignore(e3);
                    z = false;
                } catch (InstantiationException e4) {
                    Log.ignore(e4);
                    z = false;
                }
                if (z) {
                    if (attribute != null) {
                        this._idMap.put(attribute, objNewInstance);
                    }
                    configure(objNewInstance, node, i2);
                    return objNewInstance;
                }
            }
        }
        throw new IllegalStateException(new StringBuffer().append("No Constructor: ").append(node).append(" on ").append(obj).toString());
    }

    private Object refObj(Object obj, XmlParser.Node node) throws Exception {
        String attribute = node.getAttribute("id");
        Object obj2 = this._idMap.get(attribute);
        if (obj2 == null) {
            throw new IllegalStateException(new StringBuffer().append("No object for id=").append(attribute).toString());
        }
        configure(obj2, node, 0);
        return obj2;
    }

    private Object newArray(Object obj, XmlParser.Node node) throws Exception {
        Class clsFromName;
        Class clsLoadClass;
        Object obj2;
        Class clsClass$;
        Class clsClass$2;
        Class clsClass$3;
        Class clsClass$4;
        if (class$java$lang$Object == null) {
            clsFromName = class$("java.lang.Object");
            class$java$lang$Object = clsFromName;
        } else {
            clsFromName = class$java$lang$Object;
        }
        String attribute = node.getAttribute("type");
        String attribute2 = node.getAttribute("id");
        if (attribute == null || (clsFromName = TypeUtil.fromName(attribute)) != null) {
            clsLoadClass = clsFromName;
        } else if ("String".equals(attribute)) {
            if (class$java$lang$String == null) {
                clsClass$4 = class$("java.lang.String");
                class$java$lang$String = clsClass$4;
            } else {
                clsClass$4 = class$java$lang$String;
            }
            clsLoadClass = clsClass$4;
        } else if ("URL".equals(attribute)) {
            if (class$java$net$URL == null) {
                clsClass$3 = class$("java.net.URL");
                class$java$net$URL = clsClass$3;
            } else {
                clsClass$3 = class$java$net$URL;
            }
            clsLoadClass = clsClass$3;
        } else if ("InetAddress".equals(attribute)) {
            if (class$java$net$InetAddress == null) {
                clsClass$2 = class$("java.net.InetAddress");
                class$java$net$InetAddress = clsClass$2;
            } else {
                clsClass$2 = class$java$net$InetAddress;
            }
            clsLoadClass = clsClass$2;
        } else {
            if (class$org$mortbay$xml$XmlConfiguration == null) {
                clsClass$ = class$("org.mortbay.xml.XmlConfiguration");
                class$org$mortbay$xml$XmlConfiguration = clsClass$;
            } else {
                clsClass$ = class$org$mortbay$xml$XmlConfiguration;
            }
            clsLoadClass = Loader.loadClass(clsClass$, attribute, true);
        }
        Object objAdd = null;
        Iterator it = node.iterator("Item");
        while (true) {
            obj2 = objAdd;
            if (!it.hasNext()) {
                break;
            }
            XmlParser.Node node2 = (XmlParser.Node) it.next();
            String attribute3 = node2.getAttribute("id");
            Object objValue = value(obj, node2);
            objAdd = LazyList.add(obj2, (objValue == null && clsLoadClass.isPrimitive()) ? ZERO : objValue);
            if (attribute3 != null) {
                this._idMap.put(attribute3, objValue);
            }
        }
        Object array = LazyList.toArray(obj2, clsLoadClass);
        if (attribute2 != null) {
            this._idMap.put(attribute2, array);
        }
        return array;
    }

    private Object newMap(Object obj, XmlParser.Node node) throws Exception {
        XmlParser.Node node2;
        XmlParser.Node node3;
        String attribute = node.getAttribute("id");
        HashMap map = new HashMap();
        if (attribute != null) {
            this._idMap.put(attribute, map);
        }
        for (int i = 0; i < node.size(); i++) {
            Object obj2 = node.get(i);
            if (!(obj2 instanceof String)) {
                XmlParser.Node node4 = (XmlParser.Node) obj2;
                if (!node4.getTag().equals("Entry")) {
                    throw new IllegalStateException("Not an Entry");
                }
                int i2 = 0;
                XmlParser.Node node5 = null;
                XmlParser.Node node6 = null;
                while (i2 < node4.size()) {
                    Object obj3 = node4.get(i2);
                    if (obj3 instanceof String) {
                        node2 = node5;
                        node3 = node6;
                    } else {
                        node2 = (XmlParser.Node) obj3;
                        if (!node2.getTag().equals("Item")) {
                            throw new IllegalStateException("Not an Item");
                        }
                        if (node6 == null) {
                            XmlParser.Node node7 = node5;
                            node3 = node2;
                            node2 = node7;
                        } else {
                            node3 = node6;
                        }
                    }
                    i2++;
                    node6 = node3;
                    node5 = node2;
                }
                if (node6 == null || node5 == null) {
                    throw new IllegalStateException("Missing Item in Entry");
                }
                String attribute2 = node6.getAttribute("id");
                String attribute3 = node5.getAttribute("id");
                Object objValue = value(obj, node6);
                Object objValue2 = value(obj, node5);
                map.put(objValue, objValue2);
                if (attribute2 != null) {
                    this._idMap.put(attribute2, objValue);
                }
                if (attribute3 != null) {
                    this._idMap.put(attribute3, objValue2);
                }
            }
        }
        return map;
    }

    private Object propertyObj(Object obj, XmlParser.Node node) throws Exception {
        String attribute = node.getAttribute("id");
        String attribute2 = node.getAttribute("name");
        Object attribute3 = node.getAttribute(ServletHandler.__DEFAULT_SERVLET);
        if (this._propertyMap != null && this._propertyMap.containsKey(attribute2)) {
            attribute3 = this._propertyMap.get(attribute2);
        } else if (attribute3 == null) {
            attribute3 = null;
        }
        if (attribute != null) {
            this._idMap.put(attribute, attribute3);
        }
        if (attribute3 != null) {
            configure(attribute3, node, 0);
        }
        return attribute3;
    }

    private Object value(Object obj, XmlParser.Node node) throws Exception {
        Object string;
        String attribute = node.getAttribute("type");
        String attribute2 = node.getAttribute("ref");
        if (attribute2 != null) {
            string = this._idMap.get(attribute2);
        } else {
            if (node.size() == 0) {
                if ("String".equals(attribute)) {
                    return "";
                }
                return null;
            }
            int i = 0;
            int size = node.size() - 1;
            if (attribute == null || !"String".equals(attribute)) {
                int i2 = 0;
                while (i2 <= size) {
                    Object obj2 = node.get(i2);
                    if (!(obj2 instanceof String) || ((String) obj2).trim().length() > 0) {
                        break;
                    }
                    i2++;
                }
                while (i2 < size) {
                    Object obj3 = node.get(size);
                    if (!(obj3 instanceof String) || ((String) obj3).trim().length() > 0) {
                        break;
                    }
                    size--;
                }
                if (i2 > size) {
                    return null;
                }
                i = i2;
            }
            if (i == size) {
                string = itemValue(obj, node.get(i));
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                synchronized (stringBuffer) {
                    while (i <= size) {
                        stringBuffer.append(itemValue(obj, node.get(i)));
                        i++;
                    }
                    string = stringBuffer.toString();
                }
            }
        }
        if (string == null) {
            if ("String".equals(attribute)) {
                return "";
            }
            return null;
        }
        if (attribute == null) {
            return (string == null || !(string instanceof String)) ? string : ((String) string).trim();
        }
        if ("String".equals(attribute) || "java.lang.String".equals(attribute)) {
            return string.toString();
        }
        Class clsFromName = TypeUtil.fromName(attribute);
        if (clsFromName != null) {
            return TypeUtil.valueOf(clsFromName, string.toString());
        }
        if ("URL".equals(attribute) || "java.net.URL".equals(attribute)) {
            if (!(string instanceof URL)) {
                try {
                    return new URL(string.toString());
                } catch (MalformedURLException e2) {
                    throw new InvocationTargetException(e2);
                }
            }
            return string;
        }
        if ("InetAddress".equals(attribute) || "java.net.InetAddress".equals(attribute)) {
            if (!(string instanceof InetAddress)) {
                try {
                    return InetAddress.getByName(string.toString());
                } catch (UnknownHostException e3) {
                    throw new InvocationTargetException(e3);
                }
            }
            return string;
        }
        throw new IllegalStateException(new StringBuffer().append("Unknown type ").append(attribute).toString());
    }

    private Object itemValue(Object obj, Object obj2) throws Exception {
        if (!(obj2 instanceof String)) {
            XmlParser.Node node = (XmlParser.Node) obj2;
            String tag = node.getTag();
            if ("Call".equals(tag)) {
                return call(obj, node);
            }
            if ("Get".equals(tag)) {
                return get(obj, node);
            }
            if ("New".equals(tag)) {
                return newObj(obj, node);
            }
            if ("Ref".equals(tag)) {
                return refObj(obj, node);
            }
            if ("Array".equals(tag)) {
                return newArray(obj, node);
            }
            if ("Map".equals(tag)) {
                return newMap(obj, node);
            }
            if ("Property".equals(tag)) {
                return propertyObj(obj, node);
            }
            if ("SystemProperty".equals(tag)) {
                return System.getProperty(node.getAttribute("name"), node.getAttribute(ServletHandler.__DEFAULT_SERVLET));
            }
            Log.warn(new StringBuffer().append("Unknown value tag: ").append(node).toString(), new Throwable());
            return null;
        }
        return obj2;
    }

    public static void main(String[] strArr) {
        try {
            Properties properties = new Properties();
            XmlConfiguration xmlConfiguration = null;
            Object[] objArr = new Object[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                if (strArr[i].toLowerCase().endsWith(".properties")) {
                    properties.load(Resource.newResource(strArr[i]).getInputStream());
                } else {
                    XmlConfiguration xmlConfiguration2 = new XmlConfiguration(Resource.newResource(strArr[i]).getURL());
                    if (xmlConfiguration != null) {
                        xmlConfiguration2.getIdMap().putAll(xmlConfiguration.getIdMap());
                    }
                    if (properties.size() > 0) {
                        xmlConfiguration2.setProperties(properties);
                    }
                    objArr[i] = xmlConfiguration2.configure();
                    xmlConfiguration = xmlConfiguration2;
                }
            }
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (objArr[i2] instanceof LifeCycle) {
                    LifeCycle lifeCycle = (LifeCycle) objArr[i2];
                    if (!lifeCycle.isRunning()) {
                        lifeCycle.start();
                    }
                }
            }
        } catch (Exception e2) {
            Log.warn(Log.EXCEPTION, (Throwable) e2);
        }
    }
}
