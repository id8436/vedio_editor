package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.behance.sdk.R;
import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import com.behance.sdk.enums.BehanceSDKCreativeFieldCategory;
import com.behance.sdk.google.listview.SectionalBaseAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKCreativeFieldFilterAdapter extends SectionalBaseAdapter {
    Map<String, List<BehanceSDKCreativeFieldDTO>> all;
    private final Context context;
    private int pinnedHeaderViewLeftPadding;
    private List<BehanceSDKCreativeFieldDTO> selectedField;

    public BehanceSDKCreativeFieldFilterAdapter(Context context, List<BehanceSDKCreativeFieldDTO> list, List<BehanceSDKCreativeFieldDTO> list2) {
        this.context = context;
        this.selectedField = list2;
        initializeHeaderViewPadding();
        initalizeData(list, list2);
    }

    private void initializeHeaderViewPadding() {
        this.pinnedHeaderViewLeftPadding = this.context.getResources().getDimensionPixelSize(R.dimen.bsdk_search_filter_creative_field_left_padding);
    }

    private void initalizeData(List<BehanceSDKCreativeFieldDTO> list, List<BehanceSDKCreativeFieldDTO> list2) {
        this.all = new LinkedHashMap();
        this.all.put(BehanceSDKCreativeFieldCategory.POPULAR.getString(this.context), new ArrayList());
        for (BehanceSDKCreativeFieldDTO behanceSDKCreativeFieldDTO : list) {
            String startingAlphabet = getStartingAlphabet(behanceSDKCreativeFieldDTO.getName());
            List<BehanceSDKCreativeFieldDTO> arrayList = this.all.get(startingAlphabet);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.all.put(startingAlphabet, arrayList);
            }
            arrayList.add(behanceSDKCreativeFieldDTO);
            BehanceSDKCreativeFieldCategory category = behanceSDKCreativeFieldDTO.getCategory();
            if (category != BehanceSDKCreativeFieldCategory.NONE) {
                String string = category.getString(this.context);
                List<BehanceSDKCreativeFieldDTO> arrayList2 = this.all.get(string);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>();
                    this.all.put(string, arrayList2);
                }
                arrayList2.add(behanceSDKCreativeFieldDTO);
            }
        }
    }

    private String getStartingAlphabet(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return String.valueOf(str.charAt(0));
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
    public BehanceSDKCreativeFieldDTO getItem(int i) {
        int size = 0;
        Iterator<String> it = this.all.keySet().iterator();
        while (true) {
            int i2 = size;
            if (it.hasNext()) {
                List<BehanceSDKCreativeFieldDTO> list = this.all.get(it.next());
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
        View viewFindViewById = view.findViewById(R.id.bsdkCreativeFieldGroupHeader);
        if (z) {
            viewFindViewById.setVisibility(0);
            ((TextView) viewFindViewById).setText(getSections()[getSectionForPosition(i)]);
        } else {
            viewFindViewById.setVisibility(8);
        }
    }

    @Override // com.behance.sdk.google.listview.SectionalBaseAdapter
    public View getAmazingView(int i, View view, ViewGroup viewGroup) {
        LayoutInflater layoutInflater = (LayoutInflater) this.context.getSystemService("layout_inflater");
        if (view == null) {
            view = layoutInflater.inflate(R.layout.bsdk_adapter_publish_project_creative_field_item, viewGroup, false);
        }
        TextView textView = (TextView) view.findViewById(R.id.bsdkCreativeFieldFilterDialogItemTxtView);
        ImageView imageView = (ImageView) view.findViewById(R.id.bsdkCreativeFieldFilterDialogItemSelectedIdicatorImageView);
        BehanceSDKCreativeFieldDTO item = getItem(i);
        textView.setText(item.getName());
        String id = item.getId();
        if (this.selectedField.contains(item)) {
            setSelected(textView, imageView);
        } else {
            setUnselected(textView, imageView);
        }
        if (id.equals(BehanceSDKCreativeFieldDTO.ALL_CREATIVE_FIELDS_ID) && this.selectedField.isEmpty()) {
            setSelected(textView, imageView);
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
            List<BehanceSDKCreativeFieldDTO> list = this.all.get(it.next());
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
}
