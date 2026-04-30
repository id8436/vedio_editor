package org.mortbay.util.ajax;

import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.mortbay.log.Log;
import org.mortbay.util.ajax.JSON;

/* JADX INFO: loaded from: classes3.dex */
public class JSONPojoConvertor implements JSON.Convertor {
    static Class class$java$lang$Double;
    static Class class$java$lang$Float;
    static Class class$java$lang$Integer;
    static Class class$java$lang$Long;
    static Class class$java$lang$Object;
    static Class class$java$lang$Short;
    protected Set _excluded;
    protected boolean _fromJSON;
    protected Map _getters;
    protected Class _pojoClass;
    protected Map _setters;
    public static final Object[] GETTER_ARG = new Object[0];
    public static final Object[] NULL_ARG = {null};
    private static final Map __numberTypes = new HashMap();
    public static final NumberType SHORT = new NumberType() { // from class: org.mortbay.util.ajax.JSONPojoConvertor.1
        @Override // org.mortbay.util.ajax.JSONPojoConvertor.NumberType
        public Object getActualValue(Number number) {
            return new Short(number.shortValue());
        }
    };
    public static final NumberType INTEGER = new NumberType() { // from class: org.mortbay.util.ajax.JSONPojoConvertor.2
        @Override // org.mortbay.util.ajax.JSONPojoConvertor.NumberType
        public Object getActualValue(Number number) {
            return new Integer(number.intValue());
        }
    };
    public static final NumberType FLOAT = new NumberType() { // from class: org.mortbay.util.ajax.JSONPojoConvertor.3
        @Override // org.mortbay.util.ajax.JSONPojoConvertor.NumberType
        public Object getActualValue(Number number) {
            return new Float(number.floatValue());
        }
    };
    public static final NumberType LONG = new NumberType() { // from class: org.mortbay.util.ajax.JSONPojoConvertor.4
        @Override // org.mortbay.util.ajax.JSONPojoConvertor.NumberType
        public Object getActualValue(Number number) {
            return number instanceof Long ? number : new Long(number.longValue());
        }
    };
    public static final NumberType DOUBLE = new NumberType() { // from class: org.mortbay.util.ajax.JSONPojoConvertor.5
        @Override // org.mortbay.util.ajax.JSONPojoConvertor.NumberType
        public Object getActualValue(Number number) {
            return number instanceof Double ? number : new Double(number.doubleValue());
        }
    };

    public interface NumberType {
        Object getActualValue(Number number);
    }

    static {
        Class clsClass$;
        Class clsClass$2;
        Class clsClass$3;
        Class clsClass$4;
        Class clsClass$5;
        Map map = __numberTypes;
        if (class$java$lang$Short == null) {
            clsClass$ = class$("java.lang.Short");
            class$java$lang$Short = clsClass$;
        } else {
            clsClass$ = class$java$lang$Short;
        }
        map.put(clsClass$, SHORT);
        __numberTypes.put(Short.TYPE, SHORT);
        Map map2 = __numberTypes;
        if (class$java$lang$Integer == null) {
            clsClass$2 = class$("java.lang.Integer");
            class$java$lang$Integer = clsClass$2;
        } else {
            clsClass$2 = class$java$lang$Integer;
        }
        map2.put(clsClass$2, INTEGER);
        __numberTypes.put(Integer.TYPE, INTEGER);
        Map map3 = __numberTypes;
        if (class$java$lang$Long == null) {
            clsClass$3 = class$("java.lang.Long");
            class$java$lang$Long = clsClass$3;
        } else {
            clsClass$3 = class$java$lang$Long;
        }
        map3.put(clsClass$3, LONG);
        __numberTypes.put(Long.TYPE, LONG);
        Map map4 = __numberTypes;
        if (class$java$lang$Float == null) {
            clsClass$4 = class$("java.lang.Float");
            class$java$lang$Float = clsClass$4;
        } else {
            clsClass$4 = class$java$lang$Float;
        }
        map4.put(clsClass$4, FLOAT);
        __numberTypes.put(Float.TYPE, FLOAT);
        Map map5 = __numberTypes;
        if (class$java$lang$Double == null) {
            clsClass$5 = class$("java.lang.Double");
            class$java$lang$Double = clsClass$5;
        } else {
            clsClass$5 = class$java$lang$Double;
        }
        map5.put(clsClass$5, DOUBLE);
        __numberTypes.put(Double.TYPE, DOUBLE);
    }

    public static NumberType getNumberType(Class cls) {
        return (NumberType) __numberTypes.get(cls);
    }

    public JSONPojoConvertor(Class cls) {
        this(cls, (Set) null, true);
    }

    public JSONPojoConvertor(Class cls, String[] strArr) {
        this(cls, new HashSet(Arrays.asList(strArr)), true);
    }

    public JSONPojoConvertor(Class cls, Set set) {
        this(cls, set, true);
    }

    public JSONPojoConvertor(Class cls, Set set, boolean z) throws Throwable {
        this._getters = new HashMap();
        this._setters = new HashMap();
        this._pojoClass = cls;
        this._excluded = set;
        this._fromJSON = z;
        init();
    }

    public JSONPojoConvertor(Class cls, boolean z) {
        this(cls, (Set) null, z);
    }

