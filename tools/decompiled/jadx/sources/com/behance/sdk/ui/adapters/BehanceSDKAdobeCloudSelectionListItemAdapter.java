package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.behance.sdk.R;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKAdobeCloudSelectionListItemAdapter extends BaseAdapter {
    private List<AdobeCloud> cloudsList;
    private LayoutInflater inflater;
    private AdobeCloud selectedCloud;

    public BehanceSDKAdobeCloudSelectionListItemAdapter(Context context, List<AdobeCloud> list, AdobeCloud adobeCloud) {
        this.cloudsList = list;
        setSelectedCloud(adobeCloud);
        this.inflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.cloudsList != null) {
            return this.cloudsList.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public AdobeCloud getItem(int i) {
        if (this.cloudsList != null) {
            return this.cloudsList.get(i);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.inflater.inflate(R.layout.bsdk_adapter_adobe_cloud_selection_list_item, viewGroup, false);
        }
        AdobeCloud item = getItem(i);
        if (item != null) {
            TextView textView = (TextView) view.findViewById(R.id.bsdkCloudSelectionItemAdapterCloudNameTextView);
            View viewFindViewById = view.findViewById(R.id.bsdkCloudSelectionItemAdapterSelectedIndicator);
            textView.setText(item.getName());
            AdobeCloud selectedCloud = getSelectedCloud();
            if (selectedCloud != null && selectedCloud.getName() != null && selectedCloud.getName().equals(item.getName())) {
                viewFindViewById.setVisibility(0);
            } else {
                viewFindViewById.setVisibility(4);
            }
        }
        return view;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public AdobeCloud getSelectedCloud() {
        return this.selectedCloud;
    }

    public void setSelectedCloud(AdobeCloud adobeCloud) {
        this.selectedCloud = adobeCloud;
    }
}
