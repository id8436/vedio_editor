package com.adobe.premiereclip.editor;

import android.app.Activity;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.support.design.widget.TabLayout;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.util.Utilities;
import com.h.a.d;

/* JADX INFO: loaded from: classes2.dex */
public class ClipOptionsView {
    private static final int DISABLED_COLOR = 2131820825;
    private static final int ENABLED_COLOR = 2131820824;
    private static final int HIGHLIGHT_COLOR = 2131820823;
    private Activity activity;
    private View audioOptionsView;
    private boolean clipAvailable;
    private ClipOptionListener clipOptionListener;
    private RelativeLayout clipOptionsLayout;
    private View clipOptionsTitle;
    private Clip.CLIP_TYPE clipType;
    private int currentClipOptionIndex;
    private LinearLayout dummyTabs;
    private LinearLayout editorTop;
    private View exposureOptionsView;
    private View moreOptionsView;
    private boolean open = false;
    private TextView splitMessage;
    private TabLayout tabLayout;
    private View textOptionsView;
    private ViewPager viewPager;
    private ViewPagerAdapter viewPagerAdapter;

    public interface ClipOptionListener {
        void onClipOptionsOpened();

        void onSelectAudioOption();

        void onSelectExposureOption();

        void onSelectMoreOption();

        void onSelectTextOption();
    }

    ClipOptionsView(Activity activity) {
        this.activity = activity;
        this.editorTop = (LinearLayout) activity.findViewById(R.id.editor_top);
        this.clipOptionsTitle = activity.findViewById(R.id.clip_options_title);
        this.clipOptionsTitle.setVisibility(4);
        this.tabLayout = (TabLayout) activity.findViewById(R.id.clip_options_tablayout);
        this.dummyTabs = (LinearLayout) activity.findViewById(R.id.dummy_clip_options_tabs);
        this.clipOptionsLayout = (RelativeLayout) activity.findViewById(R.id.clip_options_view);
        this.clipOptionsLayout.setVisibility(4);
        this.viewPager = (ViewPager) this.clipOptionsLayout.findViewById(R.id.clip_options_pager);
        this.viewPager.setOffscreenPageLimit(2);
        this.viewPagerAdapter = new ViewPagerAdapter();
        LayoutInflater layoutInflater = activity.getLayoutInflater();
        this.exposureOptionsView = layoutInflater.inflate(R.layout.view_clip_options_exposure, (ViewGroup) null);
        this.audioOptionsView = layoutInflater.inflate(R.layout.view_clip_options_audio, (ViewGroup) null);
        this.textOptionsView = layoutInflater.inflate(R.layout.view_clip_options_text, (ViewGroup) null);
        this.moreOptionsView = layoutInflater.inflate(R.layout.view_clip_options_more, (ViewGroup) null);
        d.a(this.exposureOptionsView);
        d.a(this.audioOptionsView);
        d.a(this.textOptionsView);
        d.a(this.moreOptionsView);
        ((Button) this.moreOptionsView.findViewById(R.id.duplicateButton)).setTransformationMethod(null);
        ((Button) this.moreOptionsView.findViewById(R.id.splitButton)).setTransformationMethod(null);
        ((Button) this.moreOptionsView.findViewById(R.id.storycardButton)).setTransformationMethod(null);
        this.splitMessage = (TextView) this.moreOptionsView.findViewById(R.id.splitMessage);
    }

    public void setClip(Clip.CLIP_TYPE clip_type, boolean z) {
        this.clipType = clip_type;
        this.clipAvailable = z;
        if (!this.open) {
            setDummyTabs(true);
            setTabLayout();
        }
    }

    public void setClipOptionListener(ClipOptionListener clipOptionListener) {
        this.clipOptionListener = clipOptionListener;
    }

    public View getExposureOptionsView() {
        return this.exposureOptionsView;
    }

    public View getAudioOptionsView() {
        return this.audioOptionsView;
    }

    public View getTextOptionsView() {
        return this.textOptionsView;
    }

