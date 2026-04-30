package com.learnncode.mediachooser.fragment;

import android.view.View;
import android.widget.AdapterView;
import android.widget.Toast;
import com.learnncode.mediachooser.l;
import java.io.File;

/* JADX INFO: compiled from: ImageFragment.java */
/* JADX INFO: loaded from: classes3.dex */
class e implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ImageFragment f3755a;

    e(ImageFragment imageFragment) {
        this.f3755a = imageFragment;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        com.learnncode.mediachooser.a.b bVar = (com.learnncode.mediachooser.a.b) adapterView.getAdapter();
        com.learnncode.mediachooser.e item = bVar.getItem(i);
        if (!item.f3722b) {
            if (com.learnncode.mediachooser.d.a(new File(item.f3721a.toString()), false) != 0) {
                Toast.makeText(this.f3755a.getActivity(), this.f3755a.getActivity().getResources().getString(l.file_size_exeeded) + "  " + com.learnncode.mediachooser.d.f3720g + " " + this.f3755a.getActivity().getResources().getString(l.mb), 0).show();
                return;
            } else if (com.learnncode.mediachooser.d.f3715b == com.learnncode.mediachooser.d.f3716c) {
                if (com.learnncode.mediachooser.d.f3716c < 2) {
                    Toast.makeText(this.f3755a.getActivity(), this.f3755a.getActivity().getResources().getString(l.max_limit_file) + "  " + com.learnncode.mediachooser.d.f3716c + " " + this.f3755a.getActivity().getResources().getString(l.file), 0).show();
                    return;
                } else {
                    Toast.makeText(this.f3755a.getActivity(), this.f3755a.getActivity().getResources().getString(l.max_limit_file) + "  " + com.learnncode.mediachooser.d.f3716c + " " + this.f3755a.getActivity().getResources().getString(l.files), 0).show();
                    return;
                }
            }
        }
        item.f3722b = !item.f3722b;
        bVar.notifyDataSetChanged();
        if (item.f3722b) {
            view.setBackground(this.f3755a.getResources().getDrawable(com.learnncode.mediachooser.i.selection_media_border));
            this.f3755a.f3725a.add(item.f3721a);
            com.learnncode.mediachooser.d.f3716c++;
        } else {
            view.setBackgroundResource(0);
            this.f3755a.f3725a.remove(item.f3721a);
            com.learnncode.mediachooser.d.f3716c--;
        }
        if (this.f3755a.f3729e != null) {
            this.f3755a.f3729e.a(this.f3755a.f3725a.size());
        }
    }
}
