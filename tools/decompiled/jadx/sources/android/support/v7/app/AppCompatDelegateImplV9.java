package android.support.v7.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.v4.app.NavUtils;
import android.support.v4.view.LayoutInflaterCompat;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.PointerIconCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v4.widget.PopupWindowCompat;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.view.ActionMode;
import android.support.v7.view.ContextThemeWrapper;
import android.support.v7.view.StandaloneActionMode;
import android.support.v7.view.menu.ListMenuPresenter;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuView;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.AppCompatDrawableManager;
import android.support.v7.widget.ContentFrameLayout;
import android.support.v7.widget.DecorContentParent;
import android.support.v7.widget.FitWindowsViewGroup;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.VectorEnabledTintResources;
import android.support.v7.widget.ViewStubCompat;
import android.support.v7.widget.ViewUtils;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(14)
class AppCompatDelegateImplV9 extends AppCompatDelegateImplBase implements MenuBuilder.Callback, LayoutInflater.Factory2 {
    private static final boolean IS_PRE_LOLLIPOP;
    private ActionMenuPresenterCallback mActionMenuPresenterCallback;
    ActionMode mActionMode;
    PopupWindow mActionModePopup;
    ActionBarContextView mActionModeView;
    private AppCompatViewInflater mAppCompatViewInflater;
    private boolean mClosingActionMenu;
    private DecorContentParent mDecorContentParent;
    private boolean mEnableDefaultActionBarUp;
    ViewPropertyAnimatorCompat mFadeAnim;
    private boolean mFeatureIndeterminateProgress;
    private boolean mFeatureProgress;
    int mInvalidatePanelMenuFeatures;
    boolean mInvalidatePanelMenuPosted;
    private final Runnable mInvalidatePanelMenuRunnable;
    private boolean mLongPressBackDown;
    private PanelMenuPresenterCallback mPanelMenuPresenterCallback;
    private PanelFeatureState[] mPanels;
    private PanelFeatureState mPreparedPanel;
    Runnable mShowActionModePopup;
    private View mStatusGuard;
    private ViewGroup mSubDecor;
    private boolean mSubDecorInstalled;
    private Rect mTempRect1;
    private Rect mTempRect2;
    private TextView mTitleView;

    static {
        IS_PRE_LOLLIPOP = Build.VERSION.SDK_INT < 21;
    }

