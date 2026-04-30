package com.learnncode.mediachooser.fragment;

import android.view.View;
import android.widget.AdapterView;
import android.widget.Toast;
import com.learnncode.mediachooser.l;
import java.io.File;

/* JADX INFO: compiled from: VideoFragment.java */
/* JADX INFO: loaded from: classes3.dex */
class h implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ VideoFragment f3757a;

    h(VideoFragment videoFragment) {
        this.f3757a = videoFragment;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        com.learnncode.mediachooser.a.b bVar = (com.learnncode.mediachooser.a.b) adapterView.getAdapter();
        com.learnncode.mediachooser.e item = bVar.getItem(i);
        if (!item.f3722b) {
            if (com.learnncode.mediachooser.d.a(new File(item.f3721a.toString()), true) != 0) {
                Toast.makeText(this.f3757a.getActivity(), this.f3757a.getActivity().getResources().getString(l.file_size_exeeded) + "  " + com.learnncode.mediachooser.d.h + " " + this.f3757a.getActivity().getResources().getString(l.mb), 0).show();
                return;
            } else if (com.learnncode.mediachooser.d.f3715b == com.learnncode.mediachooser.d.f3716c) {
                if (com.learnncode.mediachooser.d.f3716c < 2) {
                    Toast.makeText(this.f3757a.getActivity(), this.f3757a.getActivity().getResources().getString(l.max_limit_file) + "  " + com.learnncode.mediachooser.d.f3716c + " " + this.f3757a.getActivity().getResources().getString(l.file), 0).show();
                    return;
                } else {
                    Toast.makeText(this.f3757a.getActivity(), this.f3757a.getActivity().getResources().getString(l.max_limit_file) + "  " + com.learnncode.mediachooser.d.f3716c + " " + this.f3757a.getActivity().getResources().getString(l.files), 0).show();
                    return;
                }
            }
        }
        item.f3722b = item.f3722b ? false : true;
        bVar.notifyDataSetChanged();
        if (item.f3722b) {
            view.setBackgroundResource(com.learnncode.mediachooser.i.selection_media_border);
            this.f3757a.h.add(item.f3721a);
            com.learnncode.mediachooser.d.f3716c++;
        } else {
            view.setBackgroundResource(0);
            this.f3757a.h.remove(item.f3721a);
            com.learnncode.mediachooser.d.f3716c--;
        }
        if (this.f3757a.k != null) {
            this.f3757a.k.b(this.f3757a.h.size());
        }
    }
}