    public View getMoreOptionsView() {
        return this.moreOptionsView;
    }

    private void setTabLayout() {
        this.viewPagerAdapter.setClipType(this.clipType);
        this.viewPager.setAdapter(this.viewPagerAdapter);
        this.tabLayout.setTabsFromPagerAdapter(this.viewPagerAdapter);
        this.tabLayout.setTabGravity(0);
        LayoutInflater layoutInflater = this.activity.getLayoutInflater();
        switch (this.clipType) {
            case VIDEO:
                Utilities.setTab(layoutInflater, this.tabLayout.getTabAt(0), R.drawable.btn_exposure_purple);
                Utilities.setTab(layoutInflater, this.tabLayout.getTabAt(1), R.drawable.btn_volume_purple);
                Utilities.setTab(layoutInflater, this.tabLayout.getTabAt(2), R.drawable.btn_adjust_purple);
                break;
            case IMAGE_NON_TITLE:
                Utilities.setTab(layoutInflater, this.tabLayout.getTabAt(0), R.drawable.btn_exposure_purple);
                Utilities.setTab(layoutInflater, this.tabLayout.getTabAt(1), R.drawable.btn_adjust_purple);
                break;
            case IMAGE_TITLE:
                Utilities.setTab(layoutInflater, this.tabLayout.getTabAt(0), R.drawable.btn_picker_title);
                Utilities.setTab(layoutInflater, this.tabLayout.getTabAt(1), R.drawable.btn_adjust_purple);
                break;
        }
        this.tabLayout.setOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: com.adobe.premiereclip.editor.ClipOptionsView.1
            @Override // android.support.design.widget.TabLayout.OnTabSelectedListener
            public void onTabSelected(TabLayout.Tab tab) {
                int position = tab.getPosition();
                Log.w("cov", "tab selected for pos = " + position);
                ClipOptionsView.this.viewPager.setCurrentItem(position);
                ClipOptionsView.this.selectClipOption(position);
            }

            @Override // android.support.design.widget.TabLayout.OnTabSelectedListener
            public void onTabUnselected(TabLayout.Tab tab) {
            }

            @Override // android.support.design.widget.TabLayout.OnTabSelectedListener
            public void onTabReselected(TabLayout.Tab tab) {
            }
        });
        this.viewPager.clearOnPageChangeListeners();
        this.viewPager.addOnPageChangeListener(new TabLayout.TabLayoutOnPageChangeListener(this.tabLayout));
    }

    public void selectDummyOption(int i) {
        if (this.clipAvailable) {
            this.viewPager.setCurrentItem(i, false);
            setDummyTabs(false);
            openView();
            this.open = true;
            if (this.clipOptionListener != null) {
                this.clipOptionListener.onClipOptionsOpened();
            }
            selectClipOption(i);
        }
    }

    public void reOpen() {
        selectDummyOption(this.currentClipOptionIndex);
    }

    public void selectClipOption(int i) {
        this.currentClipOptionIndex = i;
        switch (i) {
            case 0:
                if (this.clipType != Clip.CLIP_TYPE.IMAGE_TITLE) {
                    selectExposureOption();
                } else {
                    selectTextOption();
                }
                break;
            case 1:
                if (this.clipType == Clip.CLIP_TYPE.VIDEO) {
                    selectAudioOption();
                } else {
                    selectMoreOption();
                }
                break;
            case 2:
                selectMoreOption();
                break;
        }
    }

    public void closeClipOption() {
        this.open = false;
        setDummyTabs(true);
        closeView();
    }

    public void enableSplitView() {
        this.splitMessage.setText(this.activity.getText(R.string.split_enabled_message));
        ((Button) this.moreOptionsView.findViewById(R.id.splitButton)).setTextColor(-1);
    }

    public void disableSplitView() {
        this.splitMessage.setText(this.activity.getText(R.string.split_disabled_message));
        ((Button) this.moreOptionsView.findViewById(R.id.splitButton)).setTextColor(-7829368);
    }

    public void enableClipMoreOptions(boolean z) {
        if (z) {
            ((Button) this.moreOptionsView.findViewById(R.id.duplicateButton)).setTextColor(-1);
            ((Button) this.moreOptionsView.findViewById(R.id.splitButton)).setTextColor(-1);
        } else {
            ((Button) this.moreOptionsView.findViewById(R.id.duplicateButton)).setTextColor(-7829368);
            ((Button) this.moreOptionsView.findViewById(R.id.splitButton)).setTextColor(-7829368);
        }
    }

    public boolean isOpen() {
        return this.open;
    }

    private void setDummyTabs(boolean z) {
        if (z) {
            this.dummyTabs.setVisibility(0);
            this.tabLayout.setVisibility(4);
            switch (this.clipType) {
                case VIDEO:
                    this.dummyTabs.findViewById(R.id.exposureBtn).setVisibility(0);
                    this.dummyTabs.findViewById(R.id.audioBtn).setVisibility(0);
                    this.dummyTabs.findViewById(R.id.textBtn).setVisibility(8);
                    this.dummyTabs.findViewById(R.id.moreBtn).setVisibility(0);
                    break;
                case IMAGE_NON_TITLE:
                    this.dummyTabs.findViewById(R.id.exposureBtn).setVisibility(0);
                    this.dummyTabs.findViewById(R.id.audioBtn).setVisibility(8);
                    this.dummyTabs.findViewById(R.id.textBtn).setVisibility(8);
                    this.dummyTabs.findViewById(R.id.moreBtn).setVisibility(0);
                    break;
                case IMAGE_TITLE:
                    this.dummyTabs.findViewById(R.id.exposureBtn).setVisibility(8);
                    this.dummyTabs.findViewById(R.id.audioBtn).setVisibility(8);
                    this.dummyTabs.findViewById(R.id.textBtn).setVisibility(0);
                    this.dummyTabs.findViewById(R.id.moreBtn).setVisibility(0);
                    break;
                default:
                    this.dummyTabs.findViewById(R.id.exposureBtn).setVisibility(8);
                    this.dummyTabs.findViewById(R.id.audioBtn).setVisibility(8);
                    this.dummyTabs.findViewById(R.id.textBtn).setVisibility(8);
                    this.dummyTabs.findViewById(R.id.moreBtn).setVisibility(8);
                    break;
            }
            if (this.clipAvailable) {
                setColorFilter((ImageView) this.dummyTabs.findViewById(R.id.exposureBtnImg), R.color.clip_option_tint_color);
                setColorFilter((ImageView) this.dummyTabs.findViewById(R.id.audioBtnImg), R.color.clip_option_tint_color);
                setColorFilter((ImageView) this.dummyTabs.findViewById(R.id.textBtnImg), R.color.clip_option_tint_color);
                setColorFilter((ImageView) this.dummyTabs.findViewById(R.id.moreBtnImg), R.color.clip_option_tint_color);
            } else {
                setColorFilter((ImageView) this.dummyTabs.findViewById(R.id.exposureBtnImg), R.color.clip_options_disabled_color);
                setColorFilter((ImageView) this.dummyTabs.findViewById(R.id.audioBtnImg), R.color.clip_options_disabled_color);
                setColorFilter((ImageView) this.dummyTabs.findViewById(R.id.textBtnImg), R.color.clip_options_disabled_color);
                setColorFilter((ImageView) this.dummyTabs.findViewById(R.id.moreBtnImg), R.color.clip_options_disabled_color);
            }
        } else {
            this.tabLayout.setVisibility(0);
        }
        boolean z2 = z && this.clipAvailable;
        this.dummyTabs.findViewById(R.id.exposureBtn).setClickable(z2);
        this.dummyTabs.findViewById(R.id.audioBtn).setClickable(z2);
        this.dummyTabs.findViewById(R.id.textBtn).setClickable(z2);
        this.dummyTabs.findViewById(R.id.moreBtn).setClickable(z2);
    }

    private void openView() {
        this.editorTop.setVisibility(4);
        this.clipOptionsTitle.setVisibility(0);
        this.clipOptionsLayout.setVisibility(0);
    }

    private void closeView() {
        this.editorTop.setVisibility(0);
        this.clipOptionsTitle.setVisibility(4);
        this.clipOptionsLayout.setVisibility(4);
    }

    private void selectExposureOption() {
        if (this.clipOptionListener != null) {
            this.clipOptionListener.onSelectExposureOption();
        }
    }

    private void selectAudioOption() {
        if (this.clipOptionListener != null) {
            this.clipOptionListener.onSelectAudioOption();
        }
    }

    private void selectTextOption() {
        if (this.clipOptionListener != null) {
            this.clipOptionListener.onSelectTextOption();
        }
    }

    private void selectMoreOption() {
        if (this.clipType != Clip.CLIP_TYPE.VIDEO) {
            this.moreOptionsView.findViewById(R.id.speed_section).setVisibility(8);
            this.moreOptionsView.findViewById(R.id.more_seperator1).setVisibility(8);
            this.moreOptionsView.findViewById(R.id.storycardButton).setVisibility(0);
            this.moreOptionsView.findViewById(R.id.storycardMessage).setVisibility(0);
            this.moreOptionsView.findViewById(R.id.more_seperator3).setVisibility(0);
        } else {
            this.moreOptionsView.findViewById(R.id.speed_section).setVisibility(0);
            this.moreOptionsView.findViewById(R.id.more_seperator1).setVisibility(0);
            this.moreOptionsView.findViewById(R.id.storycardButton).setVisibility(8);
            this.moreOptionsView.findViewById(R.id.storycardMessage).setVisibility(8);
            this.moreOptionsView.findViewById(R.id.more_seperator3).setVisibility(8);
        }
        if (this.clipOptionListener != null) {
            this.clipOptionListener.onSelectMoreOption();
        }
    }

    private void setColorFilter(ImageView imageView, int i) {
        imageView.setColorFilter(new PorterDuffColorFilter(this.activity.getResources().getColor(i), PorterDuff.Mode.SRC_IN));
    }

    class ViewPagerAdapter extends PagerAdapter {
        private Clip.CLIP_TYPE clipType;

        ViewPagerAdapter() {
        }

        public void setClipType(Clip.CLIP_TYPE clip_type) {
            this.clipType = clip_type;
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getCount() {
            switch (this.clipType) {
                case VIDEO:
                    return 3;
                case IMAGE_NON_TITLE:
                case IMAGE_TITLE:
                    return 2;
                default:
                    return 0;
            }
        }

        @Override // android.support.v4.view.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }

        @Override // android.support.v4.view.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            View view = null;
            switch (this.clipType) {
                case VIDEO:
                    switch (i) {
                        case 0:
                            view = ClipOptionsView.this.exposureOptionsView;
                            break;
                        case 1:
                            view = ClipOptionsView.this.audioOptionsView;
                            break;
                        case 2:
                            view = ClipOptionsView.this.moreOptionsView;
                            break;
                    }
                    break;
                case IMAGE_NON_TITLE:
                    switch (i) {
                        case 0:
                            view = ClipOptionsView.this.exposureOptionsView;
                            break;
                        case 1:
                            view = ClipOptionsView.this.moreOptionsView;
                            break;
                    }
                    break;
                case IMAGE_TITLE:
                    switch (i) {
                        case 0:
                            view = ClipOptionsView.this.textOptionsView;
                            break;
                        case 1:
                            view = ClipOptionsView.this.moreOptionsView;
                            break;
                    }
                    break;
            }
            if (view != null) {
                viewGroup.addView(view);
            }
            return view;
        }

        @Override // android.support.v4.view.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            Log.d("COV", "destroyItem pos = " + i);
            viewGroup.removeView((View) obj);
        }
    }
}
