package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.behance.sdk.R;
import com.behance.sdk.enums.BehanceSDKCopyrightOption;
import com.behance.sdk.google.listview.SectionalBaseAdapter;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKCopyrightSettingsAdapter extends SectionalBaseAdapter {
    Map<String, List<BehanceSDKCopyrightOption>> all;
    private final Context context;
    private int pinnedHeaderViewLeftPadding;
    private BehanceSDKCopyrightOption selectedCopyRight;

    public BehanceSDKCopyrightSettingsAdapter(Context context, BehanceSDKCopyrightOption behanceSDKCopyrightOption) {
        this.selectedCopyRight = BehanceSDKCopyrightOption.getDefaultValue();
        this.context = context;
        this.selectedCopyRight = behanceSDKCopyrightOption;
        initializeHeaderViewPadding();
        this.all = BehanceSDKCopyrightOption.getAllCopyrightOptions(context);
    }

    private void initializeHeaderViewPadding() {
        this.pinnedHeaderViewLeftPadding = this.context.getResources().getDimensionPixelSize(R.dimen.bsdk_search_filter_creative_field_left_padding);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        int size = 0;
        Iterator<String> it = this.all.keySet().iterator();
        while (true) {
            int i = size;
            if (it.hasNext()) {
                size = this.all.get(it.next()).size() + i;
            } else {
                return i;
            }
        }
    }

    @Override // android.widget.Adapter
    public BehanceSDKCopyrightOption getItem(int i) {
        int size = 0;
        Iterator<String> it = this.all.keySet().iterator();
        while (true) {
            int i2 = size;
            if (it.hasNext()) {
                List<BehanceSDKCopyrightOption> list = this.all.get(it.next());
                if (i >= i2 && i < list.size() + i2) {
                    return list.get(i - i2);
                }
                size = list.size() + i2;
            } else {
                return null;
            }
        }
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // com.behance.sdk.google.listview.SectionalBaseAdapter
    protected void onNextPageRequested(int i) {
    }

    @Override // com.behance.sdk.google.listview.SectionalBaseAdapter
    protected void bindSectionHeader(View view, int i, boolean z) {
        View viewFindViewById = view.findViewById(R.id.bsdkCopyrightSettingsGroupHeader);
        View viewFindViewById2 = view.findViewById(R.id.bsdkCopyrightSettingsGroupItemDivider);
        if (z) {
            viewFindViewById.setVisibility(0);
            viewFindViewById2.setVisibility(4);
            ((TextView) viewFindViewById).setText(getSections()[getSectionForPosition(i)]);
        } else {
            viewFindViewById2.setVisibility(0);
            viewFindViewById.setVisibility(8);
        }
    }

    @Override // com.behance.sdk.google.listview.SectionalBaseAdapter
    public View getAmazingView(int i, View view, ViewGroup viewGroup) {
        LayoutInflater layoutInflater = (LayoutInflater) this.context.getSystemService("layout_inflater");
        if (view == null) {
            view = layoutInflater.inflate(R.layout.bsdk_adapter_publish_project_copyright_settings_item, viewGroup, false);
        }
        TextView textView = (TextView) view.findViewById(R.id.bsdkCopyrightSettingsDialogItemTxtView);
        ImageView imageView = (ImageView) view.findViewById(R.id.bsdkCopyrightSettingsDialogItemSelectedIdicatorImageView);
        BehanceSDKCopyrightOption item = getItem(i);
        textView.setText(item.getDescription(this.context));
        if (this.selectedCopyRight.equals(item)) {
            setSelected(textView, imageView);
        } else {
            setUnselected(textView, imageView);
        }
        return view;
    }

    private void setUnselected(TextView textView, ImageView imageView) {
        textView.setTextColor(this.context.getResources().getColor(R.color.bsdk_search_filter_creative_fields_dialog_text_color));
        imageView.setVisibility(8);
    }

    private void setSelected(TextView textView, ImageView imageView) {
        imageView.setVisibility(0);
        textView.setTextColor(this.context.getResources().getColor(R.color.bsdk_search_filter_creative_fields_dialog_selected_text_color));
    }

    @Override // com.behance.sdk.google.listview.SectionalBaseAdapter
    public void configurePinnedHeader(View view, int i, int i2) {
        TextView textView = (TextView) view;
        textView.setText(getSections()[getSectionForPosition(i)]);
        textView.setPadding(this.pinnedHeaderViewLeftPadding, textView.getPaddingTop(), textView.getPaddingRight(), textView.getPaddingBottom());
    }

    @Override // com.behance.sdk.google.listview.SectionalBaseAdapter, android.widget.SectionIndexer
    public int getPositionForSection(int i) {
        if (i < 0) {
            i = 0;
        }
        Set<String> setKeySet = this.all.keySet();
        if (i >= setKeySet.size()) {
            i = setKeySet.size() - 1;
        }
        Iterator<String> it = setKeySet.iterator();
        int size = 0;
        for (int i2 = 0; i2 < setKeySet.size(); i2++) {
            if (i != i2) {
                size += this.all.get(it.next()).size();
            } else {
                return size;
            }
        }
        return 0;
    }

    @Override // com.behance.sdk.google.listview.SectionalBaseAdapter, android.widget.SectionIndexer
    public int getSectionForPosition(int i) {
        Set<String> setKeySet = this.all.keySet();
        Iterator<String> it = setKeySet.iterator();
        int size = 0;
        for (int i2 = 0; i2 < setKeySet.size(); i2++) {
            List<BehanceSDKCopyrightOption> list = this.all.get(it.next());
            if (i < size || i >= list.size() + size) {
                size += list.size();
            } else {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.behance.sdk.google.listview.SectionalBaseAdapter, android.widget.SectionIndexer
    public String[] getSections() {
        Set<String> setKeySet = this.all.keySet();
        return (String[]) setKeySet.toArray(new String[setKeySet.size()]);
    }

    public void setSelectedCopyRight(BehanceSDKCopyrightOption behanceSDKCopyrightOption) {
        this.selectedCopyRight = behanceSDKCopyrightOption;
    }
}
