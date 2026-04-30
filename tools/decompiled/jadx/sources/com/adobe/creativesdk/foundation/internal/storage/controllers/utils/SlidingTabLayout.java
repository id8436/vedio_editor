package com.adobe.creativesdk.foundation.internal.storage.controllers.utils;

import android.R;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes2.dex */
public class SlidingTabLayout extends HorizontalScrollView {
    private static final int TAB_VIEW_PADDING_DIPS = 16;
    private static final int TAB_VIEW_TEXT_SIZE_SP = 12;
    private static final int TITLE_OFFSET_DIPS = 24;
    private SparseArray<String> mContentDescriptions;
    private boolean mDistributeEvenly;
    private final SlidingTabStrip mTabStrip;
    private int mTabViewLayoutId;
    private int mTabViewTextViewId;
    private int mTitleOffset;
    private ViewPager mViewPager;
    private ViewPager.OnPageChangeListener mViewPagerPageChangeListener;

    public interface TabColorizer {
        int getIndicatorColor(int i);
    }

    public SlidingTabLayout(Context context) {
        this(context, null);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mContentDescriptions = new SparseArray<>();
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        this.mTitleOffset = (int) (24.0f * getResources().getDisplayMetrics().density);
        this.mTabStrip = new SlidingTabStrip(context);
        addView(this.mTabStrip, -1, -2);
    }

    public void setCustomTabColorizer(TabColorizer tabColorizer) {
        this.mTabStrip.setCustomTabColorizer(tabColorizer);
    }

    public void setDistributeEvenly(boolean z) {
        this.mDistributeEvenly = z;
    }

    public void setSelectedIndicatorColors(int... iArr) {
        this.mTabStrip.setSelectedIndicatorColors(iArr);
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.mViewPagerPageChangeListener = onPageChangeListener;
    }

    public void setCustomTabView(int i, int i2) {
        this.mTabViewLayoutId = i;
        this.mTabViewTextViewId = i2;
        this.mTabStrip.setCustomLayoutIds(i, i2);
    }

    public void setViewPager(ViewPager viewPager) {
        this.mTabStrip.removeAllViews();
        this.mViewPager = viewPager;
        if (viewPager != null) {
            viewPager.setOnPageChangeListener(new InternalViewPagerListener());
            populateTabStrip();
        }
    }

    protected TextView createDefaultTabView(Context context) {
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setTextSize(2, 12.0f);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(R.attr.selectableItemBackground, typedValue, true);
        textView.setBackgroundResource(typedValue.resourceId);
        textView.setAllCaps(true);
        int i = (int) (16.0f * getResources().getDisplayMetrics().density);
        textView.setPadding(i, i, i, i);
        return textView;
    }

    private void populateTabStrip() {
        TextView textView;
        View viewCreateDefaultTabView;
        PagerAdapter adapter = this.mViewPager.getAdapter();
        TabClickListener tabClickListener = new TabClickListener();
        int length = 0;
        for (int i = 0; i < adapter.getCount(); i++) {
            length += adapter.getPageTitle(i).length();
        }
        int count = length / adapter.getCount();
        for (int i2 = 0; i2 < adapter.getCount(); i2++) {
            if (this.mTabViewLayoutId != 0) {
                viewCreateDefaultTabView = LayoutInflater.from(getContext()).inflate(this.mTabViewLayoutId, (ViewGroup) this.mTabStrip, false);
                textView = (TextView) viewCreateDefaultTabView.findViewById(this.mTabViewTextViewId);
            } else {
                textView = null;
                viewCreateDefaultTabView = null;
            }
            if (viewCreateDefaultTabView == null) {
                viewCreateDefaultTabView = createDefaultTabView(getContext());
            }
            TextView textView2 = (textView == null && TextView.class.isInstance(viewCreateDefaultTabView)) ? (TextView) viewCreateDefaultTabView : textView;
            if (textView2 != null) {
                textView2.setText(adapter.getPageTitle(i2));
                textView2.setTextColor(Color.parseColor("#a3aeb7"));
                viewCreateDefaultTabView.setOnClickListener(tabClickListener);
                String str = this.mContentDescriptions.get(i2, null);
                if (str != null) {
                    viewCreateDefaultTabView.setContentDescription(str);
                }
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewCreateDefaultTabView.getLayoutParams();
                if (this.mDistributeEvenly || adapter.getPageTitle(i2).length() < count) {
                    layoutParams.width = 0;
                    layoutParams.weight = 1.0f;
                } else {
                    layoutParams.width = 0;
                    layoutParams.weight = 2.0f;
                }
                this.mTabStrip.addView(viewCreateDefaultTabView);
                if (i2 == this.mViewPager.getCurrentItem()) {
                    textView2.setTextColor(Color.parseColor("#2098f5"));
                    viewCreateDefaultTabView.setSelected(true);
                }
            }
        }
    }

    public void setContentDescription(int i, String str) {
        this.mContentDescriptions.put(i, str);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mViewPager != null) {
            scrollToTab(this.mViewPager.getCurrentItem(), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToTab(int i, int i2) {
        View childAt;
        int childCount = this.mTabStrip.getChildCount();
        if (childCount != 0 && i >= 0 && i < childCount && (childAt = this.mTabStrip.getChildAt(i)) != null) {
            int left = childAt.getLeft() + i2;
            if (i > 0 || i2 > 0) {
                left -= this.mTitleOffset;
            }
            scrollTo(left, 0);
        }
    }

    class InternalViewPagerListener implements ViewPager.OnPageChangeListener {
        private int mScrollState;

        private InternalViewPagerListener() {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f2, int i2) {
            int childCount = SlidingTabLayout.this.mTabStrip.getChildCount();
            if (childCount != 0 && i >= 0 && i < childCount) {
                SlidingTabLayout.this.mTabStrip.onViewPagerPageChanged(i, f2);
                SlidingTabLayout.this.scrollToTab(i, SlidingTabLayout.this.mTabStrip.getChildAt(i) != null ? (int) (r0.getWidth() * f2) : 0);
                if (SlidingTabLayout.this.mViewPagerPageChangeListener != null) {
                    SlidingTabLayout.this.mViewPagerPageChangeListener.onPageScrolled(i, f2, i2);
                }
            }
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            this.mScrollState = i;
            if (SlidingTabLayout.this.mViewPagerPageChangeListener != null) {
                SlidingTabLayout.this.mViewPagerPageChangeListener.onPageScrollStateChanged(i);
            }
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            if (this.mScrollState == 0) {
                SlidingTabLayout.this.mTabStrip.onViewPagerPageChanged(i, 0.0f);
                SlidingTabLayout.this.scrollToTab(i, 0);
            }
            int i2 = 0;
            while (i2 < SlidingTabLayout.this.mTabStrip.getChildCount()) {
                SlidingTabLayout.this.mTabStrip.getChildAt(i2).setSelected(i == i2);
                i2++;
            }
            if (SlidingTabLayout.this.mViewPagerPageChangeListener != null) {
                SlidingTabLayout.this.mViewPagerPageChangeListener.onPageSelected(i);
            }
        }
    }

    class TabClickListener implements View.OnClickListener {
        private TabClickListener() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            for (int i = 0; i < SlidingTabLayout.this.mTabStrip.getChildCount(); i++) {
                if (view == SlidingTabLayout.this.mTabStrip.getChildAt(i)) {
                    SlidingTabLayout.this.mViewPager.setCurrentItem(i);
                    return;
                }
            }
        }
    }
}
