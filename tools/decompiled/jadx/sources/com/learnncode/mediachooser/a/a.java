package com.learnncode.mediachooser.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.learnncode.mediachooser.b.m;
import com.learnncode.mediachooser.fragment.c;
import com.learnncode.mediachooser.i;
import com.learnncode.mediachooser.j;
import com.learnncode.mediachooser.k;
import java.util.ArrayList;

/* JADX INFO: compiled from: BucketGridAdapter.java */
/* JADX INFO: loaded from: classes3.dex */
public class a extends ArrayAdapter<com.learnncode.mediachooser.a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f3637a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    LayoutInflater f3638b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f3639c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<com.learnncode.mediachooser.a> f3640d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3641e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3642f;

    public a(Context context, int i, ArrayList<com.learnncode.mediachooser.a> arrayList, boolean z) {
        super(context, i, arrayList);
        this.f3640d = arrayList;
        this.f3639c = context;
        this.f3641e = z;
        this.f3638b = LayoutInflater.from(this.f3639c);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public int getCount() {
        return this.f3640d.size();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.learnncode.mediachooser.a getItem(int i) {
        return this.f3640d.get(i);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        com.learnncode.mediachooser.c.b bVar;
        if (view == null) {
            this.f3642f = this.f3639c.getResources().getDisplayMetrics().widthPixels;
            view = this.f3638b.inflate(k.view_grid_bucket_item_media_chooser, viewGroup, false);
            bVar = new com.learnncode.mediachooser.c.b();
            bVar.a((ImageView) view.findViewById(j.imageViewFromMediaChooserBucketRowView));
            bVar.a((TextView) view.findViewById(j.nameTextViewFromMediaChooserBucketRowView));
            view.setTag(bVar);
        } else {
            bVar = (com.learnncode.mediachooser.c.b) view.getTag();
        }
        if (this.f3641e) {
            bVar.b().setImageResource(i.ic_loading);
        }
        bVar.a(this.f3640d.get(i).f3636c.toString());
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) bVar.b().getLayoutParams();
        layoutParams.width = (this.f3642f - 30) / 2;
        layoutParams.height = layoutParams.width - 80;
        bVar.b().setLayoutParams(layoutParams);
        if (this.f3641e) {
            m.a(layoutParams.width, layoutParams.height, this.f3640d.get(i).f3636c.toString(), bVar);
        } else {
            new com.learnncode.mediachooser.b.a(this.f3639c, bVar.b(), this.f3642f / 2).a(com.learnncode.mediachooser.b.b.f3681a, this.f3640d.get(i).f3636c);
        }
        bVar.c().setText(this.f3640d.get(i).f3634a);
        return view;
    }
}
