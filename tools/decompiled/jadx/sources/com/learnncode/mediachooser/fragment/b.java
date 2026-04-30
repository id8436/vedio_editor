package com.learnncode.mediachooser.fragment;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import com.learnncode.mediachooser.activity.HomeFragmentActivity;
import com.learnncode.mediachooser.l;

/* JADX INFO: compiled from: BucketImageFragment.java */
/* JADX INFO: loaded from: classes3.dex */
class b implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f3746a;

    b(a aVar) {
        this.f3746a = aVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        com.learnncode.mediachooser.a aVar = (com.learnncode.mediachooser.a) adapterView.getItemAtPosition(i);
        Intent intent = new Intent(this.f3746a.getActivity(), (Class<?>) HomeFragmentActivity.class);
        intent.putExtra("name", aVar.f3634a);
        intent.putExtra("bucketId", String.valueOf(aVar.f3635b));
        intent.putExtra("image", true);
        intent.putExtra("isFromBucket", true);
        intent.putExtra("previousActivityName", this.f3746a.getResources().getString(l.bucket_view_photo_activity));
        this.f3746a.getActivity().startActivityForResult(intent, 1000);
        this.f3746a.getActivity().overridePendingTransition(com.learnncode.mediachooser.g.push_left_in, com.learnncode.mediachooser.g.push_left_out);
    }
}
