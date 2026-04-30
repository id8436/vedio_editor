package android.support.transition;

import android.animation.Animator;
import android.graphics.Matrix;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.widget.ImageView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(21)
class ImageViewUtilsApi21 implements ImageViewUtilsImpl {
    private static final String TAG = "ImageViewUtilsApi21";
    private static Method sAnimateTransformMethod;
    private static boolean sAnimateTransformMethodFetched;

    ImageViewUtilsApi21() {
    }

    @Override // android.support.transition.ImageViewUtilsImpl
    public void startAnimateTransform(ImageView imageView) {
    }

    @Override // android.support.transition.ImageViewUtilsImpl
    public void animateTransform(ImageView imageView, Matrix matrix) {
        fetchAnimateTransformMethod();
        if (sAnimateTransformMethod != null) {
            try {
                sAnimateTransformMethod.invoke(imageView, matrix);
            } catch (IllegalAccessException e2) {
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3.getCause());
            }
        }
    }

    @Override // android.support.transition.ImageViewUtilsImpl
    public void reserveEndAnimateTransform(ImageView imageView, Animator animator) {
    }

    private void fetchAnimateTransformMethod() {
        if (!sAnimateTransformMethodFetched) {
            try {
                sAnimateTransformMethod = ImageView.class.getDeclaredMethod("animateTransform", Matrix.class);
                sAnimateTransformMethod.setAccessible(true);
            } catch (NoSuchMethodException e2) {
                Log.i(TAG, "Failed to retrieve animateTransform method", e2);
            }
            sAnimateTransformMethodFetched = true;
        }
    }
}
