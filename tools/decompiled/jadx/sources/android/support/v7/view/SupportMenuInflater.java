package android.support.v7.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.support.annotation.RestrictTo;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.ActionProvider;
import android.support.v4.view.MenuItemCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuItemWrapperICS;
import android.support.v7.widget.DrawableUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class SupportMenuInflater extends MenuInflater {
    static final String LOG_TAG = "SupportMenuInflater";
    static final int NO_ID = 0;
    private static final String XML_GROUP = "group";
    private static final String XML_ITEM = "item";
    private static final String XML_MENU = "menu";
    final Object[] mActionProviderConstructorArguments;
    final Object[] mActionViewConstructorArguments;
    Context mContext;
    private Object mRealOwner;
    static final Class<?>[] ACTION_VIEW_CONSTRUCTOR_SIGNATURE = {Context.class};
    static final Class<?>[] ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE = ACTION_VIEW_CONSTRUCTOR_SIGNATURE;

    public SupportMenuInflater(Context context) {
        super(context);
        this.mContext = context;
        this.mActionViewConstructorArguments = new Object[]{context};
        this.mActionProviderConstructorArguments = this.mActionViewConstructorArguments;
    }

    @Override // android.view.MenuInflater
    public void inflate(int i, Menu menu) {
        if (!(menu instanceof SupportMenu)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser layout = null;
        try {
            try {
                layout = this.mContext.getResources().getLayout(i);
                parseMenu(layout, Xml.asAttributeSet(layout), menu);
            } catch (IOException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            } catch (XmlPullParserException e3) {
                throw new InflateException("Error inflating menu XML", e3);
            }
        } finally {
            if (layout != null) {
                layout.close();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
    
        switch(r3) {
            case 1: goto L58;
            case 2: goto L18;
            case 3: goto L30;
            default: goto L11;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0029, code lost:
    
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002a, code lost:
    
        r9 = r3;
        r3 = r11.next();
        r5 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0053, code lost:
    
        if (r5 == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0055, code lost:
    
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0057, code lost:
    
        r3 = r11.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0062, code lost:
    
        if (r3.equals(android.support.v7.view.SupportMenuInflater.XML_GROUP) == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0064, code lost:
    
        r7.readGroup(r12);
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0070, code lost:
    
        if (r3.equals("item") == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0072, code lost:
    
        r7.readItem(r12);
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007e, code lost:
    
        if (r3.equals(android.support.v7.view.SupportMenuInflater.XML_MENU) == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0080, code lost:
    
        parseMenu(r11, r12, r7.addSubMenuItem());
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0089, code lost:
    
        r2 = r3;
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008c, code lost:
    
        r3 = r11.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0090, code lost:
    
        if (r5 == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0096, code lost:
    
        if (r3.equals(r2) == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0098, code lost:
    
        r2 = null;
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a2, code lost:
    
        if (r3.equals(android.support.v7.view.SupportMenuInflater.XML_GROUP) == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a4, code lost:
    
        r7.resetGroup();
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b0, code lost:
    
        if (r3.equals("item") == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b6, code lost:
    
        if (r7.hasAddedItem() != false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ba, code lost:
    
        if (r7.itemActionProvider == null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c2, code lost:
    
        if (r7.itemActionProvider.hasSubMenu() == false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c4, code lost:
    
        r7.addSubMenuItem();
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ca, code lost:
    
        r7.addItem();
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00d7, code lost:
    
        if (r3.equals(android.support.v7.view.SupportMenuInflater.XML_MENU) == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00d9, code lost:
    
        r0 = true;
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e5, code lost:
    
        throw new java.lang.RuntimeException("Unexpected end of document");
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e6, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:?, code lost:
    
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:?, code lost:
    
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0020, code lost:
    
        r2 = null;
        r5 = false;
        r3 = r0;
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0024, code lost:
    
        if (r0 != false) goto L57;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void parseMenu(org.xmlpull.v1.XmlPullParser r11, android.util.AttributeSet r12, android.view.Menu r13) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.view.SupportMenuInflater.parseMenu(org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.view.Menu):void");
    }

    Object getRealOwner() {
        if (this.mRealOwner == null) {
            this.mRealOwner = findRealOwner(this.mContext);
        }
        return this.mRealOwner;
    }

    private Object findRealOwner(Object obj) {
        if (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) {
            return findRealOwner(((ContextWrapper) obj).getBaseContext());
        }
        return obj;
    }

    class InflatedOnMenuItemClickListener implements MenuItem.OnMenuItemClickListener {
        private static final Class<?>[] PARAM_TYPES = {MenuItem.class};
        private Method mMethod;
        private Object mRealOwner;

        public InflatedOnMenuItemClickListener(Object obj, String str) {
            this.mRealOwner = obj;
            Class<?> cls = obj.getClass();
            try {
                this.mMethod = cls.getMethod(str, PARAM_TYPES);
            } catch (Exception e2) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e2);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.mMethod.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.mMethod.invoke(this.mRealOwner, menuItem)).booleanValue();
                }
                this.mMethod.invoke(this.mRealOwner, menuItem);
                return true;
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    class MenuState {
        private static final int defaultGroupId = 0;
        private static final int defaultItemCategory = 0;
        private static final int defaultItemCheckable = 0;
        private static final boolean defaultItemChecked = false;
        private static final boolean defaultItemEnabled = true;
        private static final int defaultItemId = 0;
        private static final int defaultItemOrder = 0;
        private static final boolean defaultItemVisible = true;
        private int groupCategory;
        private int groupCheckable;
        private boolean groupEnabled;
        private int groupId;
        private int groupOrder;
        private boolean groupVisible;
        ActionProvider itemActionProvider;
        private String itemActionProviderClassName;
        private String itemActionViewClassName;
        private int itemActionViewLayout;
        private boolean itemAdded;
        private int itemAlphabeticModifiers;
        private char itemAlphabeticShortcut;
        private int itemCategoryOrder;
        private int itemCheckable;
        private boolean itemChecked;
        private CharSequence itemContentDescription;
        private boolean itemEnabled;
        private int itemIconResId;
        private ColorStateList itemIconTintList = null;
        private PorterDuff.Mode itemIconTintMode = null;
        private int itemId;
        private String itemListenerMethodName;
        private int itemNumericModifiers;
        private char itemNumericShortcut;
        private int itemShowAsAction;
        private CharSequence itemTitle;
        private CharSequence itemTitleCondensed;
        private CharSequence itemTooltipText;
        private boolean itemVisible;
        private Menu menu;

        public MenuState(Menu menu) {
            this.menu = menu;
            resetGroup();
        }

        public void resetGroup() {
            this.groupId = 0;
            this.groupCategory = 0;
            this.groupOrder = 0;
            this.groupCheckable = 0;
            this.groupVisible = true;
            this.groupEnabled = true;
        }

        public void readGroup(AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = SupportMenuInflater.this.mContext.obtainStyledAttributes(attributeSet, R.styleable.MenuGroup);
            this.groupId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MenuGroup_android_id, 0);
            this.groupCategory = typedArrayObtainStyledAttributes.getInt(R.styleable.MenuGroup_android_menuCategory, 0);
            this.groupOrder = typedArrayObtainStyledAttributes.getInt(R.styleable.MenuGroup_android_orderInCategory, 0);
            this.groupCheckable = typedArrayObtainStyledAttributes.getInt(R.styleable.MenuGroup_android_checkableBehavior, 0);
            this.groupVisible = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuGroup_android_visible, true);
            this.groupEnabled = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuGroup_android_enabled, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        public void readItem(AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = SupportMenuInflater.this.mContext.obtainStyledAttributes(attributeSet, R.styleable.MenuItem);
            this.itemId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MenuItem_android_id, 0);
            this.itemCategoryOrder = (typedArrayObtainStyledAttributes.getInt(R.styleable.MenuItem_android_menuCategory, this.groupCategory) & SupportMenu.CATEGORY_MASK) | (typedArrayObtainStyledAttributes.getInt(R.styleable.MenuItem_android_orderInCategory, this.groupOrder) & 65535);
            this.itemTitle = typedArrayObtainStyledAttributes.getText(R.styleable.MenuItem_android_title);
            this.itemTitleCondensed = typedArrayObtainStyledAttributes.getText(R.styleable.MenuItem_android_titleCondensed);
            this.itemIconResId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MenuItem_android_icon, 0);
            this.itemAlphabeticShortcut = getShortcut(typedArrayObtainStyledAttributes.getString(R.styleable.MenuItem_android_alphabeticShortcut));
            this.itemAlphabeticModifiers = typedArrayObtainStyledAttributes.getInt(R.styleable.MenuItem_alphabeticModifiers, 4096);
            this.itemNumericShortcut = getShortcut(typedArrayObtainStyledAttributes.getString(R.styleable.MenuItem_android_numericShortcut));
            this.itemNumericModifiers = typedArrayObtainStyledAttributes.getInt(R.styleable.MenuItem_numericModifiers, 4096);
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.MenuItem_android_checkable)) {
                this.itemCheckable = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.itemCheckable = this.groupCheckable;
            }
            this.itemChecked = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_checked, false);
            this.itemVisible = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_visible, this.groupVisible);
            this.itemEnabled = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_enabled, this.groupEnabled);
            this.itemShowAsAction = typedArrayObtainStyledAttributes.getInt(R.styleable.MenuItem_showAsAction, -1);
            this.itemListenerMethodName = typedArrayObtainStyledAttributes.getString(R.styleable.MenuItem_android_onClick);
            this.itemActionViewLayout = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MenuItem_actionLayout, 0);
            this.itemActionViewClassName = typedArrayObtainStyledAttributes.getString(R.styleable.MenuItem_actionViewClass);
            this.itemActionProviderClassName = typedArrayObtainStyledAttributes.getString(R.styleable.MenuItem_actionProviderClass);
            boolean z = this.itemActionProviderClassName != null;
            if (z && this.itemActionViewLayout == 0 && this.itemActionViewClassName == null) {
                this.itemActionProvider = (ActionProvider) newInstance(this.itemActionProviderClassName, SupportMenuInflater.ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE, SupportMenuInflater.this.mActionProviderConstructorArguments);
            } else {
                if (z) {
                    Log.w(SupportMenuInflater.LOG_TAG, "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.itemActionProvider = null;
            }
            this.itemContentDescription = typedArrayObtainStyledAttributes.getText(R.styleable.MenuItem_contentDescription);
            this.itemTooltipText = typedArrayObtainStyledAttributes.getText(R.styleable.MenuItem_tooltipText);
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.MenuItem_iconTintMode)) {
                this.itemIconTintMode = DrawableUtils.parseTintMode(typedArrayObtainStyledAttributes.getInt(R.styleable.MenuItem_iconTintMode, -1), this.itemIconTintMode);
            } else {
                this.itemIconTintMode = null;
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.MenuItem_iconTint)) {
                this.itemIconTintList = typedArrayObtainStyledAttributes.getColorStateList(R.styleable.MenuItem_iconTint);
            } else {
                this.itemIconTintList = null;
            }
            typedArrayObtainStyledAttributes.recycle();
            this.itemAdded = false;
        }

        private char getShortcut(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        private void setItem(MenuItem menuItem) {
            boolean z = true;
            menuItem.setChecked(this.itemChecked).setVisible(this.itemVisible).setEnabled(this.itemEnabled).setCheckable(this.itemCheckable >= 1).setTitleCondensed(this.itemTitleCondensed).setIcon(this.itemIconResId);
            if (this.itemShowAsAction >= 0) {
                menuItem.setShowAsAction(this.itemShowAsAction);
            }
            if (this.itemListenerMethodName != null) {
                if (SupportMenuInflater.this.mContext.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new InflatedOnMenuItemClickListener(SupportMenuInflater.this.getRealOwner(), this.itemListenerMethodName));
            }
            if (menuItem instanceof MenuItemImpl) {
            }
            if (this.itemCheckable >= 2) {
                if (menuItem instanceof MenuItemImpl) {
                    ((MenuItemImpl) menuItem).setExclusiveCheckable(true);
                } else if (menuItem instanceof MenuItemWrapperICS) {
                    ((MenuItemWrapperICS) menuItem).setExclusiveCheckable(true);
                }
            }
            if (this.itemActionViewClassName != null) {
                menuItem.setActionView((View) newInstance(this.itemActionViewClassName, SupportMenuInflater.ACTION_VIEW_CONSTRUCTOR_SIGNATURE, SupportMenuInflater.this.mActionViewConstructorArguments));
            } else {
                z = false;
            }
            if (this.itemActionViewLayout > 0) {
                if (!z) {
                    menuItem.setActionView(this.itemActionViewLayout);
                } else {
                    Log.w(SupportMenuInflater.LOG_TAG, "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            if (this.itemActionProvider != null) {
                MenuItemCompat.setActionProvider(menuItem, this.itemActionProvider);
            }
            MenuItemCompat.setContentDescription(menuItem, this.itemContentDescription);
            MenuItemCompat.setTooltipText(menuItem, this.itemTooltipText);
            MenuItemCompat.setAlphabeticShortcut(menuItem, this.itemAlphabeticShortcut, this.itemAlphabeticModifiers);
            MenuItemCompat.setNumericShortcut(menuItem, this.itemNumericShortcut, this.itemNumericModifiers);
            if (this.itemIconTintMode != null) {
                MenuItemCompat.setIconTintMode(menuItem, this.itemIconTintMode);
            }
            if (this.itemIconTintList != null) {
                MenuItemCompat.setIconTintList(menuItem, this.itemIconTintList);
            }
        }

        public void addItem() {
            this.itemAdded = true;
            setItem(this.menu.add(this.groupId, this.itemId, this.itemCategoryOrder, this.itemTitle));
        }

        public SubMenu addSubMenuItem() {
            this.itemAdded = true;
            SubMenu subMenuAddSubMenu = this.menu.addSubMenu(this.groupId, this.itemId, this.itemCategoryOrder, this.itemTitle);
            setItem(subMenuAddSubMenu.getItem());
            return subMenuAddSubMenu;
        }

        public boolean hasAddedItem() {
            return this.itemAdded;
        }

        private <T> T newInstance(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = SupportMenuInflater.this.mContext.getClassLoader().loadClass(str).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e2) {
                Log.w(SupportMenuInflater.LOG_TAG, "Cannot instantiate class: " + str, e2);
                return null;
            }
        }
    }
}
