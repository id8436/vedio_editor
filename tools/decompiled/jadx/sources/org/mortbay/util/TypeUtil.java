package org.mortbay.util;

import com.google.common.primitives.UnsignedBytes;
import com.google.gdata.data.analytics.Metric;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.HashMap;
import org.apache.commons.io.IOUtils;
import org.mortbay.log.Log;

/* JADX INFO: loaded from: classes3.dex */
public class TypeUtil {
    static Class class$java$lang$Boolean;
    static Class class$java$lang$Byte;
    static Class class$java$lang$Character;
    static Class class$java$lang$Double;
    static Class class$java$lang$Float;
    static Class class$java$lang$Integer;
    static Class class$java$lang$Long;
    static Class class$java$lang$Short;
    static Class class$java$lang$String;
    private static final HashMap class2Name;
    private static final HashMap class2Value;
    private static int intCacheSize;
    private static Integer[] integerCache;
    private static String[] integerStrCache;
    private static Long[] longCache;
    private static int longCacheSize;
    private static Integer minusOne;
    private static Long minusOneL;
    private static Class[] stringArg;
    public static int CR = 13;
    public static int LF = 10;
    private static final HashMap name2Class = new HashMap();

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
        Class clsClass$10;
        Class clsClass$11;
        Class clsClass$12;
        Class clsClass$13;
        Class clsClass$14;
        Class clsClass$15;
        Class clsClass$16;
        Class clsClass$17;
        Class clsClass$18;
        Class clsClass$19;
        Class clsClass$20;
        Class clsClass$21;
        Class clsClass$22;
        Class clsClass$23;
        Class clsClass$24;
        Class clsClass$25;
        Class clsClass$26;
        Class clsClass$27;
        Class clsClass$28;
        Class clsClass$29;
        Class<?> clsClass$30;
        Class clsClass$31;
        Class clsClass$32;
        Class clsClass$33;
        Class clsClass$34;
        Class clsClass$35;
        Class clsClass$36;
        Class clsClass$37;
        Class cls;
        Class clsClass$38;
        Class cls2;
        Class clsClass$39;
        Class cls3;
        Class clsClass$40;
        Class cls4;
        Class clsClass$41;
        Class cls5;
        Class clsClass$42;
        Class cls6;
        Class clsClass$43;
        Class cls7;
        Class clsClass$44;
        name2Class.put("boolean", Boolean.TYPE);
        name2Class.put("byte", Byte.TYPE);
        name2Class.put("char", Character.TYPE);
        name2Class.put("double", Double.TYPE);
        name2Class.put(Metric.Type.FLOAT, Float.TYPE);
        name2Class.put("int", Integer.TYPE);
        name2Class.put("long", Long.TYPE);
        name2Class.put("short", Short.TYPE);
        name2Class.put("void", Void.TYPE);
        name2Class.put("java.lang.Boolean.TYPE", Boolean.TYPE);
        name2Class.put("java.lang.Byte.TYPE", Byte.TYPE);
        name2Class.put("java.lang.Character.TYPE", Character.TYPE);
        name2Class.put("java.lang.Double.TYPE", Double.TYPE);
        name2Class.put("java.lang.Float.TYPE", Float.TYPE);
        name2Class.put("java.lang.Integer.TYPE", Integer.TYPE);
        name2Class.put("java.lang.Long.TYPE", Long.TYPE);
        name2Class.put("java.lang.Short.TYPE", Short.TYPE);
        name2Class.put("java.lang.Void.TYPE", Void.TYPE);
        HashMap map = name2Class;
        if (class$java$lang$Boolean == null) {
            clsClass$ = class$("java.lang.Boolean");
            class$java$lang$Boolean = clsClass$;
        } else {
            clsClass$ = class$java$lang$Boolean;
        }
        map.put("java.lang.Boolean", clsClass$);
        HashMap map2 = name2Class;
        if (class$java$lang$Byte == null) {
            clsClass$2 = class$("java.lang.Byte");
            class$java$lang$Byte = clsClass$2;
        } else {
            clsClass$2 = class$java$lang$Byte;
        }
        map2.put("java.lang.Byte", clsClass$2);
        HashMap map3 = name2Class;
        if (class$java$lang$Character == null) {
            clsClass$3 = class$("java.lang.Character");
            class$java$lang$Character = clsClass$3;
        } else {
            clsClass$3 = class$java$lang$Character;
        }
        map3.put("java.lang.Character", clsClass$3);
        HashMap map4 = name2Class;
        if (class$java$lang$Double == null) {
            clsClass$4 = class$("java.lang.Double");
            class$java$lang$Double = clsClass$4;
        } else {
            clsClass$4 = class$java$lang$Double;
        }
        map4.put("java.lang.Double", clsClass$4);
        HashMap map5 = name2Class;
        if (class$java$lang$Float == null) {
            clsClass$5 = class$("java.lang.Float");
            class$java$lang$Float = clsClass$5;
        } else {
            clsClass$5 = class$java$lang$Float;
        }
        map5.put("java.lang.Float", clsClass$5);
        HashMap map6 = name2Class;
        if (class$java$lang$Integer == null) {
            clsClass$6 = class$("java.lang.Integer");
            class$java$lang$Integer = clsClass$6;
        } else {
            clsClass$6 = class$java$lang$Integer;
        }
        map6.put("java.lang.Integer", clsClass$6);
        HashMap map7 = name2Class;
        if (class$java$lang$Long == null) {
            clsClass$7 = class$("java.lang.Long");
            class$java$lang$Long = clsClass$7;
        } else {
            clsClass$7 = class$java$lang$Long;
        }
        map7.put("java.lang.Long", clsClass$7);
        HashMap map8 = name2Class;
        if (class$java$lang$Short == null) {
            clsClass$8 = class$("java.lang.Short");
            class$java$lang$Short = clsClass$8;
        } else {
            clsClass$8 = class$java$lang$Short;
        }
        map8.put("java.lang.Short", clsClass$8);
        HashMap map9 = name2Class;
        if (class$java$lang$Boolean == null) {
            clsClass$9 = class$("java.lang.Boolean");
            class$java$lang$Boolean = clsClass$9;
        } else {
            clsClass$9 = class$java$lang$Boolean;
        }
        map9.put("Boolean", clsClass$9);
        HashMap map10 = name2Class;
        if (class$java$lang$Byte == null) {
            clsClass$10 = class$("java.lang.Byte");
            class$java$lang$Byte = clsClass$10;
        } else {
            clsClass$10 = class$java$lang$Byte;
        }
        map10.put("Byte", clsClass$10);
        HashMap map11 = name2Class;
        if (class$java$lang$Character == null) {
            clsClass$11 = class$("java.lang.Character");
            class$java$lang$Character = clsClass$11;
        } else {
            clsClass$11 = class$java$lang$Character;
        }
        map11.put("Character", clsClass$11);
        HashMap map12 = name2Class;
        if (class$java$lang$Double == null) {
            clsClass$12 = class$("java.lang.Double");
            class$java$lang$Double = clsClass$12;
        } else {
            clsClass$12 = class$java$lang$Double;
        }
        map12.put("Double", clsClass$12);
        HashMap map13 = name2Class;
        if (class$java$lang$Float == null) {
            clsClass$13 = class$("java.lang.Float");
            class$java$lang$Float = clsClass$13;
        } else {
            clsClass$13 = class$java$lang$Float;
        }
        map13.put("Float", clsClass$13);
        HashMap map14 = name2Class;
        if (class$java$lang$Integer == null) {
            clsClass$14 = class$("java.lang.Integer");
            class$java$lang$Integer = clsClass$14;
        } else {
            clsClass$14 = class$java$lang$Integer;
        }
        map14.put("Integer", clsClass$14);
        HashMap map15 = name2Class;
        if (class$java$lang$Long == null) {
            clsClass$15 = class$("java.lang.Long");
            class$java$lang$Long = clsClass$15;
        } else {
            clsClass$15 = class$java$lang$Long;
        }
        map15.put("Long", clsClass$15);
        HashMap map16 = name2Class;
        if (class$java$lang$Short == null) {
            clsClass$16 = class$("java.lang.Short");
            class$java$lang$Short = clsClass$16;
        } else {
            clsClass$16 = class$java$lang$Short;
        }
        map16.put("Short", clsClass$16);
        name2Class.put(null, Void.TYPE);
        HashMap map17 = name2Class;
        if (class$java$lang$String == null) {
            clsClass$17 = class$("java.lang.String");
            class$java$lang$String = clsClass$17;
        } else {
            clsClass$17 = class$java$lang$String;
        }
        map17.put("string", clsClass$17);
        HashMap map18 = name2Class;
        if (class$java$lang$String == null) {
            clsClass$18 = class$("java.lang.String");
            class$java$lang$String = clsClass$18;
        } else {
            clsClass$18 = class$java$lang$String;
        }
        map18.put("String", clsClass$18);
        HashMap map19 = name2Class;
        if (class$java$lang$String == null) {
            clsClass$19 = class$("java.lang.String");
            class$java$lang$String = clsClass$19;
        } else {
            clsClass$19 = class$java$lang$String;
        }
        map19.put("java.lang.String", clsClass$19);
        class2Name = new HashMap();
        class2Name.put(Boolean.TYPE, "boolean");
        class2Name.put(Byte.TYPE, "byte");
        class2Name.put(Character.TYPE, "char");
        class2Name.put(Double.TYPE, "double");
        class2Name.put(Float.TYPE, Metric.Type.FLOAT);
        class2Name.put(Integer.TYPE, "int");
        class2Name.put(Long.TYPE, "long");
        class2Name.put(Short.TYPE, "short");
        class2Name.put(Void.TYPE, "void");
        HashMap map20 = class2Name;
        if (class$java$lang$Boolean == null) {
            clsClass$20 = class$("java.lang.Boolean");
            class$java$lang$Boolean = clsClass$20;
        } else {
            clsClass$20 = class$java$lang$Boolean;
        }
        map20.put(clsClass$20, "java.lang.Boolean");
        HashMap map21 = class2Name;
        if (class$java$lang$Byte == null) {
            clsClass$21 = class$("java.lang.Byte");
            class$java$lang$Byte = clsClass$21;
        } else {
            clsClass$21 = class$java$lang$Byte;
        }
        map21.put(clsClass$21, "java.lang.Byte");
        HashMap map22 = class2Name;
        if (class$java$lang$Character == null) {
            clsClass$22 = class$("java.lang.Character");
            class$java$lang$Character = clsClass$22;
        } else {
            clsClass$22 = class$java$lang$Character;
        }
        map22.put(clsClass$22, "java.lang.Character");
        HashMap map23 = class2Name;
        if (class$java$lang$Double == null) {
            clsClass$23 = class$("java.lang.Double");
            class$java$lang$Double = clsClass$23;
        } else {
            clsClass$23 = class$java$lang$Double;
        }
        map23.put(clsClass$23, "java.lang.Double");
        HashMap map24 = class2Name;
        if (class$java$lang$Float == null) {
            clsClass$24 = class$("java.lang.Float");
            class$java$lang$Float = clsClass$24;
        } else {
            clsClass$24 = class$java$lang$Float;
        }
        map24.put(clsClass$24, "java.lang.Float");
        HashMap map25 = class2Name;
        if (class$java$lang$Integer == null) {
            clsClass$25 = class$("java.lang.Integer");
            class$java$lang$Integer = clsClass$25;
        } else {
            clsClass$25 = class$java$lang$Integer;
        }
        map25.put(clsClass$25, "java.lang.Integer");
        HashMap map26 = class2Name;
        if (class$java$lang$Long == null) {
            clsClass$26 = class$("java.lang.Long");
            class$java$lang$Long = clsClass$26;
        } else {
            clsClass$26 = class$java$lang$Long;
        }
        map26.put(clsClass$26, "java.lang.Long");
        HashMap map27 = class2Name;
        if (class$java$lang$Short == null) {
            clsClass$27 = class$("java.lang.Short");
            class$java$lang$Short = clsClass$27;
        } else {
            clsClass$27 = class$java$lang$Short;
        }
        map27.put(clsClass$27, "java.lang.Short");
        class2Name.put(null, "void");
        HashMap map28 = class2Name;
        if (class$java$lang$String == null) {
            clsClass$28 = class$("java.lang.String");
            class$java$lang$String = clsClass$28;
        } else {
            clsClass$28 = class$java$lang$String;
        }
        map28.put(clsClass$28, "java.lang.String");
        class2Value = new HashMap();
        try {
            Class<?>[] clsArr = new Class[1];
            if (class$java$lang$String == null) {
                clsClass$30 = class$("java.lang.String");
                class$java$lang$String = clsClass$30;
            } else {
                clsClass$30 = class$java$lang$String;
            }
            clsArr[0] = clsClass$30;
            HashMap map29 = class2Value;
            Class cls8 = Boolean.TYPE;
            if (class$java$lang$Boolean == null) {
                clsClass$31 = class$("java.lang.Boolean");
                class$java$lang$Boolean = clsClass$31;
            } else {
                clsClass$31 = class$java$lang$Boolean;
            }
            map29.put(cls8, clsClass$31.getMethod("valueOf", clsArr));
            HashMap map30 = class2Value;
            Class cls9 = Byte.TYPE;
            if (class$java$lang$Byte == null) {
                clsClass$32 = class$("java.lang.Byte");
                class$java$lang$Byte = clsClass$32;
            } else {
                clsClass$32 = class$java$lang$Byte;
            }
            map30.put(cls9, clsClass$32.getMethod("valueOf", clsArr));
            HashMap map31 = class2Value;
            Class cls10 = Double.TYPE;
            if (class$java$lang$Double == null) {
                clsClass$33 = class$("java.lang.Double");
                class$java$lang$Double = clsClass$33;
            } else {
                clsClass$33 = class$java$lang$Double;
            }
            map31.put(cls10, clsClass$33.getMethod("valueOf", clsArr));
            HashMap map32 = class2Value;
            Class cls11 = Float.TYPE;
            if (class$java$lang$Float == null) {
                clsClass$34 = class$("java.lang.Float");
                class$java$lang$Float = clsClass$34;
            } else {
                clsClass$34 = class$java$lang$Float;
            }
            map32.put(cls11, clsClass$34.getMethod("valueOf", clsArr));
            HashMap map33 = class2Value;
            Class cls12 = Integer.TYPE;
            if (class$java$lang$Integer == null) {
                clsClass$35 = class$("java.lang.Integer");
                class$java$lang$Integer = clsClass$35;
            } else {
                clsClass$35 = class$java$lang$Integer;
            }
            map33.put(cls12, clsClass$35.getMethod("valueOf", clsArr));
            HashMap map34 = class2Value;
            Class cls13 = Long.TYPE;
            if (class$java$lang$Long == null) {
                clsClass$36 = class$("java.lang.Long");
                class$java$lang$Long = clsClass$36;
            } else {
                clsClass$36 = class$java$lang$Long;
            }
            map34.put(cls13, clsClass$36.getMethod("valueOf", clsArr));
            HashMap map35 = class2Value;
            Class cls14 = Short.TYPE;
            if (class$java$lang$Short == null) {
                clsClass$37 = class$("java.lang.Short");
                class$java$lang$Short = clsClass$37;
            } else {
                clsClass$37 = class$java$lang$Short;
            }
            map35.put(cls14, clsClass$37.getMethod("valueOf", clsArr));
            HashMap map36 = class2Value;
            if (class$java$lang$Boolean == null) {
                Class clsClass$45 = class$("java.lang.Boolean");
                class$java$lang$Boolean = clsClass$45;
                cls = clsClass$45;
            } else {
                cls = class$java$lang$Boolean;
            }
            if (class$java$lang$Boolean == null) {
                clsClass$38 = class$("java.lang.Boolean");
                class$java$lang$Boolean = clsClass$38;
            } else {
                clsClass$38 = class$java$lang$Boolean;
            }
            map36.put(cls, clsClass$38.getMethod("valueOf", clsArr));
            HashMap map37 = class2Value;
            if (class$java$lang$Byte == null) {
                Class clsClass$46 = class$("java.lang.Byte");
                class$java$lang$Byte = clsClass$46;
                cls2 = clsClass$46;
            } else {
                cls2 = class$java$lang$Byte;
            }
            if (class$java$lang$Byte == null) {
                clsClass$39 = class$("java.lang.Byte");
                class$java$lang$Byte = clsClass$39;
            } else {
                clsClass$39 = class$java$lang$Byte;
            }
            map37.put(cls2, clsClass$39.getMethod("valueOf", clsArr));
            HashMap map38 = class2Value;
            if (class$java$lang$Double == null) {
                Class clsClass$47 = class$("java.lang.Double");
                class$java$lang$Double = clsClass$47;
                cls3 = clsClass$47;
            } else {
                cls3 = class$java$lang$Double;
            }
            if (class$java$lang$Double == null) {
                clsClass$40 = class$("java.lang.Double");
                class$java$lang$Double = clsClass$40;
            } else {
                clsClass$40 = class$java$lang$Double;
            }
            map38.put(cls3, clsClass$40.getMethod("valueOf", clsArr));
            HashMap map39 = class2Value;
            if (class$java$lang$Float == null) {
                Class clsClass$48 = class$("java.lang.Float");
                class$java$lang$Float = clsClass$48;
                cls4 = clsClass$48;
            } else {
                cls4 = class$java$lang$Float;
            }
            if (class$java$lang$Float == null) {
                clsClass$41 = class$("java.lang.Float");
                class$java$lang$Float = clsClass$41;
            } else {
                clsClass$41 = class$java$lang$Float;
            }
            map39.put(cls4, clsClass$41.getMethod("valueOf", clsArr));
            HashMap map40 = class2Value;
            if (class$java$lang$Integer == null) {
                Class clsClass$49 = class$("java.lang.Integer");
                class$java$lang$Integer = clsClass$49;
                cls5 = clsClass$49;
            } else {
                cls5 = class$java$lang$Integer;
            }
            if (class$java$lang$Integer == null) {
                clsClass$42 = class$("java.lang.Integer");
                class$java$lang$Integer = clsClass$42;
            } else {
                clsClass$42 = class$java$lang$Integer;
            }
            map40.put(cls5, clsClass$42.getMethod("valueOf", clsArr));
            HashMap map41 = class2Value;
            if (class$java$lang$Long == null) {
                Class clsClass$50 = class$("java.lang.Long");
                class$java$lang$Long = clsClass$50;
                cls6 = clsClass$50;
            } else {
                cls6 = class$java$lang$Long;
            }
            if (class$java$lang$Long == null) {
                clsClass$43 = class$("java.lang.Long");
                class$java$lang$Long = clsClass$43;
            } else {
                clsClass$43 = class$java$lang$Long;
            }
            map41.put(cls6, clsClass$43.getMethod("valueOf", clsArr));
            HashMap map42 = class2Value;
            if (class$java$lang$Short == null) {
                Class clsClass$51 = class$("java.lang.Short");
                class$java$lang$Short = clsClass$51;
                cls7 = clsClass$51;
            } else {
                cls7 = class$java$lang$Short;
            }
            if (class$java$lang$Short == null) {
                clsClass$44 = class$("java.lang.Short");
                class$java$lang$Short = clsClass$44;
            } else {
                clsClass$44 = class$java$lang$Short;
            }
            map42.put(cls7, clsClass$44.getMethod("valueOf", clsArr));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        Class[] clsArr2 = new Class[1];
        if (class$java$lang$String == null) {
            clsClass$29 = class$("java.lang.String");
            class$java$lang$String = clsClass$29;
        } else {
            clsClass$29 = class$java$lang$String;
        }
        clsArr2[0] = clsClass$29;
        stringArg = clsArr2;
        intCacheSize = Integer.getInteger("org.mortbay.util.TypeUtil.IntegerCacheSize", 600).intValue();
        integerCache = new Integer[intCacheSize];
        integerStrCache = new String[intCacheSize];
        minusOne = new Integer(-1);
        longCacheSize = Integer.getInteger("org.mortbay.util.TypeUtil.LongCacheSize", 64).intValue();
        longCache = new Long[longCacheSize];
        minusOneL = new Long(-1L);
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static Class fromName(String str) {
        return (Class) name2Class.get(str);
    }

    public static String toName(Class cls) {
        return (String) class2Name.get(cls);
    }

    public static Object valueOf(Class cls, String str) throws Throwable {
        Class clsClass$;
        Class clsClass$2;
        try {
            if (class$java$lang$String == null) {
                clsClass$ = class$("java.lang.String");
                class$java$lang$String = clsClass$;
            } else {
                clsClass$ = class$java$lang$String;
            }
            if (!cls.equals(clsClass$)) {
                Method method = (Method) class2Value.get(cls);
                if (method != null) {
                    return method.invoke(null, str);
                }
                if (!cls.equals(Character.TYPE)) {
                    if (class$java$lang$Character == null) {
                        clsClass$2 = class$("java.lang.Character");
                        class$java$lang$Character = clsClass$2;
                    } else {
                        clsClass$2 = class$java$lang$Character;
                    }
                    if (!cls.equals(clsClass$2)) {
                        return cls.getConstructor(stringArg).newInstance(str);
                    }
                }
                return new Character(str.charAt(0));
            }
            return str;
        } catch (IllegalAccessException e2) {
            return null;
        } catch (InstantiationException e3) {
            return null;
        } catch (NoSuchMethodException e4) {
            return null;
        } catch (InvocationTargetException e5) {
            if (e5.getTargetException() instanceof Error) {
                throw ((Error) e5.getTargetException());
            }
            return null;
        }
    }

    public static Object valueOf(String str, String str2) {
        return valueOf(fromName(str), str2);
    }

    public static Integer newInteger(int i) {
        if (i >= 0 && i < intCacheSize) {
            if (integerCache[i] == null) {
                integerCache[i] = new Integer(i);
            }
            return integerCache[i];
        }
        if (i == -1) {
            return minusOne;
        }
        return new Integer(i);
    }

    public static Long newLong(long j) {
        if (j < 0 || j >= longCacheSize) {
            if (j == -1) {
                return minusOneL;
            }
            return new Long(j);
        }
        if (longCache[(int) j] == null) {
            longCache[(int) j] = new Long(j);
        }
        return longCache[(int) j];
    }

    public static String toString(int i) {
        if (i >= 0 && i < intCacheSize) {
            if (integerStrCache[i] == null) {
                integerStrCache[i] = Integer.toString(i);
            }
            return integerStrCache[i];
        }
        if (i == -1) {
            return "-1";
        }
        return Integer.toString(i);
    }

    public static String toString(long j) {
        if (j < 0 || j >= intCacheSize) {
            if (j == -1) {
                return "-1";
            }
            return Long.toString(j);
        }
        if (integerStrCache[(int) j] == null) {
            integerStrCache[(int) j] = Long.toString(j);
        }
        return integerStrCache[(int) j];
    }

    public static int parseInt(String str, int i, int i2, int i3) throws NumberFormatException {
        if (i2 < 0) {
            i2 = str.length() - i;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            char cCharAt = str.charAt(i + i5);
            int i6 = cCharAt - '0';
            if ((i6 < 0 || i6 >= i3 || i6 >= 10) && ((cCharAt + '\n') - 65 < 10 || i6 >= i3)) {
                i6 = (cCharAt + '\n') - 97;
            }
            if (i6 < 0 || i6 >= i3) {
                throw new NumberFormatException(str.substring(i, i + i2));
            }
            i4 = (i4 * i3) + i6;
        }
        return i4;
    }

    public static int parseInt(byte[] bArr, int i, int i2, int i3) throws NumberFormatException {
        if (i2 < 0) {
            i2 = bArr.length - i;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            char c2 = (char) (bArr[i + i5] & UnsignedBytes.MAX_VALUE);
            int i6 = c2 - '0';
            if ((i6 < 0 || i6 >= i3 || i6 >= 10) && ((c2 + '\n') - 65 < 10 || i6 >= i3)) {
                i6 = (c2 + '\n') - 97;
            }
            if (i6 < 0 || i6 >= i3) {
                throw new NumberFormatException(new String(bArr, i, i2));
            }
            i4 = (i4 * i3) + i6;
        }
        return i4;
    }

    public static byte[] parseBytes(String str, int i) {
        byte[] bArr = new byte[str.length() / 2];
        for (int i2 = 0; i2 < str.length(); i2 += 2) {
            bArr[i2 / 2] = (byte) parseInt(str, i2, 2, i);
        }
        return bArr;
    }

    public static String toString(byte[] bArr, int i) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 : bArr) {
            int i3 = i2 & 255;
            int i4 = ((i3 / i) % i) + 48;
            if (i4 > 57) {
                i4 = ((i4 - 48) - 10) + 97;
            }
            stringBuffer.append((char) i4);
            int i5 = (i3 % i) + 48;
            if (i5 > 57) {
                i5 = ((i5 - 48) - 10) + 97;
            }
            stringBuffer.append((char) i5);
        }
        return stringBuffer.toString();
    }

    public static byte convertHexDigit(byte b2) {
        if (b2 >= 48 && b2 <= 57) {
            return (byte) (b2 - 48);
        }
        if (b2 >= 97 && b2 <= 102) {
            return (byte) ((b2 - 97) + 10);
        }
        if (b2 < 65 || b2 > 70) {
            return (byte) 0;
        }
        return (byte) ((b2 - 65) + 10);
    }

    public static String toHexString(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b2 : bArr) {
            int i = b2 & UnsignedBytes.MAX_VALUE;
            int i2 = ((i / 16) % 16) + 48;
            if (i2 > 57) {
                i2 = ((i2 - 48) - 10) + 65;
            }
            stringBuffer.append((char) i2);
            int i3 = (i % 16) + 48;
            if (i3 > 57) {
                i3 = ((i3 - 48) - 10) + 97;
            }
            stringBuffer.append((char) i3);
        }
        return stringBuffer.toString();
    }

    public static String toHexString(byte[] bArr, int i, int i2) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i3 = i; i3 < i + i2; i3++) {
            int i4 = bArr[i3] & UnsignedBytes.MAX_VALUE;
            int i5 = ((i4 / 16) % 16) + 48;
            if (i5 > 57) {
                i5 = ((i5 - 48) - 10) + 65;
            }
            stringBuffer.append((char) i5);
            int i6 = (i4 % 16) + 48;
            if (i6 > 57) {
                i6 = ((i6 - 48) - 10) + 97;
            }
            stringBuffer.append((char) i6);
        }
        return stringBuffer.toString();
    }

    public static byte[] fromHexString(String str) {
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException(str);
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) (Integer.parseInt(str.substring(i * 2, (i * 2) + 2), 16) & 255);
        }
        return bArr;
    }

    public static void dump(Class cls) {
        System.err.println(new StringBuffer().append("Dump: ").append(cls).toString());
        dump(cls.getClassLoader());
    }

    public static void dump(ClassLoader classLoader) {
        System.err.println("Dump Loaders:");
        while (classLoader != null) {
            System.err.println(new StringBuffer().append("  loader ").append(classLoader).toString());
            classLoader = classLoader.getParent();
        }
    }

    public static byte[] readLine(InputStream inputStream) throws IOException {
        int i;
        byte[] bArr;
        int i2 = 0;
        byte[] bArr2 = new byte[256];
        int i3 = 0;
        while (true) {
            i = inputStream.read();
            if (i < 0) {
                break;
            }
            i3++;
            if (i3 != 1 || i != LF) {
                if (i == CR || i == LF) {
                    break;
                }
                if (i2 >= bArr2.length) {
                    bArr = new byte[bArr2.length + 256];
                    System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
                } else {
                    bArr = bArr2;
                }
                bArr[i2] = (byte) i;
                i2++;
                bArr2 = bArr;
            }
        }
        if (i == -1 && i2 == 0) {
            return null;
        }
        if (i == CR && inputStream.available() >= 1 && inputStream.markSupported()) {
            inputStream.mark(1);
            if (inputStream.read() != LF) {
                inputStream.reset();
            }
        }
        byte[] bArr3 = new byte[i2];
        System.arraycopy(bArr2, 0, bArr3, 0, i2);
        return bArr3;
    }

    public static URL jarFor(String str) {
        try {
            String string = Loader.getResource(null, new StringBuffer().append(str.replace('.', IOUtils.DIR_SEPARATOR_UNIX)).append(".class").toString(), false).toString();
            if (string.startsWith("jar:file:")) {
                return new URL(string.substring(4, string.indexOf("!/")));
            }
        } catch (Exception e2) {
            Log.ignore(e2);
        }
        return null;
    }
}
