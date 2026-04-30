package com.learnncode.mediachooser.fragment;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import com.learnncode.mediachooser.activity.ClipViewActivity;

/* JADX INFO: compiled from: VideoFragment.java */
/* JADX INFO: loaded from: classes3.dex */
class g implements AdapterView.OnItemLongClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ VideoFragment f3756a;

    g(VideoFragment videoFragment) {
        this.f3756a = videoFragment;
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        com.learnncode.mediachooser.e item = ((com.learnncode.mediachooser.a.b) adapterView.getAdapter()).getItem(i);
        Intent intent = new Intent(this.f3756a.getActivity(), (Class<?>) ClipViewActivity.class);
        intent.putExtra("videoPlayUri", item.f3723c);
        this.f3756a.startActivity(intent);
        this.f3756a.getActivity().overridePendingTransition(com.learnncode.mediachooser.g.push_left_in, com.learnncode.mediachooser.g.push_left_out);
        return true;
    }
}
