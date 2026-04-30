package com.adobe.premiereclip.library;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.looks.LocalLooks;
import com.h.a.d;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class PopUpLibraryListAdapter extends RecyclerView.Adapter<LibraryViewHolder> {
    private static ClipLibraryManager libraryManager = ClipLibraryManager.getSharedInstance();
    private int bgActiveColor;
    private int bgColor;
    private LibraryClickListener clickListener;
    private Context context;
    private LayoutInflater inflater;

    public interface LibraryClickListener {
        void onPopupLibraryClicked(View view, int i);
    }

    public PopUpLibraryListAdapter(Context context) {
        this.context = context;
        this.inflater = LayoutInflater.from(context);
        Resources resources = context.getResources();
        this.bgColor = resources.getColor(R.color.white);
        this.bgActiveColor = resources.getColor(R.color.settings_list_divider_color);
    }

    public void setLibraryClickListener(LibraryClickListener libraryClickListener) {
        this.clickListener = libraryClickListener;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public LibraryViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        LibraryViewHolder libraryViewHolder = new LibraryViewHolder(this.inflater.inflate(R.layout.view_library_item, viewGroup, false));
        d.a(libraryViewHolder.itemView);
        return libraryViewHolder;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(LibraryViewHolder libraryViewHolder, int i) {
        if (i == 0) {
            addClipDefaultsView(libraryViewHolder.itemView, libraryViewHolder.libNameView, libraryViewHolder.libMetaInfoView, i);
        } else {
            addLibraryExtraView(libraryViewHolder.itemView, libraryViewHolder.libNameView, libraryViewHolder.libMetaInfoView, i);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (libraryManager.getLibraries() != null) {
            return libraryManager.getLibraries().size() + 1;
        }
        return 1;
    }

    public void addClipDefaultsView(View view, View view2, View view3, int i) {
        if (i == 0) {
            if (libraryManager.isSelectedDefaultLooks()) {
                view.setBackgroundColor(this.bgActiveColor);
            } else {
                view.setBackgroundColor(this.bgColor);
            }
            ((TextView) view2).setText(this.context.getString(R.string.looks_tab_clip_defaults));
            ((TextView) view3).setText(getClipDefaultsInfo());
        }
    }

    public void addLibraryExtraView(View view, View view2, View view3, int i) {
        int i2;
        AdobeLibraryComposite adobeLibraryComposite;
        if (i > 0 && (adobeLibraryComposite = libraryManager.getSortedLibraries().get(i - 1)) != null) {
            Log.d("Looks", "library added : " + libraryManager.getLibraryName(adobeLibraryComposite));
            if (adobeLibraryComposite == libraryManager.getCurrentLibrary() && !libraryManager.isSelectedDefaultLooks()) {
                view.setBackgroundColor(this.bgActiveColor);
            } else {
                view.setBackgroundColor(this.bgColor);
            }
            ((TextView) view2).setText(libraryManager.getLibraryName(adobeLibraryComposite));
            ((TextView) view3).setText(getLibraryInfo(i2));
        }
    }

    public String getLibraryInfo(int i) {
        ArrayList<AdobeLibraryComposite> sortedLibraries = libraryManager.getSortedLibraries();
        AdobeLibraryComposite adobeLibraryComposite = sortedLibraries != null ? sortedLibraries.get(i) : null;
        int iCountAllElementsInLibrary = libraryManager.countAllElementsInLibrary(adobeLibraryComposite);
        int iCountLooksInLibrary = libraryManager.countLooksInLibrary(adobeLibraryComposite);
        return getFormattedString(iCountLooksInLibrary, iCountAllElementsInLibrary - iCountLooksInLibrary);
    }

    public String getClipDefaultsInfo() {
        return getFormattedString(LocalLooks.size(), 0);
    }

    private String getFormattedString(int i, int i2) {
        return i == 1 ? this.context.getString(R.string.single_library_text) : this.context.getString(R.string.multiple_library_text, Integer.valueOf(i));
    }

    class LibraryViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        private View itemView;
        private View libMetaInfoView;
        private View libNameView;

        public LibraryViewHolder(View view) {
            super(view);
            view.setOnClickListener(this);
            this.itemView = view;
            this.libNameView = view.findViewById(R.id.library_name);
            this.libMetaInfoView = view.findViewById(R.id.looks_count);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (PopUpLibraryListAdapter.this.clickListener != null) {
                PopUpLibraryListAdapter.this.clickListener.onPopupLibraryClicked(view, getPosition());
            }
        }
    }
}
