package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.os.Build;
import android.support.v4.view.MotionEventCompat;
import android.support.v7.widget.RecyclerView;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.b.a.h;
import com.behance.sdk.R;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleAbstract;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleAudio;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleCollection;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleEmbed;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleImage;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleText;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleVideo;
import com.behance.sdk.ui.adapters.helpers.BehanceSDKAdapterTouchHelper;
import com.behance.sdk.ui.adapters.helpers.BehanceSDKDragListener;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectEditorReorderViewHolder;
import java.io.File;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorReorderRecyclerAdapter extends RecyclerView.Adapter<BehanceSDKProjectEditorReorderViewHolder> implements BehanceSDKAdapterTouchHelper {
    private Context context;
    private List<BehanceSDKEditProjectModuleAbstract> modules;
    private final BehanceSDKDragListener swipeListener;

    public BehanceSDKProjectEditorReorderRecyclerAdapter(Context context, List<BehanceSDKEditProjectModuleAbstract> list, BehanceSDKDragListener behanceSDKDragListener) {
        this.context = context;
        this.modules = list;
        this.swipeListener = behanceSDKDragListener;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public BehanceSDKProjectEditorReorderViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new BehanceSDKProjectEditorReorderViewHolder(LayoutInflater.from(this.context).inflate(R.layout.bsdk_card_reorder_module, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(final BehanceSDKProjectEditorReorderViewHolder behanceSDKProjectEditorReorderViewHolder, int i) {
        String string;
        behanceSDKProjectEditorReorderViewHolder.cardReorderThumbnail.setImageBitmap(null);
        BehanceSDKEditProjectModuleAbstract behanceSDKEditProjectModuleAbstract = this.modules.get(i);
        if (behanceSDKEditProjectModuleAbstract instanceof BehanceSDKEditProjectModuleImage) {
            behanceSDKProjectEditorReorderViewHolder.cardReorderThumbnail.setVisibility(0);
            behanceSDKProjectEditorReorderViewHolder.cardReorderThumbnail.setScaleType(ImageView.ScaleType.CENTER_CROP);
            if (behanceSDKEditProjectModuleAbstract.isNewModule()) {
                h.b(this.context).a(new File(((BehanceSDKEditProjectModuleImage) behanceSDKEditProjectModuleAbstract).getPath())).a(behanceSDKProjectEditorReorderViewHolder.cardReorderThumbnail);
            } else {
                h.b(this.context).a(((BehanceSDKEditProjectModuleImage) behanceSDKEditProjectModuleAbstract).getDisp()).a(behanceSDKProjectEditorReorderViewHolder.cardReorderThumbnail);
            }
            behanceSDKProjectEditorReorderViewHolder.cardReorderDescription.setText((CharSequence) null);
        } else if (behanceSDKEditProjectModuleAbstract instanceof BehanceSDKEditProjectModuleCollection) {
            behanceSDKProjectEditorReorderViewHolder.cardReorderThumbnail.setVisibility(0);
            behanceSDKProjectEditorReorderViewHolder.cardReorderThumbnail.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            behanceSDKProjectEditorReorderViewHolder.cardReorderThumbnail.setImageResource(R.drawable.bsdk_icon_project_editor_unsupported);
            behanceSDKProjectEditorReorderViewHolder.cardReorderDescription.setText((CharSequence) null);
        } else if (behanceSDKEditProjectModuleAbstract instanceof BehanceSDKEditProjectModuleEmbed) {
            behanceSDKProjectEditorReorderViewHolder.cardReorderThumbnail.setVisibility(8);
            behanceSDKProjectEditorReorderViewHolder.cardReorderDescription.setText(getEmbedRoot(((BehanceSDKEditProjectModuleEmbed) behanceSDKEditProjectModuleAbstract).getHtml()));
        } else if (behanceSDKEditProjectModuleAbstract instanceof BehanceSDKEditProjectModuleVideo) {
            behanceSDKProjectEditorReorderViewHolder.cardReorderThumbnail.setVisibility(0);
            behanceSDKProjectEditorReorderViewHolder.cardReorderThumbnail.setScaleType(ImageView.ScaleType.CENTER_CROP);
            behanceSDKProjectEditorReorderViewHolder.cardReorderDescription.setText((CharSequence) null);
            if (((BehanceSDKEditProjectModuleVideo) behanceSDKEditProjectModuleAbstract).getPath() != null) {
                h.b(this.context).a(new File(((BehanceSDKEditProjectModuleVideo) behanceSDKEditProjectModuleAbstract).getPath())).a(behanceSDKProjectEditorReorderViewHolder.cardReorderThumbnail);
            } else if (((BehanceSDKEditProjectModuleVideo) behanceSDKEditProjectModuleAbstract).getHtml() != null) {
                behanceSDKProjectEditorReorderViewHolder.cardReorderDescription.setText(getEmbedRoot(((BehanceSDKEditProjectModuleVideo) behanceSDKEditProjectModuleAbstract).getHtml()));
            }
        } else if (behanceSDKEditProjectModuleAbstract instanceof BehanceSDKEditProjectModuleAudio) {
            behanceSDKProjectEditorReorderViewHolder.cardReorderDescription.setText((CharSequence) null);
        } else if (behanceSDKEditProjectModuleAbstract instanceof BehanceSDKEditProjectModuleText) {
            behanceSDKProjectEditorReorderViewHolder.cardReorderThumbnail.setVisibility(8);
            if (((BehanceSDKEditProjectModuleText) behanceSDKEditProjectModuleAbstract).getHtml() != null) {
                if (Build.VERSION.SDK_INT >= 24) {
                    string = Html.fromHtml(((BehanceSDKEditProjectModuleText) behanceSDKEditProjectModuleAbstract).getHtml(), 0).toString();
                } else {
                    string = Html.fromHtml(((BehanceSDKEditProjectModuleText) behanceSDKEditProjectModuleAbstract).getHtml()).toString();
                }
                String strReplaceAll = string.replaceAll("\\n\\n", IOUtils.LINE_SEPARATOR_UNIX);
                if (strReplaceAll.length() >= 2 && strReplaceAll.substring(strReplaceAll.length() - 1).equals(IOUtils.LINE_SEPARATOR_UNIX)) {
                    strReplaceAll = strReplaceAll.substring(0, strReplaceAll.length() - 1);
                }
                behanceSDKProjectEditorReorderViewHolder.cardReorderDescription.setText(strReplaceAll);
            }
        }
        behanceSDKProjectEditorReorderViewHolder.cardReorderHandle.setOnTouchListener(new View.OnTouchListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorReorderRecyclerAdapter.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (MotionEventCompat.getActionMasked(motionEvent) == 0) {
                    BehanceSDKProjectEditorReorderRecyclerAdapter.this.swipeListener.onDragStarted(behanceSDKProjectEditorReorderViewHolder);
                    return false;
                }
                return false;
            }
        });
    }

    private String getEmbedRoot(String str) {
        Matcher matcher = Pattern.compile("src=\"(.*?)\"").matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return str;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.modules.size();
    }

    @Override // com.behance.sdk.ui.adapters.helpers.BehanceSDKAdapterTouchHelper
    public void onItemMoved(int i, int i2) {
        Collections.swap(this.modules, i, i2);
        notifyItemMoved(i, i2);
        this.swipeListener.onDragActionComplete(this.modules);
    }

    @Override // com.behance.sdk.ui.adapters.helpers.BehanceSDKAdapterTouchHelper
    public void onItemRemoved(int i) {
        this.modules.remove(i);
        notifyItemRemoved(i);
        this.swipeListener.onDragActionComplete(this.modules);
    }
}
