package com.google.api.client.util;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class FieldInfo {
    private static final Map<Field, FieldInfo> CACHE = new WeakHashMap();
    private final Field field;
    private final boolean isPrimitive;
    private final String name;

    public static FieldInfo of(Enum<?> r5) {
        try {
            FieldInfo fieldInfoOf = of(r5.getClass().getField(r5.name()));
            Preconditions.checkArgument(fieldInfoOf != null, "enum constant missing @Value or @NullValue annotation: %s", r5);
            return fieldInfoOf;
        } catch (NoSuchFieldException e2) {
            throw new RuntimeException(e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003a A[Catch: all -> 0x004c, TryCatch #0 {, blocks: (B:7:0x0007, B:10:0x0017, B:13:0x0023, B:15:0x002d, B:16:0x0031, B:18:0x003a, B:19:0x003f, B:20:0x004a, B:25:0x004f, B:28:0x005b, B:30:0x005d, B:32:0x0067, B:34:0x0069), top: B:38:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.api.client.util.FieldInfo of(java.lang.reflect.Field r5) {
        /*
            r1 = 0
            if (r5 != 0) goto L4
        L3:
            return r1
        L4:
            java.util.Map<java.lang.reflect.Field, com.google.api.client.util.FieldInfo> r2 = com.google.api.client.util.FieldInfo.CACHE
            monitor-enter(r2)
            java.util.Map<java.lang.reflect.Field, com.google.api.client.util.FieldInfo> r0 = com.google.api.client.util.FieldInfo.CACHE     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r0 = r0.get(r5)     // Catch: java.lang.Throwable -> L4c
            com.google.api.client.util.FieldInfo r0 = (com.google.api.client.util.FieldInfo) r0     // Catch: java.lang.Throwable -> L4c
            boolean r3 = r5.isEnumConstant()     // Catch: java.lang.Throwable -> L4c
            if (r0 != 0) goto L74
            if (r3 != 0) goto L21
            int r4 = r5.getModifiers()     // Catch: java.lang.Throwable -> L4c
            boolean r4 = java.lang.reflect.Modifier.isStatic(r4)     // Catch: java.lang.Throwable -> L4c
            if (r4 != 0) goto L74
        L21:
            if (r3 == 0) goto L5d
            java.lang.Class<com.google.api.client.util.Value> r0 = com.google.api.client.util.Value.class
            java.lang.annotation.Annotation r0 = r5.getAnnotation(r0)     // Catch: java.lang.Throwable -> L4c
            com.google.api.client.util.Value r0 = (com.google.api.client.util.Value) r0     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L4f
            java.lang.String r0 = r0.value()     // Catch: java.lang.Throwable -> L4c
        L31:
            java.lang.String r1 = "##default"
            boolean r1 = r1.equals(r0)     // Catch: java.lang.Throwable -> L4c
            if (r1 == 0) goto L72
            java.lang.String r0 = r5.getName()     // Catch: java.lang.Throwable -> L4c
            r1 = r0
        L3f:
            com.google.api.client.util.FieldInfo r0 = new com.google.api.client.util.FieldInfo     // Catch: java.lang.Throwable -> L4c
            r0.<init>(r5, r1)     // Catch: java.lang.Throwable -> L4c
            java.util.Map<java.lang.reflect.Field, com.google.api.client.util.FieldInfo> r1 = com.google.api.client.util.FieldInfo.CACHE     // Catch: java.lang.Throwable -> L4c
            r1.put(r5, r0)     // Catch: java.lang.Throwable -> L4c
            r1 = r0
        L4a:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4c
            goto L3
        L4c:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4c
            throw r0
        L4f:
            java.lang.Class<com.google.api.client.util.NullValue> r0 = com.google.api.client.util.NullValue.class
            java.lang.annotation.Annotation r0 = r5.getAnnotation(r0)     // Catch: java.lang.Throwable -> L4c
            com.google.api.client.util.NullValue r0 = (com.google.api.client.util.NullValue) r0     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L5b
            r0 = r1
            goto L31
        L5b:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4c
            goto L3
        L5d:
            java.lang.Class<com.google.api.client.util.Key> r0 = com.google.api.client.util.Key.class
            java.lang.annotation.Annotation r0 = r5.getAnnotation(r0)     // Catch: java.lang.Throwable -> L4c
            com.google.api.client.util.Key r0 = (com.google.api.client.util.Key) r0     // Catch: java.lang.Throwable -> L4c
            if (r0 != 0) goto L69
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4c
            goto L3
        L69:
            java.lang.String r0 = r0.value()     // Catch: java.lang.Throwable -> L4c
            r1 = 1
            r5.setAccessible(r1)     // Catch: java.lang.Throwable -> L4c
            goto L31
        L72:
            r1 = r0
            goto L3f
        L74:
            r1 = r0
            goto L4a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.util.FieldInfo.of(java.lang.reflect.Field):com.google.api.client.util.FieldInfo");
    }

    FieldInfo(Field field, String str) {
        this.field = field;
        this.name = str == null ? null : str.intern();
        this.isPrimitive = Data.isPrimitive(getType());
    }

    public Field getField() {
        return this.field;
    }

    public String getName() {
        return this.name;
    }

    public Class<?> getType() {
        return this.field.getType();
    }

    public Type getGenericType() {
        return this.field.getGenericType();
    }

    public boolean isFinal() {
        return Modifier.isFinal(this.field.getModifiers());
    }

    public boolean isPrimitive() {
        return this.isPrimitive;
    }

    public Object getValue(Object obj) {
        return getFieldValue(this.field, obj);
    }

    public void setValue(Object obj, Object obj2) {
        setFieldValue(this.field, obj, obj2);
    }

    public ClassInfo getClassInfo() {
        return ClassInfo.of(this.field.getDeclaringClass());
    }

    public <T extends Enum<T>> T enumValue() {
        return (T) Enum.valueOf(this.field.getDeclaringClass(), this.field.getName());
    }

    public static Object getFieldValue(Field field, Object obj) {
        try {
            return field.get(obj);
        } catch (IllegalAccessException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static void setFieldValue(Field field, Object obj, Object obj2) {
        if (Modifier.isFinal(field.getModifiers())) {
            Object fieldValue = getFieldValue(field, obj);
            if (obj2 == null) {
                if (fieldValue == null) {
                    return;
                }
            } else if (obj2.equals(fieldValue)) {
                return;
            }
            String strValueOf = String.valueOf(String.valueOf(fieldValue));
            String strValueOf2 = String.valueOf(String.valueOf(obj2));
            String strValueOf3 = String.valueOf(String.valueOf(field.getName()));
            String strValueOf4 = String.valueOf(String.valueOf(obj.getClass().getName()));
            throw new IllegalArgumentException(new StringBuilder(strValueOf.length() + 48 + strValueOf2.length() + strValueOf3.length() + strValueOf4.length()).append("expected final value <").append(strValueOf).append("> but was <").append(strValueOf2).append("> on ").append(strValueOf3).append(" field in ").append(strValueOf4).toString());
        }
        try {
            field.set(obj, obj2);
        } catch (IllegalAccessException e2) {
            throw new IllegalArgumentException(e2);
        } catch (SecurityException e3) {
            throw new IllegalArgumentException(e3);
        }
    }
}
