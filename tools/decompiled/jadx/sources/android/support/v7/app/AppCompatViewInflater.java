package android.support.v7.app;

import android.R;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import android.support.v4.view.ViewCompat;
import android.support.v7.view.ContextThemeWrapper;
import android.support.v7.widget.AppCompatAutoCompleteTextView;
import android.support.v7.widget.AppCompatButton;
import android.support.v7.widget.AppCompatCheckBox;
import android.support.v7.widget.AppCompatCheckedTextView;
import android.support.v7.widget.AppCompatEditText;
import android.support.v7.widget.AppCompatImageButton;
import android.support.v7.widget.AppCompatImageView;
import android.support.v7.widget.AppCompatMultiAutoCompleteTextView;
import android.support.v7.widget.AppCompatRadioButton;
import android.support.v7.widget.AppCompatRatingBar;
import android.support.v7.widget.AppCompatSeekBar;
import android.support.v7.widget.AppCompatSpinner;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.TintContextWrapper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.InflateException;
import android.view.View;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.google.common.base.Ascii;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class AppCompatViewInflater {
    private static final String LOG_TAG = "AppCompatViewInflater";
    private final Object[] mConstructorArgs = new Object[2];
    private static final Class<?>[] sConstructorSignature = {Context.class, AttributeSet.class};
    private static final int[] sOnClickAttrs = {R.attr.onClick};
    private static final String[] sClassPrefixList = {"android.widget.", "android.view.", "android.webkit."};
    private static final Map<String, Constructor<? extends View>> sConstructorMap = new ArrayMap();

    AppCompatViewInflater() {
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final View createView(View view, String str, @NonNull Context context, @NonNull AttributeSet attributeSet, boolean z, boolean z2, boolean z3, boolean z4) {
        Context context2 = (!z || view == null) ? context : view.getContext();
        if (z2 || z3) {
            context2 = themifyContext(context2, attributeSet, z2, z3);
        }
        if (z4) {
            context2 = TintContextWrapper.wrap(context2);
        }
        View appCompatSeekBar = null;
        byte b2 = -1;
        switch (str.hashCode()) {
            case -1946472170:
                if (str.equals("RatingBar")) {
                    b2 = Ascii.VT;
                }
                break;
            case -1455429095:
                if (str.equals("CheckedTextView")) {
                    b2 = 8;
                }
                break;
            case -1346021293:
                if (str.equals("MultiAutoCompleteTextView")) {
                    b2 = 10;
                }
                break;
            case -938935918:
                if (str.equals("TextView")) {
                    b2 = 0;
                }
                break;
            case -937446323:
                if (str.equals("ImageButton")) {
                    b2 = 5;
                }
                break;
            case -658531749:
                if (str.equals("SeekBar")) {
                    b2 = Ascii.FF;
                }
                break;
            case -339785223:
                if (str.equals("Spinner")) {
                    b2 = 4;
                }
                break;
            case 776382189:
                if (str.equals("RadioButton")) {
                    b2 = 7;
                }
                break;
            case 1125864064:
                if (str.equals("ImageView")) {
                    b2 = 1;
                }
                break;
            case 1413872058:
                if (str.equals("AutoCompleteTextView")) {
                    b2 = 9;
                }
                break;
            case 1601505219:
                if (str.equals("CheckBox")) {
                    b2 = 6;
                }
                break;
            case 1666676343:
                if (str.equals("EditText")) {
                    b2 = 3;
                }
                break;
            case 2001146706:
                if (str.equals("Button")) {
                    b2 = 2;
                }
                break;
        }
        switch (b2) {
            case 0:
                appCompatSeekBar = new AppCompatTextView(context2, attributeSet);
                break;
            case 1:
                appCompatSeekBar = new AppCompatImageView(context2, attributeSet);
                break;
            case 2:
                appCompatSeekBar = new AppCompatButton(context2, attributeSet);
                break;
            case 3:
                appCompatSeekBar = new AppCompatEditText(context2, attributeSet);
                break;
            case 4:
                appCompatSeekBar = new AppCompatSpinner(context2, attributeSet);
                break;
            case 5:
                appCompatSeekBar = new AppCompatImageButton(context2, attributeSet);
                break;
            case 6:
                appCompatSeekBar = new AppCompatCheckBox(context2, attributeSet);
                break;
            case 7:
                appCompatSeekBar = new AppCompatRadioButton(context2, attributeSet);
                break;
            case 8:
                appCompatSeekBar = new AppCompatCheckedTextView(context2, attributeSet);
                break;
            case 9:
                appCompatSeekBar = new AppCompatAutoCompleteTextView(context2, attributeSet);
                break;
            case 10:
                appCompatSeekBar = new AppCompatMultiAutoCompleteTextView(context2, attributeSet);
                break;
            case 11:
                appCompatSeekBar = new AppCompatRatingBar(context2, attributeSet);
                break;
            case 12:
                appCompatSeekBar = new AppCompatSeekBar(context2, attributeSet);
                break;
        }
        View viewCreateViewFromTag = (appCompatSeekBar != null || context == context2) ? appCompatSeekBar : createViewFromTag(context2, str, attributeSet);
        if (viewCreateViewFromTag != null) {
            checkOnClickListener(viewCreateViewFromTag, attributeSet);
        }
        return viewCreateViewFromTag;
    }

    private View createViewFromTag(Context context, String str, AttributeSet attributeSet) {
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, AdobePSDCompositeConstants.AdobePSDCompositeLayerFillClassKey);
        }
        try {
            this.mConstructorArgs[0] = context;
            this.mConstructorArgs[1] = attributeSet;
            if (-1 != str.indexOf(46)) {
                return createView(context, str, null);
            }
            for (int i = 0; i < sClassPrefixList.length; i++) {
                View viewCreateView = createView(context, str, sClassPrefixList[i]);
                if (viewCreateView != null) {
                    return viewCreateView;
                }
            }
            return null;
        } catch (Exception e2) {
            return null;
        } finally {
            this.mConstructorArgs[0] = null;
            this.mConstructorArgs[1] = null;
        }
    }

    private void checkOnClickListener(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if (context instanceof ContextWrapper) {
            if (Build.VERSION.SDK_INT < 15 || ViewCompat.hasOnClickListeners(view)) {
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, sOnClickAttrs);
                String string = typedArrayObtainStyledAttributes.getString(0);
                if (string != null) {
                    view.setOnClickListener(new DeclaredOnClickListener(view, string));
                }
                typedArrayObtainStyledAttributes.recycle();
            }
        }
    }

    private View createView(Context context, String str, String str2) throws InflateException, ClassNotFoundException {
        Constructor<? extends View> constructor = sConstructorMap.get(str);
        if (constructor == null) {
            try {
                constructor = context.getClassLoader().loadClass(str2 != null ? str2 + str : str).asSubclass(View.class).getConstructor(sConstructorSignature);
                sConstructorMap.put(str, constructor);
            } catch (Exception e2) {
                return null;
            }
        }
        constructor.setAccessible(true);
        return constructor.newInstance(this.mConstructorArgs);
    }

    private static Context themifyContext(Context context, AttributeSet attributeSet, boolean z, boolean z2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, android.support.v7.appcompat.R.styleable.View, 0, 0);
        int resourceId = z ? typedArrayObtainStyledAttributes.getResourceId(android.support.v7.appcompat.R.styleable.View_android_theme, 0) : 0;
        if (z2 && resourceId == 0 && (resourceId = typedArrayObtainStyledAttributes.getResourceId(android.support.v7.appcompat.R.styleable.View_theme, 0)) != 0) {
            Log.i(LOG_TAG, "app:theme is now deprecated. Please move to using android:theme instead.");
        }
        int i = resourceId;
        typedArrayObtainStyledAttributes.recycle();
        if (i != 0) {
            if (!(context instanceof ContextThemeWrapper) || ((ContextThemeWrapper) context).getThemeResId() != i) {
                return new ContextThemeWrapper(context, i);
            }
            return context;
        }
        return context;
    }

    class DeclaredOnClickListener implements View.OnClickListener {
        private final View mHostView;
        private final String mMethodName;
        private Context mResolvedContext;
        private Method mResolvedMethod;

        public DeclaredOnClickListener(@NonNull View view, @NonNull String str) {
            this.mHostView = view;
            this.mMethodName = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(@NonNull View view) {
            if (this.mResolvedMethod == null) {
                resolveMethod(this.mHostView.getContext(), this.mMethodName);
            }
            try {
                this.mResolvedMethod.invoke(this.mResolvedContext, view);
            } catch (IllegalAccessException e2) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e2);
            } catch (InvocationTargetException e3) {
                throw new IllegalStateException("Could not execute method for android:onClick", e3);
            }
        }

        @NonNull
        private void resolveMethod(@Nullable Context context, @NonNull String str) {
            Method method;
            Context baseContext = context;
            while (baseContext != null) {
                try {
                    if (!baseContext.isRestricted() && (method = baseContext.getClass().getMethod(this.mMethodName, View.class)) != null) {
                        this.mResolvedMethod = method;
                        this.mResolvedContext = baseContext;
                        return;
                    }
                } catch (NoSuchMethodException e2) {
                }
                if (baseContext instanceof ContextWrapper) {
                    baseContext = ((ContextWrapper) baseContext).getBaseContext();
                } else {
                    baseContext = null;
                }
            }
            int id = this.mHostView.getId();
            throw new IllegalStateException("Could not find method " + this.mMethodName + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.mHostView.getClass() + (id == -1 ? "" : " with id '" + this.mHostView.getContext().getResources().getResourceEntryName(id) + "'"));
        }
    }
}
