package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.annotation.AttrRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.v4.view.PointerIconCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.PopupWindowCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.ShowableListMenu;
import android.support.v7.widget.ActivityChooserView;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class ListPopupWindow implements ShowableListMenu {
    private static final boolean DEBUG = false;
    static final int EXPAND_LIST_TIMEOUT = 250;
    public static final int INPUT_METHOD_FROM_FOCUSABLE = 0;
    public static final int INPUT_METHOD_NEEDED = 1;
    public static final int INPUT_METHOD_NOT_NEEDED = 2;
    public static final int MATCH_PARENT = -1;
    public static final int POSITION_PROMPT_ABOVE = 0;
    public static final int POSITION_PROMPT_BELOW = 1;
    private static final String TAG = "ListPopupWindow";
    public static final int WRAP_CONTENT = -2;
    private static Method sClipToWindowEnabledMethod;
    private static Method sGetMaxAvailableHeightMethod;
    private static Method sSetEpicenterBoundsMethod;
    private ListAdapter mAdapter;
    private Context mContext;
    private boolean mDropDownAlwaysVisible;
    private View mDropDownAnchorView;
    private int mDropDownGravity;
    private int mDropDownHeight;
    private int mDropDownHorizontalOffset;
    DropDownListView mDropDownList;
    private Drawable mDropDownListHighlight;
    private int mDropDownVerticalOffset;
    private boolean mDropDownVerticalOffsetSet;
    private int mDropDownWidth;
    private int mDropDownWindowLayoutType;
    private Rect mEpicenterBounds;
    private boolean mForceIgnoreOutsideTouch;
    final Handler mHandler;
    private final ListSelectorHider mHideSelector;
    private boolean mIsAnimatedFromAnchor;
    private AdapterView.OnItemClickListener mItemClickListener;
    private AdapterView.OnItemSelectedListener mItemSelectedListener;
    int mListItemExpandMaximum;
    private boolean mModal;
    private DataSetObserver mObserver;
    private boolean mOverlapAnchor;
    private boolean mOverlapAnchorSet;
    PopupWindow mPopup;
    private int mPromptPosition;
    private View mPromptView;
    final ResizePopupRunnable mResizePopupRunnable;
    private final PopupScrollListener mScrollListener;
    private Runnable mShowDropDownRunnable;
    private final Rect mTempRect;
    private final PopupTouchInterceptor mTouchInterceptor;

    static {
        try {
            sClipToWindowEnabledMethod = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
        } catch (NoSuchMethodException e2) {
            Log.i(TAG, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
        }
        try {
            sGetMaxAvailableHeightMethod = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
        } catch (NoSuchMethodException e3) {
            Log.i(TAG, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
        }
        try {
            sSetEpicenterBoundsMethod = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
        } catch (NoSuchMethodException e4) {
            Log.i(TAG, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
        }
    }

    public ListPopupWindow(@NonNull Context context) {
        this(context, null, R.attr.listPopupWindowStyle);
    }

    public ListPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listPopupWindowStyle);
    }

    public ListPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        this(context, attributeSet, i, 0);
    }

    public ListPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        this.mDropDownHeight = -2;
        this.mDropDownWidth = -2;
        this.mDropDownWindowLayoutType = PointerIconCompat.TYPE_HAND;
        this.mIsAnimatedFromAnchor = true;
        this.mDropDownGravity = 0;
        this.mDropDownAlwaysVisible = false;
        this.mForceIgnoreOutsideTouch = false;
        this.mListItemExpandMaximum = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.mPromptPosition = 0;
        this.mResizePopupRunnable = new ResizePopupRunnable();
        this.mTouchInterceptor = new PopupTouchInterceptor();
        this.mScrollListener = new PopupScrollListener();
        this.mHideSelector = new ListSelectorHider();
        this.mTempRect = new Rect();
        this.mContext = context;
        this.mHandler = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ListPopupWindow, i, i2);
        this.mDropDownHorizontalOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        this.mDropDownVerticalOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        if (this.mDropDownVerticalOffset != 0) {
            this.mDropDownVerticalOffsetSet = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        this.mPopup = new AppCompatPopupWindow(context, attributeSet, i, i2);
        this.mPopup.setInputMethodMode(1);
    }

    public void setAdapter(@Nullable ListAdapter listAdapter) {
        if (this.mObserver == null) {
            this.mObserver = new PopupDataSetObserver();
        } else if (this.mAdapter != null) {
            this.mAdapter.unregisterDataSetObserver(this.mObserver);
        }
        this.mAdapter = listAdapter;
        if (this.mAdapter != null) {
            listAdapter.registerDataSetObserver(this.mObserver);
        }
        if (this.mDropDownList != null) {
            this.mDropDownList.setAdapter(this.mAdapter);
        }
    }

    public void setPromptPosition(int i) {
        this.mPromptPosition = i;
    }

    public int getPromptPosition() {
        return this.mPromptPosition;
    }

    public void setModal(boolean z) {
        this.mModal = z;
        this.mPopup.setFocusable(z);
    }

    public boolean isModal() {
        return this.mModal;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setForceIgnoreOutsideTouch(boolean z) {
        this.mForceIgnoreOutsideTouch = z;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setDropDownAlwaysVisible(boolean z) {
        this.mDropDownAlwaysVisible = z;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isDropDownAlwaysVisible() {
        return this.mDropDownAlwaysVisible;
    }

    public void setSoftInputMode(int i) {
        this.mPopup.setSoftInputMode(i);
    }

    public int getSoftInputMode() {
        return this.mPopup.getSoftInputMode();
    }

    public void setListSelector(Drawable drawable) {
        this.mDropDownListHighlight = drawable;
    }

    @Nullable
    public Drawable getBackground() {
        return this.mPopup.getBackground();
    }

    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        this.mPopup.setBackgroundDrawable(drawable);
    }

    public void setAnimationStyle(@StyleRes int i) {
        this.mPopup.setAnimationStyle(i);
    }

    @StyleRes
    public int getAnimationStyle() {
        return this.mPopup.getAnimationStyle();
    }

    @Nullable
    public View getAnchorView() {
        return this.mDropDownAnchorView;
    }

    public void setAnchorView(@Nullable View view) {
        this.mDropDownAnchorView = view;
    }

    public int getHorizontalOffset() {
        return this.mDropDownHorizontalOffset;
    }

    public void setHorizontalOffset(int i) {
        this.mDropDownHorizontalOffset = i;
    }

    public int getVerticalOffset() {
        if (this.mDropDownVerticalOffsetSet) {
            return this.mDropDownVerticalOffset;
        }
        return 0;
    }

    public void setVerticalOffset(int i) {
        this.mDropDownVerticalOffset = i;
        this.mDropDownVerticalOffsetSet = true;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setEpicenterBounds(Rect rect) {
        this.mEpicenterBounds = rect;
    }

    public void setDropDownGravity(int i) {
        this.mDropDownGravity = i;
    }

    public int getWidth() {
        return this.mDropDownWidth;
    }

    public void setWidth(int i) {
        this.mDropDownWidth = i;
    }

    public void setContentWidth(int i) {
        Drawable background = this.mPopup.getBackground();
        if (background != null) {
            background.getPadding(this.mTempRect);
            this.mDropDownWidth = this.mTempRect.left + this.mTempRect.right + i;
        } else {
            setWidth(i);
        }
    }

    public int getHeight() {
        return this.mDropDownHeight;
    }

    public void setHeight(int i) {
        if (i < 0 && -2 != i && -1 != i) {
            throw new IllegalArgumentException("Invalid height. Must be a positive value, MATCH_PARENT, or WRAP_CONTENT.");
        }
        this.mDropDownHeight = i;
    }

    public void setWindowLayoutType(int i) {
        this.mDropDownWindowLayoutType = i;
    }

    public void setOnItemClickListener(@Nullable AdapterView.OnItemClickListener onItemClickListener) {
        this.mItemClickListener = onItemClickListener;
    }

    public void setOnItemSelectedListener(@Nullable AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.mItemSelectedListener = onItemSelectedListener;
    }

    public void setPromptView(@Nullable View view) {
        boolean zIsShowing = isShowing();
        if (zIsShowing) {
            removePromptView();
        }
        this.mPromptView = view;
        if (zIsShowing) {
            show();
        }
    }

    public void postShow() {
        this.mHandler.post(this.mShowDropDownRunnable);
    }

    @Override // android.support.v7.view.menu.ShowableListMenu
    public void show() {
        int width;
        int width2;
        int i;
        boolean z = false;
        int iBuildDropDown = buildDropDown();
        boolean zIsInputMethodNotNeeded = isInputMethodNotNeeded();
        PopupWindowCompat.setWindowLayoutType(this.mPopup, this.mDropDownWindowLayoutType);
        if (this.mPopup.isShowing()) {
            if (ViewCompat.isAttachedToWindow(getAnchorView())) {
                if (this.mDropDownWidth == -1) {
                    width2 = -1;
                } else if (this.mDropDownWidth == -2) {
                    width2 = getAnchorView().getWidth();
                } else {
                    width2 = this.mDropDownWidth;
                }
                if (this.mDropDownHeight == -1) {
                    if (!zIsInputMethodNotNeeded) {
                        iBuildDropDown = -1;
                    }
                    if (zIsInputMethodNotNeeded) {
                        this.mPopup.setWidth(this.mDropDownWidth == -1 ? -1 : 0);
                        this.mPopup.setHeight(0);
                        i = iBuildDropDown;
                    } else {
                        this.mPopup.setWidth(this.mDropDownWidth == -1 ? -1 : 0);
                        this.mPopup.setHeight(-1);
                        i = iBuildDropDown;
                    }
                } else {
                    i = this.mDropDownHeight == -2 ? iBuildDropDown : this.mDropDownHeight;
                }
                PopupWindow popupWindow = this.mPopup;
                if (!this.mForceIgnoreOutsideTouch && !this.mDropDownAlwaysVisible) {
                    z = true;
                }
                popupWindow.setOutsideTouchable(z);
                PopupWindow popupWindow2 = this.mPopup;
                View anchorView = getAnchorView();
                int i2 = this.mDropDownHorizontalOffset;
                int i3 = this.mDropDownVerticalOffset;
                if (width2 < 0) {
                    width2 = -1;
                }
                popupWindow2.update(anchorView, i2, i3, width2, i >= 0 ? i : -1);
                return;
            }
            return;
        }
        if (this.mDropDownWidth == -1) {
            width = -1;
        } else if (this.mDropDownWidth == -2) {
            width = getAnchorView().getWidth();
        } else {
            width = this.mDropDownWidth;
        }
        if (this.mDropDownHeight == -1) {
            iBuildDropDown = -1;
        } else if (this.mDropDownHeight != -2) {
            iBuildDropDown = this.mDropDownHeight;
        }
        this.mPopup.setWidth(width);
        this.mPopup.setHeight(iBuildDropDown);
        setPopupClipToScreenEnabled(true);
        this.mPopup.setOutsideTouchable((this.mForceIgnoreOutsideTouch || this.mDropDownAlwaysVisible) ? false : true);
        this.mPopup.setTouchInterceptor(this.mTouchInterceptor);
        if (this.mOverlapAnchorSet) {
            PopupWindowCompat.setOverlapAnchor(this.mPopup, this.mOverlapAnchor);
        }
        if (sSetEpicenterBoundsMethod != null) {
            try {
                sSetEpicenterBoundsMethod.invoke(this.mPopup, this.mEpicenterBounds);
            } catch (Exception e2) {
                Log.e(TAG, "Could not invoke setEpicenterBounds on PopupWindow", e2);
            }
        }
        PopupWindowCompat.showAsDropDown(this.mPopup, getAnchorView(), this.mDropDownHorizontalOffset, this.mDropDownVerticalOffset, this.mDropDownGravity);
        this.mDropDownList.setSelection(-1);
        if (!this.mModal || this.mDropDownList.isInTouchMode()) {
            clearListSelection();
        }
        if (!this.mModal) {
            this.mHandler.post(this.mHideSelector);
        }
    }

    @Override // android.support.v7.view.menu.ShowableListMenu
    public void dismiss() {
        this.mPopup.dismiss();
        removePromptView();
        this.mPopup.setContentView(null);
        this.mDropDownList = null;
        this.mHandler.removeCallbacks(this.mResizePopupRunnable);
    }

    public void setOnDismissListener(@Nullable PopupWindow.OnDismissListener onDismissListener) {
        this.mPopup.setOnDismissListener(onDismissListener);
    }

    private void removePromptView() {
        if (this.mPromptView != null) {
            ViewParent parent = this.mPromptView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.mPromptView);
            }
        }
    }

    public void setInputMethodMode(int i) {
        this.mPopup.setInputMethodMode(i);
    }

    public int getInputMethodMode() {
        return this.mPopup.getInputMethodMode();
    }

    public void setSelection(int i) {
        DropDownListView dropDownListView = this.mDropDownList;
        if (isShowing() && dropDownListView != null) {
            dropDownListView.setListSelectionHidden(false);
            dropDownListView.setSelection(i);
            if (dropDownListView.getChoiceMode() != 0) {
                dropDownListView.setItemChecked(i, true);
            }
        }
    }

    public void clearListSelection() {
        DropDownListView dropDownListView = this.mDropDownList;
        if (dropDownListView != null) {
            dropDownListView.setListSelectionHidden(true);
            dropDownListView.requestLayout();
        }
    }

    @Override // android.support.v7.view.menu.ShowableListMenu
    public boolean isShowing() {
        return this.mPopup.isShowing();
    }

    public boolean isInputMethodNotNeeded() {
        return this.mPopup.getInputMethodMode() == 2;
    }

    public boolean performItemClick(int i) {
        if (!isShowing()) {
            return false;
        }
        if (this.mItemClickListener != null) {
            DropDownListView dropDownListView = this.mDropDownList;
            this.mItemClickListener.onItemClick(dropDownListView, dropDownListView.getChildAt(i - dropDownListView.getFirstVisiblePosition()), i, dropDownListView.getAdapter().getItemId(i));
        }
        return true;
    }

    @Nullable
    public Object getSelectedItem() {
        if (isShowing()) {
            return this.mDropDownList.getSelectedItem();
        }
        return null;
    }

    public int getSelectedItemPosition() {
        if (isShowing()) {
            return this.mDropDownList.getSelectedItemPosition();
        }
        return -1;
    }

    public long getSelectedItemId() {
        if (isShowing()) {
            return this.mDropDownList.getSelectedItemId();
        }
        return Long.MIN_VALUE;
    }

    @Nullable
    public View getSelectedView() {
        if (isShowing()) {
            return this.mDropDownList.getSelectedView();
        }
        return null;
    }

    @Override // android.support.v7.view.menu.ShowableListMenu
    @Nullable
    public ListView getListView() {
        return this.mDropDownList;
    }

    @NonNull
    DropDownListView createDropDownListView(Context context, boolean z) {
        return new DropDownListView(context, z);
    }

    void setListItemExpandMax(int i) {
        this.mListItemExpandMaximum = i;
    }

    public boolean onKeyDown(int i, @NonNull KeyEvent keyEvent) {
        if (!isShowing() || i == 62) {
            return false;
        }
        if (this.mDropDownList.getSelectedItemPosition() < 0 && isConfirmKey(i)) {
            return false;
        }
        int selectedItemPosition = this.mDropDownList.getSelectedItemPosition();
        boolean z = !this.mPopup.isAboveAnchor();
        ListAdapter listAdapter = this.mAdapter;
        int iLookForSelectablePosition = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int count = Integer.MIN_VALUE;
        if (listAdapter != null) {
            boolean zAreAllItemsEnabled = listAdapter.areAllItemsEnabled();
            iLookForSelectablePosition = zAreAllItemsEnabled ? 0 : this.mDropDownList.lookForSelectablePosition(0, true);
            count = zAreAllItemsEnabled ? listAdapter.getCount() - 1 : this.mDropDownList.lookForSelectablePosition(listAdapter.getCount() - 1, false);
        }
        if ((z && i == 19 && selectedItemPosition <= iLookForSelectablePosition) || (!z && i == 20 && selectedItemPosition >= count)) {
            clearListSelection();
            this.mPopup.setInputMethodMode(1);
            show();
            return true;
        }
        this.mDropDownList.setListSelectionHidden(false);
        if (!this.mDropDownList.onKeyDown(i, keyEvent)) {
            return (z && i == 20) ? selectedItemPosition == count : !z && i == 19 && selectedItemPosition == iLookForSelectablePosition;
        }
        this.mPopup.setInputMethodMode(2);
        this.mDropDownList.requestFocusFromTouch();
        show();
        switch (i) {
            case 19:
            case 20:
            case 23:
            case 66:
                break;
        }
        return true;
    }

    public boolean onKeyUp(int i, @NonNull KeyEvent keyEvent) {
        if (!isShowing() || this.mDropDownList.getSelectedItemPosition() < 0) {
            return false;
        }
        boolean zOnKeyUp = this.mDropDownList.onKeyUp(i, keyEvent);
        if (zOnKeyUp && isConfirmKey(i)) {
            dismiss();
            return zOnKeyUp;
        }
        return zOnKeyUp;
    }

    public boolean onKeyPreIme(int i, @NonNull KeyEvent keyEvent) {
        if (i == 4 && isShowing()) {
            View view = this.mDropDownAnchorView;
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                KeyEvent.DispatcherState keyDispatcherState = view.getKeyDispatcherState();
                if (keyDispatcherState == null) {
                    return true;
                }
                keyDispatcherState.startTracking(keyEvent, this);
                return true;
            }
            if (keyEvent.getAction() == 1) {
                KeyEvent.DispatcherState keyDispatcherState2 = view.getKeyDispatcherState();
                if (keyDispatcherState2 != null) {
                    keyDispatcherState2.handleUpEvent(keyEvent);
                }
                if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                    dismiss();
                    return true;
                }
            }
        }
        return false;
    }

    public View.OnTouchListener createDragToOpenListener(View view) {
        return new ForwardingListener(view) { // from class: android.support.v7.widget.ListPopupWindow.1
            @Override // android.support.v7.widget.ForwardingListener
            public ListPopupWindow getPopup() {
                return ListPopupWindow.this;
            }
        };
    }

    private int buildDropDown() {
        int measuredHeight;
        int i;
        int iMakeMeasureSpec;
        View view;
        int measuredHeight2;
        int i2;
        int i3;
        if (this.mDropDownList == null) {
            Context context = this.mContext;
            this.mShowDropDownRunnable = new Runnable() { // from class: android.support.v7.widget.ListPopupWindow.2
                @Override // java.lang.Runnable
                public void run() {
                    View anchorView = ListPopupWindow.this.getAnchorView();
                    if (anchorView != null && anchorView.getWindowToken() != null) {
                        ListPopupWindow.this.show();
                    }
                }
            };
            this.mDropDownList = createDropDownListView(context, !this.mModal);
            if (this.mDropDownListHighlight != null) {
                this.mDropDownList.setSelector(this.mDropDownListHighlight);
            }
            this.mDropDownList.setAdapter(this.mAdapter);
            this.mDropDownList.setOnItemClickListener(this.mItemClickListener);
            this.mDropDownList.setFocusable(true);
            this.mDropDownList.setFocusableInTouchMode(true);
            this.mDropDownList.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: android.support.v7.widget.ListPopupWindow.3
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> adapterView, View view2, int i4, long j) {
                    DropDownListView dropDownListView;
                    if (i4 != -1 && (dropDownListView = ListPopupWindow.this.mDropDownList) != null) {
                        dropDownListView.setListSelectionHidden(false);
                    }
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> adapterView) {
                }
            });
            this.mDropDownList.setOnScrollListener(this.mScrollListener);
            if (this.mItemSelectedListener != null) {
                this.mDropDownList.setOnItemSelectedListener(this.mItemSelectedListener);
            }
            DropDownListView dropDownListView = this.mDropDownList;
            View view2 = this.mPromptView;
            if (view2 != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                switch (this.mPromptPosition) {
                    case 0:
                        linearLayout.addView(view2);
                        linearLayout.addView(dropDownListView, layoutParams);
                        break;
                    case 1:
                        linearLayout.addView(dropDownListView, layoutParams);
                        linearLayout.addView(view2);
                        break;
                    default:
                        Log.e(TAG, "Invalid hint position " + this.mPromptPosition);
                        break;
                }
                if (this.mDropDownWidth >= 0) {
                    i3 = this.mDropDownWidth;
                    i2 = Integer.MIN_VALUE;
                } else {
                    i2 = 0;
                    i3 = 0;
                }
                view2.measure(View.MeasureSpec.makeMeasureSpec(i3, i2), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                measuredHeight2 = layoutParams2.bottomMargin + view2.getMeasuredHeight() + layoutParams2.topMargin;
                view = linearLayout;
            } else {
                view = dropDownListView;
                measuredHeight2 = 0;
            }
            this.mPopup.setContentView(view);
            measuredHeight = measuredHeight2;
        } else {
            View view3 = this.mPromptView;
            if (view3 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view3.getLayoutParams();
                measuredHeight = layoutParams3.bottomMargin + view3.getMeasuredHeight() + layoutParams3.topMargin;
            } else {
                measuredHeight = 0;
            }
        }
        Drawable background = this.mPopup.getBackground();
        if (background != null) {
            background.getPadding(this.mTempRect);
            int i4 = this.mTempRect.top + this.mTempRect.bottom;
            if (this.mDropDownVerticalOffsetSet) {
                i = i4;
            } else {
                this.mDropDownVerticalOffset = -this.mTempRect.top;
                i = i4;
            }
        } else {
            this.mTempRect.setEmpty();
            i = 0;
        }
        int maxAvailableHeight = getMaxAvailableHeight(getAnchorView(), this.mDropDownVerticalOffset, this.mPopup.getInputMethodMode() == 2);
        if (this.mDropDownAlwaysVisible || this.mDropDownHeight == -1) {
            return maxAvailableHeight + i;
        }
        switch (this.mDropDownWidth) {
            case -2:
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.mContext.getResources().getDisplayMetrics().widthPixels - (this.mTempRect.left + this.mTempRect.right), Integer.MIN_VALUE);
                break;
            case -1:
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.mContext.getResources().getDisplayMetrics().widthPixels - (this.mTempRect.left + this.mTempRect.right), 1073741824);
                break;
            default:
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.mDropDownWidth, 1073741824);
                break;
        }
        int iMeasureHeightOfChildrenCompat = this.mDropDownList.measureHeightOfChildrenCompat(iMakeMeasureSpec, 0, -1, maxAvailableHeight - measuredHeight, -1);
        if (iMeasureHeightOfChildrenCompat > 0) {
            measuredHeight += this.mDropDownList.getPaddingTop() + this.mDropDownList.getPaddingBottom() + i;
        }
        return iMeasureHeightOfChildrenCompat + measuredHeight;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setOverlapAnchor(boolean z) {
        this.mOverlapAnchorSet = true;
        this.mOverlapAnchor = z;
    }

    class PopupDataSetObserver extends DataSetObserver {
        PopupDataSetObserver() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (ListPopupWindow.this.isShowing()) {
                ListPopupWindow.this.show();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ListPopupWindow.this.dismiss();
        }
    }

    class ListSelectorHider implements Runnable {
        ListSelectorHider() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ListPopupWindow.this.clearListSelection();
        }
    }

    class ResizePopupRunnable implements Runnable {
        ResizePopupRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ListPopupWindow.this.mDropDownList != null && ViewCompat.isAttachedToWindow(ListPopupWindow.this.mDropDownList) && ListPopupWindow.this.mDropDownList.getCount() > ListPopupWindow.this.mDropDownList.getChildCount() && ListPopupWindow.this.mDropDownList.getChildCount() <= ListPopupWindow.this.mListItemExpandMaximum) {
                ListPopupWindow.this.mPopup.setInputMethodMode(2);
                ListPopupWindow.this.show();
            }
        }
    }

    class PopupTouchInterceptor implements View.OnTouchListener {
        PopupTouchInterceptor() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && ListPopupWindow.this.mPopup != null && ListPopupWindow.this.mPopup.isShowing() && x >= 0 && x < ListPopupWindow.this.mPopup.getWidth() && y >= 0 && y < ListPopupWindow.this.mPopup.getHeight()) {
                ListPopupWindow.this.mHandler.postDelayed(ListPopupWindow.this.mResizePopupRunnable, 250L);
                return false;
            }
            if (action == 1) {
                ListPopupWindow.this.mHandler.removeCallbacks(ListPopupWindow.this.mResizePopupRunnable);
                return false;
            }
            return false;
        }
    }

    class PopupScrollListener implements AbsListView.OnScrollListener {
        PopupScrollListener() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 1 && !ListPopupWindow.this.isInputMethodNotNeeded() && ListPopupWindow.this.mPopup.getContentView() != null) {
                ListPopupWindow.this.mHandler.removeCallbacks(ListPopupWindow.this.mResizePopupRunnable);
                ListPopupWindow.this.mResizePopupRunnable.run();
            }
        }
    }

    private static boolean isConfirmKey(int i) {
        return i == 66 || i == 23;
    }

    private void setPopupClipToScreenEnabled(boolean z) {
        if (sClipToWindowEnabledMethod != null) {
            try {
                sClipToWindowEnabledMethod.invoke(this.mPopup, Boolean.valueOf(z));
            } catch (Exception e2) {
                Log.i(TAG, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
        }
    }

    private int getMaxAvailableHeight(View view, int i, boolean z) {
        if (sGetMaxAvailableHeightMethod != null) {
            try {
                return ((Integer) sGetMaxAvailableHeightMethod.invoke(this.mPopup, view, Integer.valueOf(i), Boolean.valueOf(z))).intValue();
            } catch (Exception e2) {
                Log.i(TAG, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
            }
        }
        return this.mPopup.getMaxAvailableHeight(view, i);
    }
}