    protected void init() throws Throwable {
        Class<?> clsClass$;
        String string;
        for (Method method : this._pojoClass.getMethods()) {
            if (!Modifier.isStatic(method.getModifiers())) {
                Class<?> declaringClass = method.getDeclaringClass();
                if (class$java$lang$Object == null) {
                    clsClass$ = class$("java.lang.Object");
                    class$java$lang$Object = clsClass$;
                } else {
                    clsClass$ = class$java$lang$Object;
                }
                if (declaringClass != clsClass$) {
                    String name = method.getName();
                    switch (method.getParameterTypes().length) {
                        case 0:
                            if (method.getReturnType() != null) {
                                if (name.startsWith("is") && name.length() > 2) {
                                    string = new StringBuffer().append(name.substring(2, 3).toLowerCase()).append(name.substring(3)).toString();
                                } else if (name.startsWith("get") && name.length() > 3) {
                                    string = new StringBuffer().append(name.substring(3, 4).toLowerCase()).append(name.substring(4)).toString();
                                }
                                if (includeField(string, method)) {
                                    addGetter(string, method);
                                }
                                break;
                            }
                            break;
                        case 1:
                            if (name.startsWith("set") && name.length() > 3) {
                                String string2 = new StringBuffer().append(name.substring(3, 4).toLowerCase()).append(name.substring(4)).toString();
                                if (includeField(string2, method)) {
                                    addSetter(string2, method);
                                }
                            }
                            break;
                    }
                }
            }
        }
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    protected void addGetter(String str, Method method) {
        this._getters.put(str, method);
    }

    protected void addSetter(String str, Method method) {
        this._setters.put(str, new Setter(str, method));
    }

    protected Setter getSetter(String str) {
        return (Setter) this._setters.get(str);
    }

    protected boolean includeField(String str, Method method) {
        return this._excluded == null || !this._excluded.contains(str);
    }

    protected int getExcludedCount() {
        if (this._excluded == null) {
            return 0;
        }
        return this._excluded.size();
    }

    @Override // org.mortbay.util.ajax.JSON.Convertor
    public Object fromJSON(Map map) {
        try {
            Object objNewInstance = this._pojoClass.newInstance();
            setProps(objNewInstance, map);
            return objNewInstance;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public int setProps(Object obj, Map map) {
        int i = 0;
        Iterator it = map.entrySet().iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                Setter setter = getSetter((String) entry.getKey());
                if (setter != null) {
                    try {
                        setter.invoke(obj, entry.getValue());
                        i2++;
                    } catch (Exception e2) {
                        Log.warn("{} property '{}' not set. (errors)", this._pojoClass.getName(), setter.getPropertyName());
                        log(e2);
                    }
                }
                i = i2;
            } else {
                return i2;
            }
        }
    }

    @Override // org.mortbay.util.ajax.JSON.Convertor
    public void toJSON(Object obj, JSON.Output output) {
        if (this._fromJSON) {
            output.addClass(this._pojoClass);
        }
        for (Map.Entry entry : this._getters.entrySet()) {
            try {
                output.add((String) entry.getKey(), ((Method) entry.getValue()).invoke(obj, GETTER_ARG));
            } catch (Exception e2) {
                Log.warn("{} property '{}' excluded. (errors)", this._pojoClass.getName(), entry.getKey());
                log(e2);
            }
        }
    }

    protected void log(Throwable th) {
        Log.ignore(th);
    }

    public class Setter {
        protected Class _componentType;
        protected Method _method;
        protected NumberType _numberType;
        protected String _propertyName;
        protected Class _type;

        public Setter(String str, Method method) {
            this._propertyName = str;
            this._method = method;
            this._type = method.getParameterTypes()[0];
            this._numberType = (NumberType) JSONPojoConvertor.__numberTypes.get(this._type);
            if (this._numberType == null && this._type.isArray()) {
                this._componentType = this._type.getComponentType();
                this._numberType = (NumberType) JSONPojoConvertor.__numberTypes.get(this._componentType);
            }
        }

        public String getPropertyName() {
            return this._propertyName;
        }

        public Method getMethod() {
            return this._method;
        }

        public NumberType getNumberType() {
            return this._numberType;
        }

        public Class getType() {
            return this._type;
        }

        public Class getComponentType() {
            return this._componentType;
        }

        public boolean isPropertyNumber() {
            return this._numberType != null;
        }

        public void invoke(Object obj, Object obj2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            if (obj2 == null) {
                this._method.invoke(obj, JSONPojoConvertor.NULL_ARG);
            } else {
                invokeObject(obj, obj2);
            }
        }

        protected void invokeObject(Object obj, Object obj2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            if (this._numberType != null && (obj2 instanceof Number)) {
                this._method.invoke(obj, this._numberType.getActualValue((Number) obj2));
                return;
            }
            if (this._componentType != null && obj2.getClass().isArray()) {
                if (this._numberType == null) {
                    int length = Array.getLength(obj2);
                    Object objNewInstance = Array.newInstance((Class<?>) this._componentType, length);
                    try {
                        System.arraycopy(obj2, 0, objNewInstance, 0, length);
                        this._method.invoke(obj, objNewInstance);
                        return;
                    } catch (Exception e2) {
                        Log.ignore(e2);
                        this._method.invoke(obj, obj2);
                        return;
                    }
                }
                Object[] objArr = (Object[]) obj2;
                Object objNewInstance2 = Array.newInstance((Class<?>) this._componentType, objArr.length);
                for (int i = 0; i < objArr.length; i++) {
                    try {
                        Array.set(objNewInstance2, i, this._numberType.getActualValue((Number) objArr[i]));
                    } catch (Exception e3) {
                        Log.ignore(e3);
                        this._method.invoke(obj, obj2);
                        return;
                    }
                }
                this._method.invoke(obj, objNewInstance2);
                return;
            }
            this._method.invoke(obj, obj2);
        }
    }
}
