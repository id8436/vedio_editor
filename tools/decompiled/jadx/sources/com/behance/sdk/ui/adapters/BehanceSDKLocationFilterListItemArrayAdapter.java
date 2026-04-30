package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.behance.sdk.R;
import com.behance.sdk.dto.location.BehanceSDKLocationDTO;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKLocationFilterListItemArrayAdapter<T> extends ArrayAdapter<T> {
    private final Context context;
    private final List<T> data;
    private BehanceSDKLocationDTO selectedLocationDTO;

    public BehanceSDKLocationFilterListItemArrayAdapter(Context context, BehanceSDKLocationDTO behanceSDKLocationDTO, List<T> list) {
        super(context, R.layout.bsdk_dialog_fragment_location_filter_item_adapter, list);
        this.context = context;
        setSelectedLocationDTO(behanceSDKLocationDTO);
        this.data = list;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View viewInflate = ((LayoutInflater) this.context.getSystemService("layout_inflater")).inflate(R.layout.bsdk_dialog_fragment_location_filter_item_adapter, viewGroup, false);
        TextView textView = (TextView) viewInflate.findViewById(R.id.bsdkLocationFilterDialogLocationItemTxtView);
        View viewFindViewById = viewInflate.findViewById(R.id.bsdkLocationFilterDialogLocationItemSelectedIdicatorImageView);
        T t = this.data.get(i);
        if (t instanceof BehanceSDKLocationDTO) {
            BehanceSDKLocationDTO behanceSDKLocationDTO = (BehanceSDKLocationDTO) t;
            textView.setText(behanceSDKLocationDTO.getDisplayName());
            if (getSelectedLocationDTO() != null && getSelectedLocationDTO().getDisplayName().equals(behanceSDKLocationDTO.getDisplayName())) {
                textView.setTextColor(this.context.getResources().getColor(R.color.bsdk_adobe_blue));
                viewFindViewById.setVisibility(0);
            } else {
                textView.setTextColor(this.context.getResources().getColor(R.color.bsdk_location_filter_dialog_location_item_txt_color));
                viewFindViewById.setVisibility(4);
            }
        }
        return viewInflate;
    }

    public BehanceSDKLocationDTO getSelectedLocationDTO() {
        return this.selectedLocationDTO;
    }

    public void setSelectedLocationDTO(BehanceSDKLocationDTO behanceSDKLocationDTO) {
        this.selectedLocationDTO = behanceSDKLocationDTO;
    }
}
