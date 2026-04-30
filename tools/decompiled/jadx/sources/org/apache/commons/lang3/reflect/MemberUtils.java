package org.apache.commons.lang3.reflect;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import org.apache.commons.lang3.ClassUtils;

/* JADX INFO: loaded from: classes3.dex */
abstract class MemberUtils {
    private static final int ACCESS_TEST = 7;
    private static final Class<?>[] ORDERED_PRIMITIVE_TYPES = {Byte.TYPE, Short.TYPE, Character.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE};

    MemberUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    static void setAccessibleWorkaround(AccessibleObject accessibleObject) {
        if (accessibleObject != 0 && !accessibleObject.isAccessible()) {
            Member member = (Member) accessibleObject;
            if (Modifier.isPublic(member.getModifiers()) && isPackageAccess(member.getDeclaringClass().getModifiers())) {
                try {
                    accessibleObject.setAccessible(true);
                } catch (SecurityException e2) {
                }
            }
        }
    }

    static boolean isPackageAccess(int i) {
        return (i & 7) == 0;
    }

    static boolean isAccessible(Member member) {
        return (member == null || !Modifier.isPublic(member.getModifiers()) || member.isSynthetic()) ? false : true;
    }

    static int compareParameterTypes(Class<?>[] clsArr, Class<?>[] clsArr2, Class<?>[] clsArr3) {
        float totalTransformationCost = getTotalTransformationCost(clsArr3, clsArr);
        float totalTransformationCost2 = getTotalTransformationCost(clsArr3, clsArr2);
        if (totalTransformationCost < totalTransformationCost2) {
            return -1;
        }
        return totalTransformationCost2 < totalTransformationCost ? 1 : 0;
    }

    private static float getTotalTransformationCost(Class<?>[] clsArr, Class<?>[] clsArr2) {
        float objectTransformationCost = 0.0f;
        for (int i = 0; i < clsArr.length; i++) {
            objectTransformationCost += getObjectTransformationCost(clsArr[i], clsArr2[i]);
        }
        return objectTransformationCost;
    }

    private static float getObjectTransformationCost(Class<?> cls, Class<?> cls2) {
        if (cls2.isPrimitive()) {
            return getPrimitivePromotionCost(cls, cls2);
        }
        float f2 = 0.0f;
        while (true) {
            if (cls != null && !cls2.equals(cls)) {
                if (cls2.isInterface() && ClassUtils.isAssignable(cls, cls2)) {
                    f2 += 0.25f;
                    break;
                }
                f2 += 1.0f;
                cls = cls.getSuperclass();
            } else {
                break;
            }
        }
        if (cls == null) {
            return f2 + 1.5f;
        }
        return f2;
    }

    private static float getPrimitivePromotionCost(Class<?> cls, Class<?> cls2) {
        float f2 = 0.0f;
        if (!cls.isPrimitive()) {
            f2 = 0.0f + 0.1f;
            cls = ClassUtils.wrapperToPrimitive(cls);
        }
        float f3 = f2;
        Class<?> cls3 = cls;
        for (int i = 0; cls3 != cls2 && i < ORDERED_PRIMITIVE_TYPES.length; i++) {
            if (cls3 == ORDERED_PRIMITIVE_TYPES[i]) {
                f3 += 0.1f;
                if (i < ORDERED_PRIMITIVE_TYPES.length - 1) {
                    cls3 = ORDERED_PRIMITIVE_TYPES[i + 1];
                }
            }
        }
        return f3;
    }
}
