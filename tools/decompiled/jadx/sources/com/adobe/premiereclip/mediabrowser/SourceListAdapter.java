package com.adobe.premiereclip.mediabrowser;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.mediabrowser.source.GallerySource;
import com.h.a.d;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
class SourceListAdapter extends RecyclerView.Adapter<SourceViewHolder> {
    private Context context;
    private SourceChangeListener listener;
    private ArrayList<String> sourceNames = new ArrayList<>();

    public interface SourceChangeListener {
        void onSourceChanged(String str);
    }

    public SourceListAdapter(Context context, String[] strArr, SourceChangeListener sourceChangeListener) {
        for (String str : strArr) {
            this.sourceNames.add(str);
        }
        this.listener = sourceChangeListener;
        this.context = context;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.sourceNames.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public SourceViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        SourceViewHolder sourceViewHolder = new SourceViewHolder(LayoutInflater.from(this.context).inflate(R.layout.view_source_item, viewGroup, false));
        d.a(sourceViewHolder.itemView);
        return sourceViewHolder;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(SourceViewHolder sourceViewHolder, int i) {
        sourceViewHolder.sourceName.setText(GallerySource.getSourceString(this.context, this.sourceNames.get(i)));
    }

    class SourceViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        public TextView sourceName;

        public SourceViewHolder(View view) {
            super(view);
            view.setOnClickListener(this);
            this.sourceName = (TextView) view.findViewById(R.id.source_name);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SourceListAdapter.this.listener != null) {
                SourceListAdapter.this.listener.onSourceChanged((String) SourceListAdapter.this.sourceNames.get(getPosition()));
            }
        }
    }
}
