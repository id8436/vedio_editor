package org.mortbay.util;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class MultiMap extends HashMap implements Cloneable {
    public MultiMap() {
    }

    public MultiMap(int i) {
        super(i);
    }

    public MultiMap(Map map) {
        super((map.size() * 3) / 2);
        putAll(map);
    }

    public List getValues(Object obj) {
        return LazyList.getList(super.get(obj), true);
    }

    public Object getValue(Object obj, int i) {
        Object obj2 = super.get(obj);
        if (i == 0 && LazyList.size(obj2) == 0) {
            return null;
        }
        return LazyList.get(obj2, i);
    }

    public String getString(Object obj) {
        String string;
        Object obj2 = super.get(obj);
        switch (LazyList.size(obj2)) {
            case 0:
                return null;
            case 1:
                Object obj3 = LazyList.get(obj2, 0);
                if (obj3 == null) {
                    return null;
                }
                return obj3.toString();
            default:
                StringBuffer stringBuffer = new StringBuffer(128);
                synchronized (stringBuffer) {
                    for (int i = 0; i < LazyList.size(obj2); i++) {
                        Object obj4 = LazyList.get(obj2, i);
                        if (obj4 != null) {
                            if (stringBuffer.length() > 0) {
                                stringBuffer.append(',');
                            }
                            stringBuffer.append(obj4.toString());
                        }
                        break;
                    }
                    string = stringBuffer.toString();
                    break;
                }
                return string;
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        Object obj2 = super.get(obj);
        switch (LazyList.size(obj2)) {
            case 0:
                return null;
            case 1:
                return LazyList.get(obj2, 0);
            default:
                return LazyList.getList(obj2, true);
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Object put(Object obj, Object obj2) {
        return super.put(obj, LazyList.add(null, obj2));
    }

    public Object putValues(Object obj, List list) {
        return super.put(obj, list);
    }

    public Object putValues(Object obj, String[] strArr) {
        Object objAdd = null;
        for (String str : strArr) {
            objAdd = LazyList.add(objAdd, str);
        }
        return put(obj, objAdd);
    }

    public void add(Object obj, Object obj2) {
        Object obj3 = super.get(obj);
        Object objAdd = LazyList.add(obj3, obj2);
        if (obj3 != objAdd) {
            super.put(obj, objAdd);
        }
    }

    public void addValues(Object obj, List list) {
        Object obj2 = super.get(obj);
        Object objAddCollection = LazyList.addCollection(obj2, list);
        if (obj2 != objAddCollection) {
            super.put(obj, objAddCollection);
        }
    }

    public void addValues(Object obj, String[] strArr) {
        Object obj2 = super.get(obj);
        Object objAddCollection = LazyList.addCollection(obj2, Arrays.asList(strArr));
        if (obj2 != objAddCollection) {
            super.put(obj, objAddCollection);
        }
    }

    public boolean removeValue(Object obj, Object obj2) {
        Object objRemove = super.get(obj);
        int size = LazyList.size(objRemove);
        if (size > 0) {
            objRemove = LazyList.remove(objRemove, obj2);
            if (objRemove == null) {
                super.remove(obj);
            } else {
                super.put(obj, objRemove);
            }
        }
        return LazyList.size(objRemove) != size;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void putAll(Map map) {
        boolean z = map instanceof MultiMap;
        for (Map.Entry entry : map.entrySet()) {
            if (z) {
                super.put(entry.getKey(), LazyList.clone(entry.getValue()));
            } else {
                put(entry.getKey(), entry.getValue());
            }
        }
    }

    public Map toStringArrayMap() {
        HashMap map = new HashMap((size() * 3) / 2);
        for (Map.Entry entry : super.entrySet()) {
            map.put(entry.getKey(), LazyList.toStringArray(entry.getValue()));
        }
        return map;
    }

    @Override // java.util.HashMap, java.util.AbstractMap
    public Object clone() {
        MultiMap multiMap = (MultiMap) super.clone();
        for (Map.Entry entry : multiMap.entrySet()) {
            entry.setValue(LazyList.clone(entry.getValue()));
        }
        return multiMap;
    }
}
