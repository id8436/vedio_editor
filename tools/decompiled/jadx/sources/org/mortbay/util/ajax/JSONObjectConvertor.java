package org.mortbay.util.ajax;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.mortbay.util.ajax.JSON;

/* JADX INFO: loaded from: classes3.dex */
public class JSONObjectConvertor implements JSON.Convertor {
    static Class class$java$lang$Object;
    private Set _excluded;
    private boolean _fromJSON;

    public JSONObjectConvertor() {
        this._excluded = null;
        this._fromJSON = false;
    }

    public JSONObjectConvertor(boolean z) {
        this._excluded = null;
        this._fromJSON = z;
    }

    public JSONObjectConvertor(boolean z, String[] strArr) {
        this._excluded = null;
        this._fromJSON = z;
        if (strArr != null) {
            this._excluded = new HashSet(Arrays.asList(strArr));
        }
    }

    @Override // org.mortbay.util.ajax.JSON.Convertor
    public Object fromJSON(Map map) {
        if (this._fromJSON) {
            throw new UnsupportedOperationException();
        }
        return map;
    }

    @Override // org.mortbay.util.ajax.JSON.Convertor
    public void toJSON(Object obj, JSON.Output output) {
        Class<?> clsClass$;
        String string;
        try {
            obj.getClass();
            if (this._fromJSON) {
                output.addClass(obj.getClass());
            }
            for (Method method : obj.getClass().getMethods()) {
                if (!Modifier.isStatic(method.getModifiers()) && method.getParameterTypes().length == 0 && method.getReturnType() != null) {
                    Class<?> declaringClass = method.getDeclaringClass();
                    if (class$java$lang$Object == null) {
                        clsClass$ = class$("java.lang.Object");
                        class$java$lang$Object = clsClass$;
                    } else {
                        clsClass$ = class$java$lang$Object;
                    }
                    if (declaringClass != clsClass$) {
                        String name = method.getName();
                        if (name.startsWith("is")) {
                            string = new StringBuffer().append(name.substring(2, 3).toLowerCase()).append(name.substring(3)).toString();
                        } else if (name.startsWith("get")) {
                            string = new StringBuffer().append(name.substring(3, 4).toLowerCase()).append(name.substring(4)).toString();
                        }
                        if (includeField(string, obj, method)) {
                            output.add(string, method.invoke(obj, (Object[]) null));
                        }
                    }
                }
            }
        } catch (Throwable th) {
            throw new RuntimeException("Illegal argument", th);
        }
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    protected boolean includeField(String str, Object obj, Method method) {
        return this._excluded == null || !this._excluded.contains(str);
    }
}
