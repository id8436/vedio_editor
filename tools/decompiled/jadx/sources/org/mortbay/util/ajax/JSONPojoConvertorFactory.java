package org.mortbay.util.ajax;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import java.util.Map;
import org.mortbay.util.Loader;
import org.mortbay.util.ajax.JSON;

/* JADX INFO: loaded from: classes3.dex */
public class JSONPojoConvertorFactory implements JSON.Convertor {
    static Class class$java$lang$Object;
    static Class class$org$mortbay$util$ajax$JSON;
    private final boolean _fromJSON;
    private final JSON _json;

    public JSONPojoConvertorFactory(JSON json) {
        this._json = json;
        this._fromJSON = true;
        if (json == null) {
            throw new IllegalArgumentException();
        }
    }

    public JSONPojoConvertorFactory(JSON json, boolean z) {
        this._json = json;
        this._fromJSON = z;
        if (json == null) {
            throw new IllegalArgumentException();
        }
    }

    @Override // org.mortbay.util.ajax.JSON.Convertor
    public void toJSON(Object obj, JSON.Output output) throws Throwable {
        Class clsClass$;
        Class<?> clsClass$2;
        String name = obj.getClass().getName();
        JSON.Convertor convertorFor = this._json.getConvertorFor(name);
        if (convertorFor == null) {
            try {
                if (class$org$mortbay$util$ajax$JSON == null) {
                    clsClass$ = class$("org.mortbay.util.ajax.JSON");
                    class$org$mortbay$util$ajax$JSON = clsClass$;
                } else {
                    clsClass$ = class$org$mortbay$util$ajax$JSON;
                }
                JSONPojoConvertor jSONPojoConvertor = new JSONPojoConvertor(Loader.loadClass(clsClass$, name), this._fromJSON);
                try {
                    this._json.addConvertorFor(name, jSONPojoConvertor);
                    convertorFor = jSONPojoConvertor;
                } catch (ClassNotFoundException e2) {
                    e = e2;
                    convertorFor = jSONPojoConvertor;
                    e.printStackTrace();
                }
            } catch (ClassNotFoundException e3) {
                e = e3;
            }
        }
        if (convertorFor != null) {
            Class<?> cls = obj.getClass();
            if (class$java$lang$Object == null) {
                clsClass$2 = class$("java.lang.Object");
                class$java$lang$Object = clsClass$2;
            } else {
                clsClass$2 = class$java$lang$Object;
            }
            if (cls != clsClass$2) {
                convertorFor.toJSON(obj, output);
                return;
            }
        }
        output.add(obj.toString());
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    @Override // org.mortbay.util.ajax.JSON.Convertor
    public Object fromJSON(Map map) throws Throwable {
        Class clsClass$;
        Class clsClass$2;
        String str = (String) map.get(AdobePSDCompositeConstants.AdobePSDCompositeLayerFillClassKey);
        if (str != null) {
            JSON.Convertor convertorFor = this._json.getConvertorFor(str);
            if (convertorFor == null) {
                try {
                    if (class$org$mortbay$util$ajax$JSON == null) {
                        clsClass$ = class$("org.mortbay.util.ajax.JSON");
                        class$org$mortbay$util$ajax$JSON = clsClass$;
                    } else {
                        clsClass$ = class$org$mortbay$util$ajax$JSON;
                    }
                    JSONPojoConvertor jSONPojoConvertor = new JSONPojoConvertor(Loader.loadClass(clsClass$, str));
                    try {
                        this._json.addConvertorFor(str, jSONPojoConvertor);
                        convertorFor = jSONPojoConvertor;
                    } catch (ClassNotFoundException e2) {
                        e = e2;
                        convertorFor = jSONPojoConvertor;
                        e.printStackTrace();
                    }
                } catch (ClassNotFoundException e3) {
                    e = e3;
                }
            }
            if (convertorFor == null) {
                return map;
            }
            if (class$java$lang$Object == null) {
                clsClass$2 = class$("java.lang.Object");
                class$java$lang$Object = clsClass$2;
            } else {
                clsClass$2 = class$java$lang$Object;
            }
            if (!str.equals(clsClass$2.getName())) {
                return convertorFor.fromJSON(map);
            }
            return map;
        }
        return map;
    }
}
