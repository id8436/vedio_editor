package com.learnncode.mediachooser.fragment;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import com.learnncode.mediachooser.activity.HomeFragmentActivity;
import com.learnncode.mediachooser.l;

/* JADX INFO: compiled from: BucketVideoFragment.java */
/* JADX INFO: loaded from: classes3.dex */
class d implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f3754a;

    d(c cVar) {
        this.f3754a = cVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        com.learnncode.mediachooser.a aVar = (com.learnncode.mediachooser.a) adapterView.getItemAtPosition(i);
        Intent intent = new Intent(this.f3754a.getActivity(), (Class<?>) HomeFragmentActivity.class);
        intent.putExtra("name", aVar.f3634a);
        intent.putExtra("bucketId", String.valueOf(aVar.f3635b));
        intent.putExtra("isFromBucket", true);
        intent.putExtra("previousActivityName", this.f3754a.getResources().getString(l.bucket_view_video_activity));
        this.f3754a.getActivity().startActivityForResult(intent, 2000);
        this.f3754a.getActivity().overridePendingTransition(com.learnncode.mediachooser.g.push_left_in, com.learnncode.mediachooser.g.push_left_out);
    }
}
