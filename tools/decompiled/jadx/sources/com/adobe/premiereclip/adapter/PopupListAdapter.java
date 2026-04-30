package com.adobe.premiereclip.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.adobe.premiereclip.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class PopupListAdapter extends BaseAdapter {
    private final Context context;
    private final ArrayList<Integer> drawableIdList;

    public PopupListAdapter(Context context, ArrayList<Integer> arrayList) {
        this.context = context;
        this.drawableIdList = arrayList;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.drawableIdList.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(this.context).inflate(R.layout.view_popup_item, viewGroup, false);
        }
        ((ImageView) view.findViewById(R.id.popup_item)).setImageResource(this.drawableIdList.get(i).intValue());
        return view;
    }
}
