package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.behance.sdk.R;
import com.behance.sdk.dto.search.BehanceSDKUserDTO;
import com.behance.sdk.util.BehanceSDKImageLoaderUtils;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectOwnersListArrayAdapter extends ArrayAdapter<BehanceSDKUserDTO> {
    private Context context;
    private LayoutInflater inflater;
    private int layoutResId;
    private List<BehanceSDKUserDTO> users;

    public BehanceSDKProjectOwnersListArrayAdapter(Context context, int i, List<BehanceSDKUserDTO> list) {
        super(context, i, list);
        this.context = context;
        this.layoutResId = i;
        this.users = list;
        this.inflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.inflater.inflate(this.layoutResId, viewGroup, false);
        }
        ImageView imageView = (ImageView) view.findViewById(R.id.bsdk_projectDetailsOwnersListItemAvatar);
        TextView textView = (TextView) view.findViewById(R.id.bsdk_projectDetailsOwnersListItemName);
        imageView.setImageDrawable(null);
        BehanceSDKUserDTO behanceSDKUserDTO = this.users.get(i);
        BehanceSDKImageLoaderUtils.displayImageFromCacheOrLoadFromServer(behanceSDKUserDTO.findProfileImageInIncreasingSizeOrder(ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION).getUrl(), imageView);
        textView.setText(behanceSDKUserDTO.getDisplayName());
        return view;
    }
}
