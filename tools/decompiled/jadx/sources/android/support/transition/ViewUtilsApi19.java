package android.support.transition;

import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(19)
class ViewUtilsApi19 extends ViewUtilsApi18 {
    private static final String TAG = "ViewUtilsApi19";
    private static Method sGetTransitionAlphaMethod;
    private static boolean sGetTransitionAlphaMethodFetched;
    private static Method sSetTransitionAlphaMethod;
    private static boolean sSetTransitionAlphaMethodFetched;

    ViewUtilsApi19() {
    }

    @Override // android.support.transition.ViewUtilsApi14, android.support.transition.ViewUtilsImpl
    public void setTransitionAlpha(@NonNull View view, float f2) {
        fetchSetTransitionAlphaMethod();
        if (sSetTransitionAlphaMethod != null) {
            try {
                sSetTransitionAlphaMethod.invoke(view, Float.valueOf(f2));
                return;
            } catch (IllegalAccessException e2) {
                return;
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3.getCause());
            }
        }
        view.setAlpha(f2);
    }

    @Override // android.support.transition.ViewUtilsApi14, android.support.transition.ViewUtilsImpl
    public float getTransitionAlpha(@NonNull View view) {
        fetchGetTransitionAlphaMethod();
        if (sGetTransitionAlphaMethod != null) {
            try {
                return ((Float) sGetTransitionAlphaMethod.invoke(view, new Object[0])).floatValue();
            } catch (IllegalAccessException e2) {
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3.getCause());
            }
        }
        return super.getTransitionAlpha(view);
    }

    @Override // android.support.transition.ViewUtilsApi14, android.support.transition.ViewUtilsImpl
    public void saveNonTransitionAlpha(@NonNull View view) {
    }

    @Override // android.support.transition.ViewUtilsApi14, android.support.transition.ViewUtilsImpl
    public void clearNonTransitionAlpha(@NonNull View view) {
    }

    private void fetchSetTransitionAlphaMethod() {
        if (!sSetTransitionAlphaMethodFetched) {
            try {
                sSetTransitionAlphaMethod = View.class.getDeclaredMethod("setTransitionAlpha", Float.TYPE);
                sSetTransitionAlphaMethod.setAccessible(true);
            } catch (NoSuchMethodException e2) {
                Log.i(TAG, "Failed to retrieve setTransitionAlpha method", e2);
            }
            sSetTransitionAlphaMethodFetched = true;
        }
    }

    private void fetchGetTransitionAlphaMethod() {
        if (!sGetTransitionAlphaMethodFetched) {
            try {
                sGetTransitionAlphaMethod = View.class.getDeclaredMethod("getTransitionAlpha", new Class[0]);
                sGetTransitionAlphaMethod.setAccessible(true);
            } catch (NoSuchMethodException e2) {
                Log.i(TAG, "Failed to retrieve getTransitionAlpha method", e2);
            }
            sGetTransitionAlphaMethodFetched = true;
        }
    }
}
