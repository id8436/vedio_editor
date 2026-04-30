package org.mortbay.util;

import com.adobe.xmp.XMPConst;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes3.dex */
public class LazyList implements Serializable, Cloneable {
    private static final String[] __EMTPY_STRING_ARRAY = new String[0];

    private LazyList() {
    }

    public static Object add(Object obj, Object obj2) {
        if (obj == null) {
            if ((obj2 instanceof List) || obj2 == null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(obj2);
                return arrayList;
            }
            return obj2;
        }
        if (obj instanceof List) {
            ((List) obj).add(obj2);
            return obj;
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(obj);
        arrayList2.add(obj2);
        return arrayList2;
    }

    public static Object add(Object obj, int i, Object obj2) {
        if (obj == null) {
            if (i > 0 || (obj2 instanceof List) || obj2 == null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(i, obj2);
                return arrayList;
            }
            return obj2;
        }
        if (obj instanceof List) {
            ((List) obj).add(i, obj2);
            return obj;
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(obj);
        arrayList2.add(i, obj2);
        return arrayList2;
    }

    public static Object addCollection(Object obj, Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            obj = add(obj, it.next());
        }
        return obj;
    }

    public static Object addArray(Object obj, Object[] objArr) {
        for (int i = 0; objArr != null && i < objArr.length; i++) {
            obj = add(obj, objArr[i]);
        }
        return obj;
    }

    public static Object ensureSize(Object obj, int i) {
        if (obj == null) {
            return new ArrayList(i);
        }
        if (obj instanceof ArrayList) {
            ArrayList arrayList = (ArrayList) obj;
            if (arrayList.size() <= i) {
                ArrayList arrayList2 = new ArrayList(i);
                arrayList2.addAll(arrayList);
                return arrayList2;
            }
            return arrayList;
        }
        ArrayList arrayList3 = new ArrayList(i);
        arrayList3.add(obj);
        return arrayList3;
    }

    public static Object remove(Object obj, Object obj2) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            list.remove(obj2);
            if (list.size() == 0) {
                return null;
            }
            return obj;
        }
        if (obj.equals(obj2)) {
            return null;
        }
        return obj;
    }

    public static Object remove(Object obj, int i) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            list.remove(i);
            if (list.size() == 0) {
                return null;
            }
            return obj;
        }
        if (i == 0) {
            return null;
        }
        return obj;
    }

    public static List getList(Object obj) {
        return getList(obj, false);
    }

    public static List getList(Object obj, boolean z) {
        if (obj == null) {
            if (z) {
                return null;
            }
            return Collections.EMPTY_LIST;
        }
        if (obj instanceof List) {
            return (List) obj;
        }
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(obj);
        return arrayList;
    }

    public static String[] toStringArray(Object obj) {
        if (obj == null) {
            return __EMTPY_STRING_ARRAY;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            String[] strArr = new String[list.size()];
            int size = list.size();
            while (true) {
                int i = size - 1;
                if (size > 0) {
                    Object obj2 = list.get(i);
                    if (obj2 != null) {
                        strArr[i] = obj2.toString();
                    }
                    size = i;
                } else {
                    return strArr;
                }
            }
        } else {
            return new String[]{obj.toString()};
        }
    }

    public static Object toArray(Object obj, Class cls) {
        if (obj == null) {
            return (Object[]) Array.newInstance((Class<?>) cls, 0);
        }
        if (obj instanceof List) {
            List list = (List) obj;
            if (cls.isPrimitive()) {
                Object objNewInstance = Array.newInstance((Class<?>) cls, list.size());
                for (int i = 0; i < list.size(); i++) {
                    Array.set(objNewInstance, i, list.get(i));
                }
                return objNewInstance;
            }
            return list.toArray((Object[]) Array.newInstance((Class<?>) cls, list.size()));
        }
        Object objNewInstance2 = Array.newInstance((Class<?>) cls, 1);
        Array.set(objNewInstance2, 0, obj);
        return objNewInstance2;
    }

    public static int size(Object obj) {
        if (obj == null) {
            return 0;
        }
        if (obj instanceof List) {
            return ((List) obj).size();
        }
        return 1;
    }

    public static Object get(Object obj, int i) {
        if (obj == null) {
            throw new IndexOutOfBoundsException();
        }
        if (obj instanceof List) {
            return ((List) obj).get(i);
        }
        if (i == 0) {
            return obj;
        }
        throw new IndexOutOfBoundsException();
    }

    public static boolean contains(Object obj, Object obj2) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof List) {
            return ((List) obj).contains(obj2);
        }
        return obj.equals(obj2);
    }

    public static Object clone(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof List) {
            return new ArrayList((List) obj);
        }
        return obj;
    }

    public static String toString(Object obj) {
        if (obj == null) {
            return XMPConst.ARRAY_ITEM_NAME;
        }
        if (obj instanceof List) {
            return ((List) obj).toString();
        }
        return new StringBuffer().append("[").append(obj).append("]").toString();
    }

    public static Iterator iterator(Object obj) {
        if (obj == null) {
            return Collections.EMPTY_LIST.iterator();
        }
        if (obj instanceof List) {
            return ((List) obj).iterator();
        }
        return getList(obj).iterator();
    }

    public static ListIterator listIterator(Object obj) {
        if (obj == null) {
            return Collections.EMPTY_LIST.listIterator();
        }
        if (obj instanceof List) {
            return ((List) obj).listIterator();
        }
        return getList(obj).listIterator();
    }

    public static List array2List(Object[] objArr) {
        return (objArr == null || objArr.length == 0) ? new ArrayList() : new ArrayList(Arrays.asList(objArr));
    }

    public static Object[] addToArray(Object[] objArr, Object obj, Class cls) {
        if (objArr == null) {
            if (cls == null && obj != null) {
                cls = obj.getClass();
            }
            Object[] objArr2 = (Object[]) Array.newInstance((Class<?>) cls, 1);
            objArr2[0] = obj;
            return objArr2;
        }
        Object[] objArr3 = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), Array.getLength(objArr) + 1);
        System.arraycopy(objArr, 0, objArr3, 0, objArr.length);
        objArr3[objArr.length] = obj;
        return objArr3;
    }

    public static Object[] removeFromArray(Object[] objArr, Object obj) {
        if (obj != null && objArr != null) {
            int length = objArr.length;
            while (true) {
                int i = length - 1;
                if (length > 0) {
                    if (obj.equals(objArr[i])) {
                        Object[] objArr2 = (Object[]) Array.newInstance(objArr == null ? obj.getClass() : objArr.getClass().getComponentType(), Array.getLength(objArr) - 1);
                        if (i > 0) {
                            System.arraycopy(objArr, 0, objArr2, 0, i);
                        }
                        if (i + 1 < objArr.length) {
                            System.arraycopy(objArr, i + 1, objArr2, i, objArr.length - (i + 1));
                        }
                        return objArr2;
                    }
                    length = i;
                } else {
                    return objArr;
                }
            }
        } else {
            return objArr;
        }
    }
}
