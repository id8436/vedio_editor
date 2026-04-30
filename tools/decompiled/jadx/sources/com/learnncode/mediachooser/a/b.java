package com.learnncode.mediachooser.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckedTextView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.learnncode.mediachooser.b.m;
import com.learnncode.mediachooser.c.c;
import com.learnncode.mediachooser.e;
import com.learnncode.mediachooser.fragment.VideoFragment;
import com.learnncode.mediachooser.h;
import com.learnncode.mediachooser.i;
import com.learnncode.mediachooser.j;
import com.learnncode.mediachooser.k;
import java.util.List;

/* JADX INFO: compiled from: GridViewAdapter.java */
/* JADX INFO: loaded from: classes3.dex */
public class b extends ArrayAdapter<e> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public VideoFragment f3643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    LayoutInflater f3644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f3645c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<e> f3646d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3647e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f3648f;

    public b(Context context, int i, List<e> list, boolean z) {
        super(context, i, list);
        this.f3646d = list;
        this.f3645c = context;
        this.f3648f = z;
        this.f3644b = LayoutInflater.from(this.f3645c);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public int getCount() {
        return this.f3646d.size();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public e getItem(int i) {
        return this.f3646d.get(i);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        c cVar;
        if (view == null) {
            this.f3647e = this.f3645c.getResources().getDisplayMetrics().widthPixels;
            View viewInflate = this.f3644b.inflate(k.view_grid_item_media_chooser, viewGroup, false);
            c cVar2 = new c();
            cVar2.a((CheckedTextView) viewInflate.findViewById(j.checkTextViewFromMediaChooserGridItemRowView));
            cVar2.a((ImageView) viewInflate.findViewById(j.imageViewFromMediaChooserGridItemRowView));
            if (this.f3648f) {
                TextView textView = new TextView(getContext());
                textView.setText(this.f3646d.get(i).f3724d);
                textView.setTextColor(getContext().getResources().getColor(h.layout_unselected));
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams.setMargins(5, 5, 5, 5);
                layoutParams.addRule(8, cVar2.b().getId());
                layoutParams.addRule(7, cVar2.b().getId());
                textView.bringToFront();
                ((RelativeLayout) viewInflate).addView(textView, layoutParams);
                cVar2.a(textView);
            }
            viewInflate.setTag(cVar2);
            view = viewInflate;
            cVar = cVar2;
        } else {
            cVar = (c) view.getTag();
        }
        if (this.f3648f) {
            cVar.b().setImageResource(i.ic_loading);
        }
        cVar.a(this.f3646d.get(i).f3721a.toString());
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) cVar.b().getLayoutParams();
        layoutParams2.width = (this.f3647e - 40) / 3;
        layoutParams2.height = layoutParams2.width;
        cVar.b().setLayoutParams(layoutParams2);
        if (this.f3648f) {
            m.a(layoutParams2.width, layoutParams2.height, this.f3646d.get(i).f3721a.toString(), cVar);
        } else {
            new com.learnncode.mediachooser.b.a(this.f3645c, cVar.b(), this.f3647e / 2).a(com.learnncode.mediachooser.b.b.f3681a, this.f3646d.get(i).f3721a);
        }
        cVar.c().setChecked(this.f3646d.get(i).f3722b);
        if (this.f3646d.get(i).f3722b) {
            view.setBackgroundResource(i.selection_media_border);
        } else {
            view.setBackgroundResource(0);
        }
        if (this.f3648f) {
            cVar.d().setText(this.f3646d.get(i).f3724d);
        }
        return view;
    }
}