    AppCompatDelegateImplV9(Context context, Window window, AppCompatCallback appCompatCallback) {
        super(context, window, appCompatCallback);
        this.mFadeAnim = null;
        this.mInvalidatePanelMenuRunnable = new Runnable() { // from class: android.support.v7.app.AppCompatDelegateImplV9.1
            @Override // java.lang.Runnable
            public void run() {
                if ((AppCompatDelegateImplV9.this.mInvalidatePanelMenuFeatures & 1) != 0) {
                    AppCompatDelegateImplV9.this.doInvalidatePanelMenu(0);
                }
                if ((AppCompatDelegateImplV9.this.mInvalidatePanelMenuFeatures & 4096) != 0) {
                    AppCompatDelegateImplV9.this.doInvalidatePanelMenu(108);
                }
                AppCompatDelegateImplV9.this.mInvalidatePanelMenuPosted = false;
                AppCompatDelegateImplV9.this.mInvalidatePanelMenuFeatures = 0;
            }
        };
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void onCreate(Bundle bundle) {
        if ((this.mOriginalWindowCallback instanceof Activity) && NavUtils.getParentActivityName((Activity) this.mOriginalWindowCallback) != null) {
            ActionBar actionBarPeekSupportActionBar = peekSupportActionBar();
            if (actionBarPeekSupportActionBar == null) {
                this.mEnableDefaultActionBarUp = true;
            } else {
                actionBarPeekSupportActionBar.setDefaultDisplayHomeAsUpEnabled(true);
            }
        }
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void onPostCreate(Bundle bundle) {
        ensureSubDecor();
    }

    @Override // android.support.v7.app.AppCompatDelegateImplBase
    public void initWindowDecorActionBar() {
        ensureSubDecor();
        if (this.mHasActionBar && this.mActionBar == null) {
            if (this.mOriginalWindowCallback instanceof Activity) {
                this.mActionBar = new WindowDecorActionBar((Activity) this.mOriginalWindowCallback, this.mOverlayActionBar);
            } else if (this.mOriginalWindowCallback instanceof Dialog) {
                this.mActionBar = new WindowDecorActionBar((Dialog) this.mOriginalWindowCallback);
            }
            if (this.mActionBar != null) {
                this.mActionBar.setDefaultDisplayHomeAsUpEnabled(this.mEnableDefaultActionBarUp);
            }
        }
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void setSupportActionBar(Toolbar toolbar) {
        if (this.mOriginalWindowCallback instanceof Activity) {
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar instanceof WindowDecorActionBar) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.mMenuInflater = null;
            if (supportActionBar != null) {
                supportActionBar.onDestroy();
            }
            if (toolbar != null) {
                ToolbarActionBar toolbarActionBar = new ToolbarActionBar(toolbar, ((Activity) this.mOriginalWindowCallback).getTitle(), this.mAppCompatWindowCallback);
                this.mActionBar = toolbarActionBar;
                this.mWindow.setCallback(toolbarActionBar.getWrappedWindowCallback());
            } else {
                this.mActionBar = null;
                this.mWindow.setCallback(this.mAppCompatWindowCallback);
            }
            invalidateOptionsMenu();
        }
    }

    @Override // android.support.v7.app.AppCompatDelegate
    @Nullable
    public <T extends View> T findViewById(@IdRes int i) {
        ensureSubDecor();
        return (T) this.mWindow.findViewById(i);
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void onConfigurationChanged(Configuration configuration) {
        ActionBar supportActionBar;
        if (this.mHasActionBar && this.mSubDecorInstalled && (supportActionBar = getSupportActionBar()) != null) {
            supportActionBar.onConfigurationChanged(configuration);
        }
        AppCompatDrawableManager.get().onConfigurationChanged(this.mContext);
        applyDayNight();
    }

    @Override // android.support.v7.app.AppCompatDelegateImplBase, android.support.v7.app.AppCompatDelegate
    public void onStop() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setShowHideAnimationEnabled(false);
        }
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void onPostResume() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setShowHideAnimationEnabled(true);
        }
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void setContentView(View view) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.mOriginalWindowCallback.onContentChanged();
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void setContentView(int i) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.mContext).inflate(i, viewGroup);
        this.mOriginalWindowCallback.onContentChanged();
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.mOriginalWindowCallback.onContentChanged();
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        ensureSubDecor();
        ((ViewGroup) this.mSubDecor.findViewById(R.id.content)).addView(view, layoutParams);
        this.mOriginalWindowCallback.onContentChanged();
    }

    @Override // android.support.v7.app.AppCompatDelegateImplBase, android.support.v7.app.AppCompatDelegate
    public void onDestroy() {
        if (this.mInvalidatePanelMenuPosted) {
            this.mWindow.getDecorView().removeCallbacks(this.mInvalidatePanelMenuRunnable);
        }
        super.onDestroy();
        if (this.mActionBar != null) {
            this.mActionBar.onDestroy();
        }
    }

    private void ensureSubDecor() {
        if (!this.mSubDecorInstalled) {
            this.mSubDecor = createSubDecor();
            CharSequence title = getTitle();
            if (!TextUtils.isEmpty(title)) {
                onTitleChanged(title);
            }
            applyFixedSizeWindow();
            onSubDecorInstalled(this.mSubDecor);
            this.mSubDecorInstalled = true;
            PanelFeatureState panelState = getPanelState(0, false);
            if (isDestroyed()) {
                return;
            }
            if (panelState == null || panelState.menu == null) {
                invalidatePanelMenu(108);
            }
        }
    }

    private ViewGroup createSubDecor() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        Context contextThemeWrapper;
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(android.support.v7.appcompat.R.styleable.AppCompatTheme);
        if (!typedArrayObtainStyledAttributes.hasValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowActionBar)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowNoTitle, false)) {
            requestWindowFeature(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowActionBar, false)) {
            requestWindowFeature(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowActionBarOverlay, false)) {
            requestWindowFeature(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowActionModeOverlay, false)) {
            requestWindowFeature(10);
        }
        this.mIsFloating = typedArrayObtainStyledAttributes.getBoolean(android.support.v7.appcompat.R.styleable.AppCompatTheme_android_windowIsFloating, false);
        typedArrayObtainStyledAttributes.recycle();
        this.mWindow.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.mContext);
        if (!this.mWindowNoTitle) {
            if (this.mIsFloating) {
                ViewGroup viewGroup3 = (ViewGroup) layoutInflaterFrom.inflate(android.support.v7.appcompat.R.layout.abc_dialog_title_material, (ViewGroup) null);
                this.mOverlayActionBar = false;
                this.mHasActionBar = false;
                viewGroup2 = viewGroup3;
            } else if (this.mHasActionBar) {
                TypedValue typedValue = new TypedValue();
                this.mContext.getTheme().resolveAttribute(android.support.v7.appcompat.R.attr.actionBarTheme, typedValue, true);
                if (typedValue.resourceId != 0) {
                    contextThemeWrapper = new ContextThemeWrapper(this.mContext, typedValue.resourceId);
                } else {
                    contextThemeWrapper = this.mContext;
                }
                ViewGroup viewGroup4 = (ViewGroup) LayoutInflater.from(contextThemeWrapper).inflate(android.support.v7.appcompat.R.layout.abc_screen_toolbar, (ViewGroup) null);
                this.mDecorContentParent = (DecorContentParent) viewGroup4.findViewById(android.support.v7.appcompat.R.id.decor_content_parent);
                this.mDecorContentParent.setWindowCallback(getWindowCallback());
                if (this.mOverlayActionBar) {
                    this.mDecorContentParent.initFeature(109);
                }
                if (this.mFeatureProgress) {
                    this.mDecorContentParent.initFeature(2);
                }
                if (this.mFeatureIndeterminateProgress) {
                    this.mDecorContentParent.initFeature(5);
                }
                viewGroup2 = viewGroup4;
            } else {
                viewGroup2 = null;
            }
        } else {
            if (this.mOverlayActionMode) {
                viewGroup = (ViewGroup) layoutInflaterFrom.inflate(android.support.v7.appcompat.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null);
            } else {
                viewGroup = (ViewGroup) layoutInflaterFrom.inflate(android.support.v7.appcompat.R.layout.abc_screen_simple, (ViewGroup) null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                ViewCompat.setOnApplyWindowInsetsListener(viewGroup, new OnApplyWindowInsetsListener() { // from class: android.support.v7.app.AppCompatDelegateImplV9.2
                    @Override // android.support.v4.view.OnApplyWindowInsetsListener
                    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
                        int iUpdateStatusGuard = AppCompatDelegateImplV9.this.updateStatusGuard(systemWindowInsetTop);
                        if (systemWindowInsetTop != iUpdateStatusGuard) {
                            windowInsetsCompat = windowInsetsCompat.replaceSystemWindowInsets(windowInsetsCompat.getSystemWindowInsetLeft(), iUpdateStatusGuard, windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
                        }
                        return ViewCompat.onApplyWindowInsets(view, windowInsetsCompat);
                    }
                });
                viewGroup2 = viewGroup;
            } else {
                ((FitWindowsViewGroup) viewGroup).setOnFitSystemWindowsListener(new FitWindowsViewGroup.OnFitSystemWindowsListener() { // from class: android.support.v7.app.AppCompatDelegateImplV9.3
                    @Override // android.support.v7.widget.FitWindowsViewGroup.OnFitSystemWindowsListener
                    public void onFitSystemWindows(Rect rect) {
                        rect.top = AppCompatDelegateImplV9.this.updateStatusGuard(rect.top);
                    }
                });
                viewGroup2 = viewGroup;
            }
        }
        if (viewGroup2 == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.mHasActionBar + ", windowActionBarOverlay: " + this.mOverlayActionBar + ", android:windowIsFloating: " + this.mIsFloating + ", windowActionModeOverlay: " + this.mOverlayActionMode + ", windowNoTitle: " + this.mWindowNoTitle + " }");
        }
        if (this.mDecorContentParent == null) {
            this.mTitleView = (TextView) viewGroup2.findViewById(android.support.v7.appcompat.R.id.title);
        }
        ViewUtils.makeOptionalFitsSystemWindows(viewGroup2);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup2.findViewById(android.support.v7.appcompat.R.id.action_bar_activity_content);
        ViewGroup viewGroup5 = (ViewGroup) this.mWindow.findViewById(R.id.content);
        if (viewGroup5 != null) {
            while (viewGroup5.getChildCount() > 0) {
                View childAt = viewGroup5.getChildAt(0);
                viewGroup5.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup5.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup5 instanceof FrameLayout) {
                ((FrameLayout) viewGroup5).setForeground(null);
            }
        }
        this.mWindow.setContentView(viewGroup2);
        contentFrameLayout.setAttachListener(new ContentFrameLayout.OnAttachListener() { // from class: android.support.v7.app.AppCompatDelegateImplV9.4
            @Override // android.support.v7.widget.ContentFrameLayout.OnAttachListener
            public void onAttachedFromWindow() {
            }

            @Override // android.support.v7.widget.ContentFrameLayout.OnAttachListener
            public void onDetachedFromWindow() {
                AppCompatDelegateImplV9.this.dismissPopups();
            }
        });
        return viewGroup2;
    }

    void onSubDecorInstalled(ViewGroup viewGroup) {
    }

    private void applyFixedSizeWindow() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.mSubDecor.findViewById(R.id.content);
        View decorView = this.mWindow.getDecorView();
        contentFrameLayout.setDecorPadding(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(android.support.v7.appcompat.R.styleable.AppCompatTheme);
        typedArrayObtainStyledAttributes.getValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        typedArrayObtainStyledAttributes.getValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes.hasValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMajor)) {
            typedArrayObtainStyledAttributes.getValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMinor)) {
            typedArrayObtainStyledAttributes.getValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMajor)) {
            typedArrayObtainStyledAttributes.getValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMinor)) {
            typedArrayObtainStyledAttributes.getValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public boolean requestWindowFeature(int i) {
        int iSanitizeWindowFeatureId = sanitizeWindowFeatureId(i);
        if (this.mWindowNoTitle && iSanitizeWindowFeatureId == 108) {
            return false;
        }
        if (this.mHasActionBar && iSanitizeWindowFeatureId == 1) {
            this.mHasActionBar = false;
        }
        switch (iSanitizeWindowFeatureId) {
            case 1:
                throwFeatureRequestIfSubDecorInstalled();
                this.mWindowNoTitle = true;
                return true;
            case 2:
                throwFeatureRequestIfSubDecorInstalled();
                this.mFeatureProgress = true;
                return true;
            case 5:
                throwFeatureRequestIfSubDecorInstalled();
                this.mFeatureIndeterminateProgress = true;
                return true;
            case 10:
                throwFeatureRequestIfSubDecorInstalled();
                this.mOverlayActionMode = true;
                return true;
            case 108:
                throwFeatureRequestIfSubDecorInstalled();
                this.mHasActionBar = true;
                return true;
            case 109:
                throwFeatureRequestIfSubDecorInstalled();
                this.mOverlayActionBar = true;
                return true;
            default:
                return this.mWindow.requestFeature(iSanitizeWindowFeatureId);
        }
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public boolean hasWindowFeature(int i) {
        switch (sanitizeWindowFeatureId(i)) {
            case 1:
                return this.mWindowNoTitle;
            case 2:
                return this.mFeatureProgress;
            case 5:
                return this.mFeatureIndeterminateProgress;
            case 10:
                return this.mOverlayActionMode;
            case 108:
                return this.mHasActionBar;
            case 109:
                return this.mOverlayActionBar;
            default:
                return false;
        }
    }

    @Override // android.support.v7.app.AppCompatDelegateImplBase
    void onTitleChanged(CharSequence charSequence) {
        if (this.mDecorContentParent != null) {
            this.mDecorContentParent.setWindowTitle(charSequence);
        } else if (peekSupportActionBar() != null) {
            peekSupportActionBar().setWindowTitle(charSequence);
        } else if (this.mTitleView != null) {
            this.mTitleView.setText(charSequence);
        }
    }

    @Override // android.support.v7.app.AppCompatDelegateImplBase
    void onPanelClosed(int i, Menu menu) {
        if (i == 108) {
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.dispatchMenuVisibilityChanged(false);
                return;
            }
            return;
        }
        if (i == 0) {
            PanelFeatureState panelState = getPanelState(i, true);
            if (panelState.isOpen) {
                closePanel(panelState, false);
            }
        }
    }

    @Override // android.support.v7.app.AppCompatDelegateImplBase
    boolean onMenuOpened(int i, Menu menu) {
        if (i != 108) {
            return false;
        }
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar == null) {
            return true;
        }
        supportActionBar.dispatchMenuVisibilityChanged(true);
        return true;
    }

    @Override // android.support.v7.view.menu.MenuBuilder.Callback
    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        PanelFeatureState panelFeatureStateFindMenuPanel;
        Window.Callback windowCallback = getWindowCallback();
        if (windowCallback == null || isDestroyed() || (panelFeatureStateFindMenuPanel = findMenuPanel(menuBuilder.getRootMenu())) == null) {
            return false;
        }
        return windowCallback.onMenuItemSelected(panelFeatureStateFindMenuPanel.featureId, menuItem);
    }

    @Override // android.support.v7.view.menu.MenuBuilder.Callback
    public void onMenuModeChange(MenuBuilder menuBuilder) {
        reopenMenu(menuBuilder, true);
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public ActionMode startSupportActionMode(@NonNull ActionMode.Callback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        if (this.mActionMode != null) {
            this.mActionMode.finish();
        }
        ActionModeCallbackWrapperV9 actionModeCallbackWrapperV9 = new ActionModeCallbackWrapperV9(callback);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            this.mActionMode = supportActionBar.startActionMode(actionModeCallbackWrapperV9);
            if (this.mActionMode != null && this.mAppCompatCallback != null) {
                this.mAppCompatCallback.onSupportActionModeStarted(this.mActionMode);
            }
        }
        if (this.mActionMode == null) {
            this.mActionMode = startSupportActionModeFromWindow(actionModeCallbackWrapperV9);
        }
        return this.mActionMode;
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void invalidateOptionsMenu() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar == null || !supportActionBar.invalidateOptionsMenu()) {
            invalidatePanelMenu(0);
        }
    }

    @Override // android.support.v7.app.AppCompatDelegateImplBase
    ActionMode startSupportActionModeFromWindow(@NonNull ActionMode.Callback callback) {
        ActionMode actionModeOnWindowStartingSupportActionMode;
        Context contextThemeWrapper;
        endOnGoingFadeAnimation();
        if (this.mActionMode != null) {
            this.mActionMode.finish();
        }
        if (!(callback instanceof ActionModeCallbackWrapperV9)) {
            callback = new ActionModeCallbackWrapperV9(callback);
        }
        if (this.mAppCompatCallback == null || isDestroyed()) {
            actionModeOnWindowStartingSupportActionMode = null;
        } else {
            try {
                actionModeOnWindowStartingSupportActionMode = this.mAppCompatCallback.onWindowStartingSupportActionMode(callback);
            } catch (AbstractMethodError e2) {
                actionModeOnWindowStartingSupportActionMode = null;
            }
        }
        if (actionModeOnWindowStartingSupportActionMode != null) {
            this.mActionMode = actionModeOnWindowStartingSupportActionMode;
        } else {
            if (this.mActionModeView == null) {
                if (this.mIsFloating) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = this.mContext.getTheme();
                    theme.resolveAttribute(android.support.v7.appcompat.R.attr.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme themeNewTheme = this.mContext.getResources().newTheme();
                        themeNewTheme.setTo(theme);
                        themeNewTheme.applyStyle(typedValue.resourceId, true);
                        contextThemeWrapper = new ContextThemeWrapper(this.mContext, 0);
                        contextThemeWrapper.getTheme().setTo(themeNewTheme);
                    } else {
                        contextThemeWrapper = this.mContext;
                    }
                    this.mActionModeView = new ActionBarContextView(contextThemeWrapper);
                    this.mActionModePopup = new PopupWindow(contextThemeWrapper, (AttributeSet) null, android.support.v7.appcompat.R.attr.actionModePopupWindowStyle);
                    PopupWindowCompat.setWindowLayoutType(this.mActionModePopup, 2);
                    this.mActionModePopup.setContentView(this.mActionModeView);
                    this.mActionModePopup.setWidth(-1);
                    contextThemeWrapper.getTheme().resolveAttribute(android.support.v7.appcompat.R.attr.actionBarSize, typedValue, true);
                    this.mActionModeView.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, contextThemeWrapper.getResources().getDisplayMetrics()));
                    this.mActionModePopup.setHeight(-2);
                    this.mShowActionModePopup = new Runnable() { // from class: android.support.v7.app.AppCompatDelegateImplV9.5
                        @Override // java.lang.Runnable
                        public void run() {
                            AppCompatDelegateImplV9.this.mActionModePopup.showAtLocation(AppCompatDelegateImplV9.this.mActionModeView, 55, 0, 0);
                            AppCompatDelegateImplV9.this.endOnGoingFadeAnimation();
                            if (AppCompatDelegateImplV9.this.shouldAnimateActionModeView()) {
                                AppCompatDelegateImplV9.this.mActionModeView.setAlpha(0.0f);
                                AppCompatDelegateImplV9.this.mFadeAnim = ViewCompat.animate(AppCompatDelegateImplV9.this.mActionModeView).alpha(1.0f);
                                AppCompatDelegateImplV9.this.mFadeAnim.setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: android.support.v7.app.AppCompatDelegateImplV9.5.1
                                    @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                                    public void onAnimationStart(View view) {
                                        AppCompatDelegateImplV9.this.mActionModeView.setVisibility(0);
                                    }

                                    @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                                    public void onAnimationEnd(View view) {
                                        AppCompatDelegateImplV9.this.mActionModeView.setAlpha(1.0f);
                                        AppCompatDelegateImplV9.this.mFadeAnim.setListener(null);
                                        AppCompatDelegateImplV9.this.mFadeAnim = null;
                                    }
                                });
                                return;
                            }
                            AppCompatDelegateImplV9.this.mActionModeView.setAlpha(1.0f);
                            AppCompatDelegateImplV9.this.mActionModeView.setVisibility(0);
                        }
                    };
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) this.mSubDecor.findViewById(android.support.v7.appcompat.R.id.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(getActionBarThemedContext()));
                        this.mActionModeView = (ActionBarContextView) viewStubCompat.inflate();
                    }
                }
            }
            if (this.mActionModeView != null) {
                endOnGoingFadeAnimation();
                this.mActionModeView.killMode();
                StandaloneActionMode standaloneActionMode = new StandaloneActionMode(this.mActionModeView.getContext(), this.mActionModeView, callback, this.mActionModePopup == null);
                if (callback.onCreateActionMode(standaloneActionMode, standaloneActionMode.getMenu())) {
                    standaloneActionMode.invalidate();
                    this.mActionModeView.initForMode(standaloneActionMode);
                    this.mActionMode = standaloneActionMode;
                    if (shouldAnimateActionModeView()) {
                        this.mActionModeView.setAlpha(0.0f);
                        this.mFadeAnim = ViewCompat.animate(this.mActionModeView).alpha(1.0f);
                        this.mFadeAnim.setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: android.support.v7.app.AppCompatDelegateImplV9.6
                            @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                            public void onAnimationStart(View view) {
                                AppCompatDelegateImplV9.this.mActionModeView.setVisibility(0);
                                AppCompatDelegateImplV9.this.mActionModeView.sendAccessibilityEvent(32);
                                if (AppCompatDelegateImplV9.this.mActionModeView.getParent() instanceof View) {
                                    ViewCompat.requestApplyInsets((View) AppCompatDelegateImplV9.this.mActionModeView.getParent());
                                }
                            }

                            @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                            public void onAnimationEnd(View view) {
                                AppCompatDelegateImplV9.this.mActionModeView.setAlpha(1.0f);
                                AppCompatDelegateImplV9.this.mFadeAnim.setListener(null);
                                AppCompatDelegateImplV9.this.mFadeAnim = null;
                            }
                        });
                    } else {
                        this.mActionModeView.setAlpha(1.0f);
                        this.mActionModeView.setVisibility(0);
                        this.mActionModeView.sendAccessibilityEvent(32);
                        if (this.mActionModeView.getParent() instanceof View) {
                            ViewCompat.requestApplyInsets((View) this.mActionModeView.getParent());
                        }
                    }
                    if (this.mActionModePopup != null) {
                        this.mWindow.getDecorView().post(this.mShowActionModePopup);
                    }
                } else {
                    this.mActionMode = null;
                }
            }
        }
        if (this.mActionMode != null && this.mAppCompatCallback != null) {
            this.mAppCompatCallback.onSupportActionModeStarted(this.mActionMode);
        }
        return this.mActionMode;
    }

    final boolean shouldAnimateActionModeView() {
        return this.mSubDecorInstalled && this.mSubDecor != null && ViewCompat.isLaidOut(this.mSubDecor);
    }

    void endOnGoingFadeAnimation() {
        if (this.mFadeAnim != null) {
            this.mFadeAnim.cancel();
        }
    }

    boolean onBackPressed() {
        if (this.mActionMode != null) {
            this.mActionMode.finish();
            return true;
        }
        ActionBar supportActionBar = getSupportActionBar();
        return supportActionBar != null && supportActionBar.collapseActionView();
    }

    @Override // android.support.v7.app.AppCompatDelegateImplBase
    boolean onKeyShortcut(int i, KeyEvent keyEvent) {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null && supportActionBar.onKeyShortcut(i, keyEvent)) {
            return true;
        }
        if (this.mPreparedPanel != null && performPanelShortcut(this.mPreparedPanel, keyEvent.getKeyCode(), keyEvent, 1)) {
            if (this.mPreparedPanel == null) {
                return true;
            }
            this.mPreparedPanel.isHandled = true;
            return true;
        }
        if (this.mPreparedPanel == null) {
            PanelFeatureState panelState = getPanelState(0, true);
            preparePanel(panelState, keyEvent);
            boolean zPerformPanelShortcut = performPanelShortcut(panelState, keyEvent.getKeyCode(), keyEvent, 1);
            panelState.isPrepared = false;
            if (zPerformPanelShortcut) {
                return true;
            }
        }
        return false;
    }

    @Override // android.support.v7.app.AppCompatDelegateImplBase
    boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 82 && this.mOriginalWindowCallback.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? onKeyDown(keyCode, keyEvent) : onKeyUp(keyCode, keyEvent);
    }

    boolean onKeyUp(int i, KeyEvent keyEvent) {
        switch (i) {
            case 4:
                boolean z = this.mLongPressBackDown;
                this.mLongPressBackDown = false;
                PanelFeatureState panelState = getPanelState(0, false);
                if (panelState != null && panelState.isOpen) {
                    if (z) {
                        return true;
                    }
                    closePanel(panelState, true);
                    return true;
                }
                if (onBackPressed()) {
                    return true;
                }
                break;
            case 82:
                onKeyUpPanel(0, keyEvent);
                return true;
        }
        return false;
    }

    boolean onKeyDown(int i, KeyEvent keyEvent) {
        switch (i) {
            case 4:
                this.mLongPressBackDown = (keyEvent.getFlags() & 128) != 0;
                break;
            case 82:
                onKeyDownPanel(0, keyEvent);
                return true;
        }
        if (Build.VERSION.SDK_INT < 11) {
            onKeyShortcut(i, keyEvent);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v7.app.AppCompatDelegate
    public View createView(View view, String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        boolean z;
        boolean zShouldInheritContext;
        if (this.mAppCompatViewInflater == null) {
            this.mAppCompatViewInflater = new AppCompatViewInflater();
        }
        if (IS_PRE_LOLLIPOP) {
            if (attributeSet instanceof XmlPullParser) {
                zShouldInheritContext = ((XmlPullParser) attributeSet).getDepth() > 1;
            } else {
                zShouldInheritContext = shouldInheritContext((ViewParent) view);
            }
            z = zShouldInheritContext;
        } else {
            z = false;
        }
        return this.mAppCompatViewInflater.createView(view, str, context, attributeSet, z, IS_PRE_LOLLIPOP, true, VectorEnabledTintResources.shouldBeUsed());
    }

    private boolean shouldInheritContext(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.mWindow.getDecorView();
        for (ViewParent parent = viewParent; parent != null; parent = parent.getParent()) {
            if (parent == decorView || !(parent instanceof View) || ViewCompat.isAttachedToWindow((View) parent)) {
                return false;
            }
        }
        return true;
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void installViewFactory() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.mContext);
        if (layoutInflaterFrom.getFactory() == null) {
            LayoutInflaterCompat.setFactory2(layoutInflaterFrom, this);
        } else if (!(layoutInflaterFrom.getFactory2() instanceof AppCompatDelegateImplV9)) {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View viewCallActivityOnCreateView = callActivityOnCreateView(view, str, context, attributeSet);
        return viewCallActivityOnCreateView != null ? viewCallActivityOnCreateView : createView(view, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    View callActivityOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View viewOnCreateView;
        if (!(this.mOriginalWindowCallback instanceof LayoutInflater.Factory) || (viewOnCreateView = ((LayoutInflater.Factory) this.mOriginalWindowCallback).onCreateView(str, context, attributeSet)) == null) {
            return null;
        }
        return viewOnCreateView;
    }

    private void openPanel(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        ViewGroup.LayoutParams layoutParams;
        int i = -1;
        if (!panelFeatureState.isOpen && !isDestroyed()) {
            if (panelFeatureState.featureId == 0) {
                Context context = this.mContext;
                boolean z = (context.getResources().getConfiguration().screenLayout & 15) == 4;
                boolean z2 = context.getApplicationInfo().targetSdkVersion >= 11;
                if (z && z2) {
                    return;
                }
            }
            Window.Callback windowCallback = getWindowCallback();
            if (windowCallback != null && !windowCallback.onMenuOpened(panelFeatureState.featureId, panelFeatureState.menu)) {
                closePanel(panelFeatureState, true);
                return;
            }
            WindowManager windowManager = (WindowManager) this.mContext.getSystemService("window");
            if (windowManager != null && preparePanel(panelFeatureState, keyEvent)) {
                if (panelFeatureState.decorView == null || panelFeatureState.refreshDecorView) {
                    if (panelFeatureState.decorView == null) {
                        if (!initializePanelDecor(panelFeatureState) || panelFeatureState.decorView == null) {
                            return;
                        }
                    } else if (panelFeatureState.refreshDecorView && panelFeatureState.decorView.getChildCount() > 0) {
                        panelFeatureState.decorView.removeAllViews();
                    }
                    if (initializePanelContent(panelFeatureState) && panelFeatureState.hasPanelItems()) {
                        ViewGroup.LayoutParams layoutParams2 = panelFeatureState.shownPanelView.getLayoutParams();
                        ViewGroup.LayoutParams layoutParams3 = layoutParams2 == null ? new ViewGroup.LayoutParams(-2, -2) : layoutParams2;
                        panelFeatureState.decorView.setBackgroundResource(panelFeatureState.background);
                        ViewParent parent = panelFeatureState.shownPanelView.getParent();
                        if (parent != null && (parent instanceof ViewGroup)) {
                            ((ViewGroup) parent).removeView(panelFeatureState.shownPanelView);
                        }
                        panelFeatureState.decorView.addView(panelFeatureState.shownPanelView, layoutParams3);
                        if (!panelFeatureState.shownPanelView.hasFocus()) {
                            panelFeatureState.shownPanelView.requestFocus();
                        }
                        i = -2;
                    } else {
                        return;
                    }
                } else if (panelFeatureState.createdPanelView == null || (layoutParams = panelFeatureState.createdPanelView.getLayoutParams()) == null || layoutParams.width != -1) {
                    i = -2;
                }
                panelFeatureState.isHandled = false;
                WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(i, -2, panelFeatureState.x, panelFeatureState.y, PointerIconCompat.TYPE_HAND, 8519680, -3);
                layoutParams4.gravity = panelFeatureState.gravity;
                layoutParams4.windowAnimations = panelFeatureState.windowAnimations;
                windowManager.addView(panelFeatureState.decorView, layoutParams4);
                panelFeatureState.isOpen = true;
            }
        }
    }

    private boolean initializePanelDecor(PanelFeatureState panelFeatureState) {
        panelFeatureState.setStyle(getActionBarThemedContext());
        panelFeatureState.decorView = new ListMenuDecorView(panelFeatureState.listPresenterContext);
        panelFeatureState.gravity = 81;
        return true;
    }

    private void reopenMenu(MenuBuilder menuBuilder, boolean z) {
        if (this.mDecorContentParent != null && this.mDecorContentParent.canShowOverflowMenu() && (!ViewConfiguration.get(this.mContext).hasPermanentMenuKey() || this.mDecorContentParent.isOverflowMenuShowPending())) {
            Window.Callback windowCallback = getWindowCallback();
            if (!this.mDecorContentParent.isOverflowMenuShowing() || !z) {
                if (windowCallback != null && !isDestroyed()) {
                    if (this.mInvalidatePanelMenuPosted && (this.mInvalidatePanelMenuFeatures & 1) != 0) {
                        this.mWindow.getDecorView().removeCallbacks(this.mInvalidatePanelMenuRunnable);
                        this.mInvalidatePanelMenuRunnable.run();
                    }
                    PanelFeatureState panelState = getPanelState(0, true);
                    if (panelState.menu != null && !panelState.refreshMenuContent && windowCallback.onPreparePanel(0, panelState.createdPanelView, panelState.menu)) {
                        windowCallback.onMenuOpened(108, panelState.menu);
                        this.mDecorContentParent.showOverflowMenu();
                        return;
                    }
                    return;
                }
                return;
            }
            this.mDecorContentParent.hideOverflowMenu();
            if (!isDestroyed()) {
                windowCallback.onPanelClosed(108, getPanelState(0, true).menu);
                return;
            }
            return;
        }
        PanelFeatureState panelState2 = getPanelState(0, true);
        panelState2.refreshDecorView = true;
        closePanel(panelState2, false);
        openPanel(panelState2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean initializePanelMenu(android.support.v7.app.AppCompatDelegateImplV9.PanelFeatureState r7) {
        /*
            r6 = this;
            r5 = 1
            android.content.Context r1 = r6.mContext
            int r0 = r7.featureId
            if (r0 == 0) goto Ld
            int r0 = r7.featureId
            r2 = 108(0x6c, float:1.51E-43)
            if (r0 != r2) goto L71
        Ld:
            android.support.v7.widget.DecorContentParent r0 = r6.mDecorContentParent
            if (r0 == 0) goto L71
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            android.content.res.Resources$Theme r3 = r1.getTheme()
            int r0 = android.support.v7.appcompat.R.attr.actionBarTheme
            r3.resolveAttribute(r0, r2, r5)
            r0 = 0
            int r4 = r2.resourceId
            if (r4 == 0) goto L6b
            android.content.res.Resources r0 = r1.getResources()
            android.content.res.Resources$Theme r0 = r0.newTheme()
            r0.setTo(r3)
            int r4 = r2.resourceId
            r0.applyStyle(r4, r5)
            int r4 = android.support.v7.appcompat.R.attr.actionBarWidgetTheme
            r0.resolveAttribute(r4, r2, r5)
        L39:
            int r4 = r2.resourceId
            if (r4 == 0) goto L4f
            if (r0 != 0) goto L4a
            android.content.res.Resources r0 = r1.getResources()
            android.content.res.Resources$Theme r0 = r0.newTheme()
            r0.setTo(r3)
        L4a:
            int r2 = r2.resourceId
            r0.applyStyle(r2, r5)
        L4f:
            r2 = r0
            if (r2 == 0) goto L71
            android.support.v7.view.ContextThemeWrapper r0 = new android.support.v7.view.ContextThemeWrapper
            r3 = 0
            r0.<init>(r1, r3)
            android.content.res.Resources$Theme r1 = r0.getTheme()
            r1.setTo(r2)
        L5f:
            android.support.v7.view.menu.MenuBuilder r1 = new android.support.v7.view.menu.MenuBuilder
            r1.<init>(r0)
            r1.setCallback(r6)
            r7.setMenu(r1)
            return r5
        L6b:
            int r4 = android.support.v7.appcompat.R.attr.actionBarWidgetTheme
            r3.resolveAttribute(r4, r2, r5)
            goto L39
        L71:
            r0 = r1
            goto L5f
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.AppCompatDelegateImplV9.initializePanelMenu(android.support.v7.app.AppCompatDelegateImplV9$PanelFeatureState):boolean");
    }

    private boolean initializePanelContent(PanelFeatureState panelFeatureState) {
        if (panelFeatureState.createdPanelView != null) {
            panelFeatureState.shownPanelView = panelFeatureState.createdPanelView;
            return true;
        }
        if (panelFeatureState.menu == null) {
            return false;
        }
        if (this.mPanelMenuPresenterCallback == null) {
            this.mPanelMenuPresenterCallback = new PanelMenuPresenterCallback();
        }
        panelFeatureState.shownPanelView = (View) panelFeatureState.getListMenuView(this.mPanelMenuPresenterCallback);
        return panelFeatureState.shownPanelView != null;
    }

    private boolean preparePanel(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        if (isDestroyed()) {
            return false;
        }
        if (panelFeatureState.isPrepared) {
            return true;
        }
        if (this.mPreparedPanel != null && this.mPreparedPanel != panelFeatureState) {
            closePanel(this.mPreparedPanel, false);
        }
        Window.Callback windowCallback = getWindowCallback();
        if (windowCallback != null) {
            panelFeatureState.createdPanelView = windowCallback.onCreatePanelView(panelFeatureState.featureId);
        }
        boolean z = panelFeatureState.featureId == 0 || panelFeatureState.featureId == 108;
        if (z && this.mDecorContentParent != null) {
            this.mDecorContentParent.setMenuPrepared();
        }
        if (panelFeatureState.createdPanelView == null && (!z || !(peekSupportActionBar() instanceof ToolbarActionBar))) {
            if (panelFeatureState.menu == null || panelFeatureState.refreshMenuContent) {
                if (panelFeatureState.menu == null && (!initializePanelMenu(panelFeatureState) || panelFeatureState.menu == null)) {
                    return false;
                }
                if (z && this.mDecorContentParent != null) {
                    if (this.mActionMenuPresenterCallback == null) {
                        this.mActionMenuPresenterCallback = new ActionMenuPresenterCallback();
                    }
                    this.mDecorContentParent.setMenu(panelFeatureState.menu, this.mActionMenuPresenterCallback);
                }
                panelFeatureState.menu.stopDispatchingItemsChanged();
                if (!windowCallback.onCreatePanelMenu(panelFeatureState.featureId, panelFeatureState.menu)) {
                    panelFeatureState.setMenu(null);
                    if (!z || this.mDecorContentParent == null) {
                        return false;
                    }
                    this.mDecorContentParent.setMenu(null, this.mActionMenuPresenterCallback);
                    return false;
                }
                panelFeatureState.refreshMenuContent = false;
            }
            panelFeatureState.menu.stopDispatchingItemsChanged();
            if (panelFeatureState.frozenActionViewState != null) {
                panelFeatureState.menu.restoreActionViewStates(panelFeatureState.frozenActionViewState);
                panelFeatureState.frozenActionViewState = null;
            }
            if (!windowCallback.onPreparePanel(0, panelFeatureState.createdPanelView, panelFeatureState.menu)) {
                if (z && this.mDecorContentParent != null) {
                    this.mDecorContentParent.setMenu(null, this.mActionMenuPresenterCallback);
                }
                panelFeatureState.menu.startDispatchingItemsChanged();
                return false;
            }
            panelFeatureState.qwertyMode = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.menu.setQwertyMode(panelFeatureState.qwertyMode);
            panelFeatureState.menu.startDispatchingItemsChanged();
        }
        panelFeatureState.isPrepared = true;
        panelFeatureState.isHandled = false;
        this.mPreparedPanel = panelFeatureState;
        return true;
    }

    void checkCloseActionMenu(MenuBuilder menuBuilder) {
        if (!this.mClosingActionMenu) {
            this.mClosingActionMenu = true;
            this.mDecorContentParent.dismissPopups();
            Window.Callback windowCallback = getWindowCallback();
            if (windowCallback != null && !isDestroyed()) {
                windowCallback.onPanelClosed(108, menuBuilder);
            }
            this.mClosingActionMenu = false;
        }
    }

    void closePanel(int i) {
        closePanel(getPanelState(i, true), true);
    }

    void closePanel(PanelFeatureState panelFeatureState, boolean z) {
        if (z && panelFeatureState.featureId == 0 && this.mDecorContentParent != null && this.mDecorContentParent.isOverflowMenuShowing()) {
            checkCloseActionMenu(panelFeatureState.menu);
            return;
        }
        WindowManager windowManager = (WindowManager) this.mContext.getSystemService("window");
        if (windowManager != null && panelFeatureState.isOpen && panelFeatureState.decorView != null) {
            windowManager.removeView(panelFeatureState.decorView);
            if (z) {
                callOnPanelClosed(panelFeatureState.featureId, panelFeatureState, null);
            }
        }
        panelFeatureState.isPrepared = false;
        panelFeatureState.isHandled = false;
        panelFeatureState.isOpen = false;
        panelFeatureState.shownPanelView = null;
        panelFeatureState.refreshDecorView = true;
        if (this.mPreparedPanel == panelFeatureState) {
            this.mPreparedPanel = null;
        }
    }

    private boolean onKeyDownPanel(int i, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() == 0) {
            PanelFeatureState panelState = getPanelState(i, true);
            if (!panelState.isOpen) {
                return preparePanel(panelState, keyEvent);
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean onKeyUpPanel(int r5, android.view.KeyEvent r6) {
        /*
            r4 = this;
            r2 = 1
            r1 = 0
            android.support.v7.view.ActionMode r0 = r4.mActionMode
            if (r0 == 0) goto L8
            r0 = r1
        L7:
            return r0
        L8:
            android.support.v7.app.AppCompatDelegateImplV9$PanelFeatureState r3 = r4.getPanelState(r5, r2)
            if (r5 != 0) goto L5b
            android.support.v7.widget.DecorContentParent r0 = r4.mDecorContentParent
            if (r0 == 0) goto L5b
            android.support.v7.widget.DecorContentParent r0 = r4.mDecorContentParent
            boolean r0 = r0.canShowOverflowMenu()
            if (r0 == 0) goto L5b
            android.content.Context r0 = r4.mContext
            android.view.ViewConfiguration r0 = android.view.ViewConfiguration.get(r0)
            boolean r0 = r0.hasPermanentMenuKey()
            if (r0 != 0) goto L5b
            android.support.v7.widget.DecorContentParent r0 = r4.mDecorContentParent
            boolean r0 = r0.isOverflowMenuShowing()
            if (r0 != 0) goto L54
            boolean r0 = r4.isDestroyed()
            if (r0 != 0) goto L88
            boolean r0 = r4.preparePanel(r3, r6)
            if (r0 == 0) goto L88
            android.support.v7.widget.DecorContentParent r0 = r4.mDecorContentParent
            boolean r2 = r0.showOverflowMenu()
        L40:
            if (r2 == 0) goto L52
            android.content.Context r0 = r4.mContext
            java.lang.String r3 = "audio"
            java.lang.Object r0 = r0.getSystemService(r3)
            android.media.AudioManager r0 = (android.media.AudioManager) r0
            if (r0 == 0) goto L7e
            r0.playSoundEffect(r1)
        L52:
            r0 = r2
            goto L7
        L54:
            android.support.v7.widget.DecorContentParent r0 = r4.mDecorContentParent
            boolean r2 = r0.hideOverflowMenu()
            goto L40
        L5b:
            boolean r0 = r3.isOpen
            if (r0 != 0) goto L63
            boolean r0 = r3.isHandled
            if (r0 == 0) goto L6a
        L63:
            boolean r0 = r3.isOpen
            r4.closePanel(r3, r2)
            r2 = r0
            goto L40
        L6a:
            boolean r0 = r3.isPrepared
            if (r0 == 0) goto L88
            boolean r0 = r3.refreshMenuContent
            if (r0 == 0) goto L8a
            r3.isPrepared = r1
            boolean r0 = r4.preparePanel(r3, r6)
        L78:
            if (r0 == 0) goto L88
            r4.openPanel(r3, r6)
            goto L40
        L7e:
            java.lang.String r0 = "AppCompatDelegate"
            java.lang.String r1 = "Couldn't get audio manager"
            android.util.Log.w(r0, r1)
            goto L52
        L88:
            r2 = r1
            goto L40
        L8a:
            r0 = r2
            goto L78
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.AppCompatDelegateImplV9.onKeyUpPanel(int, android.view.KeyEvent):boolean");
    }

    void callOnPanelClosed(int i, PanelFeatureState panelFeatureState, Menu menu) {
        if (menu == null) {
            if (panelFeatureState == null && i >= 0 && i < this.mPanels.length) {
                panelFeatureState = this.mPanels[i];
            }
            if (panelFeatureState != null) {
                menu = panelFeatureState.menu;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.isOpen) && !isDestroyed()) {
            this.mOriginalWindowCallback.onPanelClosed(i, menu);
        }
    }

    PanelFeatureState findMenuPanel(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.mPanels;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i = 0; i < length; i++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
            if (panelFeatureState != null && panelFeatureState.menu == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    protected PanelFeatureState getPanelState(int i, boolean z) {
        PanelFeatureState[] panelFeatureStateArr = this.mPanels;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[i + 1];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.mPanels = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
        if (panelFeatureState != null) {
            return panelFeatureState;
        }
        PanelFeatureState panelFeatureState2 = new PanelFeatureState(i);
        panelFeatureStateArr[i] = panelFeatureState2;
        return panelFeatureState2;
    }

    private boolean performPanelShortcut(PanelFeatureState panelFeatureState, int i, KeyEvent keyEvent, int i2) {
        boolean zPerformShortcut = false;
        if (!keyEvent.isSystem()) {
            if ((panelFeatureState.isPrepared || preparePanel(panelFeatureState, keyEvent)) && panelFeatureState.menu != null) {
                zPerformShortcut = panelFeatureState.menu.performShortcut(i, keyEvent, i2);
            }
            if (zPerformShortcut && (i2 & 1) == 0 && this.mDecorContentParent == null) {
                closePanel(panelFeatureState, true);
            }
        }
        return zPerformShortcut;
    }

    private void invalidatePanelMenu(int i) {
        this.mInvalidatePanelMenuFeatures |= 1 << i;
        if (!this.mInvalidatePanelMenuPosted) {
            ViewCompat.postOnAnimation(this.mWindow.getDecorView(), this.mInvalidatePanelMenuRunnable);
            this.mInvalidatePanelMenuPosted = true;
        }
    }

    void doInvalidatePanelMenu(int i) {
        PanelFeatureState panelState;
        PanelFeatureState panelState2 = getPanelState(i, true);
        if (panelState2.menu != null) {
            Bundle bundle = new Bundle();
            panelState2.menu.saveActionViewStates(bundle);
            if (bundle.size() > 0) {
                panelState2.frozenActionViewState = bundle;
            }
            panelState2.menu.stopDispatchingItemsChanged();
            panelState2.menu.clear();
        }
        panelState2.refreshMenuContent = true;
        panelState2.refreshDecorView = true;
        if ((i == 108 || i == 0) && this.mDecorContentParent != null && (panelState = getPanelState(0, false)) != null) {
            panelState.isPrepared = false;
            preparePanel(panelState, null);
        }
    }

    int updateStatusGuard(int i) {
        boolean z;
        boolean z2;
        boolean z3;
        if (this.mActionModeView == null || !(this.mActionModeView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mActionModeView.getLayoutParams();
            if (this.mActionModeView.isShown()) {
                if (this.mTempRect1 == null) {
                    this.mTempRect1 = new Rect();
                    this.mTempRect2 = new Rect();
                }
                Rect rect = this.mTempRect1;
                Rect rect2 = this.mTempRect2;
                rect.set(0, i, 0, 0);
                ViewUtils.computeFitSystemWindows(this.mSubDecor, rect, rect2);
                if (marginLayoutParams.topMargin != (rect2.top == 0 ? i : 0)) {
                    marginLayoutParams.topMargin = i;
                    if (this.mStatusGuard == null) {
                        this.mStatusGuard = new View(this.mContext);
                        this.mStatusGuard.setBackgroundColor(this.mContext.getResources().getColor(android.support.v7.appcompat.R.color.abc_input_method_navigation_guard));
                        this.mSubDecor.addView(this.mStatusGuard, -1, new ViewGroup.LayoutParams(-1, i));
                        z3 = true;
                    } else {
                        ViewGroup.LayoutParams layoutParams = this.mStatusGuard.getLayoutParams();
                        if (layoutParams.height != i) {
                            layoutParams.height = i;
                            this.mStatusGuard.setLayoutParams(layoutParams);
                        }
                        z3 = true;
                    }
                } else {
                    z3 = false;
                }
                z = this.mStatusGuard != null;
                if (!this.mOverlayActionMode && z) {
                    i = 0;
                }
                boolean z4 = z3;
                z2 = z;
                z = z4;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z2 = false;
            } else {
                z = false;
                z2 = false;
            }
            if (z) {
                this.mActionModeView.setLayoutParams(marginLayoutParams);
            }
            z = z2;
        }
        if (this.mStatusGuard != null) {
            this.mStatusGuard.setVisibility(z ? 0 : 8);
        }
        return i;
    }

    private void throwFeatureRequestIfSubDecorInstalled() {
        if (this.mSubDecorInstalled) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    private int sanitizeWindowFeatureId(int i) {
        if (i == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        }
        if (i == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            return 109;
        }
        return i;
    }

    ViewGroup getSubDecor() {
        return this.mSubDecor;
    }

    void dismissPopups() {
        if (this.mDecorContentParent != null) {
            this.mDecorContentParent.dismissPopups();
        }
        if (this.mActionModePopup != null) {
            this.mWindow.getDecorView().removeCallbacks(this.mShowActionModePopup);
            if (this.mActionModePopup.isShowing()) {
                try {
                    this.mActionModePopup.dismiss();
                } catch (IllegalArgumentException e2) {
                }
            }
            this.mActionModePopup = null;
        }
        endOnGoingFadeAnimation();
        PanelFeatureState panelState = getPanelState(0, false);
        if (panelState != null && panelState.menu != null) {
            panelState.menu.close();
        }
    }

    class ActionModeCallbackWrapperV9 implements ActionMode.Callback {
        private ActionMode.Callback mWrapped;

        public ActionModeCallbackWrapperV9(ActionMode.Callback callback) {
            this.mWrapped = callback;
        }

        @Override // android.support.v7.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.mWrapped.onCreateActionMode(actionMode, menu);
        }

        @Override // android.support.v7.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return this.mWrapped.onPrepareActionMode(actionMode, menu);
        }

        @Override // android.support.v7.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.mWrapped.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.support.v7.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.mWrapped.onDestroyActionMode(actionMode);
            if (AppCompatDelegateImplV9.this.mActionModePopup != null) {
                AppCompatDelegateImplV9.this.mWindow.getDecorView().removeCallbacks(AppCompatDelegateImplV9.this.mShowActionModePopup);
            }
            if (AppCompatDelegateImplV9.this.mActionModeView != null) {
                AppCompatDelegateImplV9.this.endOnGoingFadeAnimation();
                AppCompatDelegateImplV9.this.mFadeAnim = ViewCompat.animate(AppCompatDelegateImplV9.this.mActionModeView).alpha(0.0f);
                AppCompatDelegateImplV9.this.mFadeAnim.setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: android.support.v7.app.AppCompatDelegateImplV9.ActionModeCallbackWrapperV9.1
                    @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                    public void onAnimationEnd(View view) {
                        AppCompatDelegateImplV9.this.mActionModeView.setVisibility(8);
                        if (AppCompatDelegateImplV9.this.mActionModePopup != null) {
                            AppCompatDelegateImplV9.this.mActionModePopup.dismiss();
                        } else if (AppCompatDelegateImplV9.this.mActionModeView.getParent() instanceof View) {
                            ViewCompat.requestApplyInsets((View) AppCompatDelegateImplV9.this.mActionModeView.getParent());
                        }
                        AppCompatDelegateImplV9.this.mActionModeView.removeAllViews();
                        AppCompatDelegateImplV9.this.mFadeAnim.setListener(null);
                        AppCompatDelegateImplV9.this.mFadeAnim = null;
                    }
                });
            }
            if (AppCompatDelegateImplV9.this.mAppCompatCallback != null) {
                AppCompatDelegateImplV9.this.mAppCompatCallback.onSupportActionModeFinished(AppCompatDelegateImplV9.this.mActionMode);
            }
            AppCompatDelegateImplV9.this.mActionMode = null;
        }
    }

    final class PanelMenuPresenterCallback implements MenuPresenter.Callback {
        PanelMenuPresenterCallback() {
        }

        @Override // android.support.v7.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            MenuBuilder rootMenu = menuBuilder.getRootMenu();
            boolean z2 = rootMenu != menuBuilder;
            AppCompatDelegateImplV9 appCompatDelegateImplV9 = AppCompatDelegateImplV9.this;
            if (z2) {
                menuBuilder = rootMenu;
            }
            PanelFeatureState panelFeatureStateFindMenuPanel = appCompatDelegateImplV9.findMenuPanel(menuBuilder);
            if (panelFeatureStateFindMenuPanel != null) {
                if (z2) {
                    AppCompatDelegateImplV9.this.callOnPanelClosed(panelFeatureStateFindMenuPanel.featureId, panelFeatureStateFindMenuPanel, rootMenu);
                    AppCompatDelegateImplV9.this.closePanel(panelFeatureStateFindMenuPanel, true);
                } else {
                    AppCompatDelegateImplV9.this.closePanel(panelFeatureStateFindMenuPanel, z);
                }
            }
        }

        @Override // android.support.v7.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            Window.Callback windowCallback;
            if (menuBuilder == null && AppCompatDelegateImplV9.this.mHasActionBar && (windowCallback = AppCompatDelegateImplV9.this.getWindowCallback()) != null && !AppCompatDelegateImplV9.this.isDestroyed()) {
                windowCallback.onMenuOpened(108, menuBuilder);
                return true;
            }
            return true;
        }
    }

    final class ActionMenuPresenterCallback implements MenuPresenter.Callback {
        ActionMenuPresenterCallback() {
        }

        @Override // android.support.v7.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            Window.Callback windowCallback = AppCompatDelegateImplV9.this.getWindowCallback();
            if (windowCallback != null) {
                windowCallback.onMenuOpened(108, menuBuilder);
                return true;
            }
            return true;
        }

        @Override // android.support.v7.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            AppCompatDelegateImplV9.this.checkCloseActionMenu(menuBuilder);
        }
    }

    public final class PanelFeatureState {
        int background;
        View createdPanelView;
        ViewGroup decorView;
        int featureId;
        Bundle frozenActionViewState;
        Bundle frozenMenuState;
        int gravity;
        boolean isHandled;
        boolean isOpen;
        boolean isPrepared;
        ListMenuPresenter listMenuPresenter;
        Context listPresenterContext;
        MenuBuilder menu;
        public boolean qwertyMode;
        boolean refreshDecorView = false;
        boolean refreshMenuContent;
        View shownPanelView;
        boolean wasLastOpen;
        int windowAnimations;
        int x;
        int y;

        PanelFeatureState(int i) {
            this.featureId = i;
        }

        public boolean hasPanelItems() {
            if (this.shownPanelView == null) {
                return false;
            }
            return this.createdPanelView != null || this.listMenuPresenter.getAdapter().getCount() > 0;
        }

        public void clearMenuPresenters() {
            if (this.menu != null) {
                this.menu.removeMenuPresenter(this.listMenuPresenter);
            }
            this.listMenuPresenter = null;
        }

        void setStyle(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme themeNewTheme = context.getResources().newTheme();
            themeNewTheme.setTo(context.getTheme());
            themeNewTheme.resolveAttribute(android.support.v7.appcompat.R.attr.actionBarPopupTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                themeNewTheme.applyStyle(typedValue.resourceId, true);
            }
            themeNewTheme.resolveAttribute(android.support.v7.appcompat.R.attr.panelMenuListTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                themeNewTheme.applyStyle(typedValue.resourceId, true);
            } else {
                themeNewTheme.applyStyle(android.support.v7.appcompat.R.style.Theme_AppCompat_CompactMenu, true);
            }
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, 0);
            contextThemeWrapper.getTheme().setTo(themeNewTheme);
            this.listPresenterContext = contextThemeWrapper;
            TypedArray typedArrayObtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(android.support.v7.appcompat.R.styleable.AppCompatTheme);
            this.background = typedArrayObtainStyledAttributes.getResourceId(android.support.v7.appcompat.R.styleable.AppCompatTheme_panelBackground, 0);
            this.windowAnimations = typedArrayObtainStyledAttributes.getResourceId(android.support.v7.appcompat.R.styleable.AppCompatTheme_android_windowAnimationStyle, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        void setMenu(MenuBuilder menuBuilder) {
            if (menuBuilder != this.menu) {
                if (this.menu != null) {
                    this.menu.removeMenuPresenter(this.listMenuPresenter);
                }
                this.menu = menuBuilder;
                if (menuBuilder == null || this.listMenuPresenter == null) {
                    return;
                }
                menuBuilder.addMenuPresenter(this.listMenuPresenter);
            }
        }

        MenuView getListMenuView(MenuPresenter.Callback callback) {
            if (this.menu == null) {
                return null;
            }
            if (this.listMenuPresenter == null) {
                this.listMenuPresenter = new ListMenuPresenter(this.listPresenterContext, android.support.v7.appcompat.R.layout.abc_list_menu_item_layout);
                this.listMenuPresenter.setCallback(callback);
                this.menu.addMenuPresenter(this.listMenuPresenter);
            }
            return this.listMenuPresenter.getMenuView(this.decorView);
        }

        Parcelable onSaveInstanceState() {
            SavedState savedState = new SavedState();
            savedState.featureId = this.featureId;
            savedState.isOpen = this.isOpen;
            if (this.menu != null) {
                savedState.menuState = new Bundle();
                this.menu.savePresenterStates(savedState.menuState);
            }
            return savedState;
        }

        void onRestoreInstanceState(Parcelable parcelable) {
            SavedState savedState = (SavedState) parcelable;
            this.featureId = savedState.featureId;
            this.wasLastOpen = savedState.isOpen;
            this.frozenMenuState = savedState.menuState;
            this.shownPanelView = null;
            this.decorView = null;
        }

        void applyFrozenState() {
            if (this.menu != null && this.frozenMenuState != null) {
                this.menu.restorePresenterStates(this.frozenMenuState);
                this.frozenMenuState = null;
            }
        }

        class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: android.support.v7.app.AppCompatDelegateImplV9.PanelFeatureState.SavedState.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.ClassLoaderCreator
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.readFromParcel(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                public SavedState createFromParcel(Parcel parcel) {
                    return SavedState.readFromParcel(parcel, null);
                }

                @Override // android.os.Parcelable.Creator
                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            };
            int featureId;
            boolean isOpen;
            Bundle menuState;

            SavedState() {
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.featureId);
                parcel.writeInt(this.isOpen ? 1 : 0);
                if (this.isOpen) {
                    parcel.writeBundle(this.menuState);
                }
            }

            static SavedState readFromParcel(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.featureId = parcel.readInt();
                savedState.isOpen = parcel.readInt() == 1;
                if (savedState.isOpen) {
                    savedState.menuState = parcel.readBundle(classLoader);
                }
                return savedState;
            }
        }
    }

    class ListMenuDecorView extends ContentFrameLayout {
        public ListMenuDecorView(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImplV9.this.dispatchKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !isOutOfBounds((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            AppCompatDelegateImplV9.this.closePanel(0);
            return true;
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(AppCompatResources.getDrawable(getContext(), i));
        }

        private boolean isOutOfBounds(int i, int i2) {
            return i < -5 || i2 < -5 || i > getWidth() + 5 || i2 > getHeight() + 5;
        }
    }
}
