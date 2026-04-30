package org.mortbay.util.ajax;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import java.lang.reflect.Method;
import java.util.Map;
import org.mortbay.log.Log;
import org.mortbay.util.Loader;
import org.mortbay.util.ajax.JSON;

/* JADX INFO: loaded from: classes3.dex */
public class JSONEnumConvertor implements JSON.Convertor {
    static Class class$java$lang$Class;
    static Class class$java$lang$String;
    private boolean _fromJSON;
    private Method _valueOf;

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public JSONEnumConvertor() {
        this(false);
    }

    public JSONEnumConvertor(boolean z) throws Throwable {
        Class<?> clsClass$;
        Class<?> clsClass$2;
        try {
            Class clsLoadClass = Loader.loadClass(getClass(), "java.lang.Enum");
            Class<?>[] clsArr = new Class[2];
            if (class$java$lang$Class == null) {
                clsClass$ = class$("java.lang.Class");
                class$java$lang$Class = clsClass$;
            } else {
                clsClass$ = class$java$lang$Class;
            }
            clsArr[0] = clsClass$;
            if (class$java$lang$String == null) {
                clsClass$2 = class$("java.lang.String");
                class$java$lang$String = clsClass$2;
            } else {
                clsClass$2 = class$java$lang$String;
            }
            clsArr[1] = clsClass$2;
            this._valueOf = clsLoadClass.getMethod("valueOf", clsArr);
            this._fromJSON = z;
        } catch (Exception e2) {
            throw new RuntimeException("!Enums", e2);
        }
    }

    @Override // org.mortbay.util.ajax.JSON.Convertor
    public Object fromJSON(Map map) {
        if (!this._fromJSON) {
            throw new UnsupportedOperationException();
        }
        try {
            return this._valueOf.invoke(null, Loader.loadClass(getClass(), (String) map.get(AdobePSDCompositeConstants.AdobePSDCompositeLayerFillClassKey)), map.get("value"));
        } catch (Exception e2) {
            Log.warn(e2);
            return null;
        }
    }

    @Override // org.mortbay.util.ajax.JSON.Convertor
    public void toJSON(Object obj, JSON.Output output) {
        if (this._fromJSON) {
            output.addClass(obj.getClass());
            output.add("value", obj.toString());
        } else {
            output.add(obj.toString());
        }
    }
}
