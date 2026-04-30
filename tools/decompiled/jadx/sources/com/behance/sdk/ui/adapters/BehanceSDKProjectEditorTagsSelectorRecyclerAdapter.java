package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.os.Build;
import android.support.v7.widget.RecyclerView;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.behance.sdk.R;
import com.behance.sdk.dto.BehanceSDKTagDTO;
import com.behance.sdk.ui.adapters.BehanceSDKProjectEditorSettingSelectorAbstractAdapter;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectEditorSettingDetailAddViewHolder;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectEditorSettingDetailTextViewHolder;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorTagsSelectorRecyclerAdapter extends BehanceSDKProjectEditorSettingSelectorAbstractAdapter {
    public BehanceSDKProjectEditorTagsSelectorRecyclerAdapter(Context context, List<BehanceSDKTagDTO> list, BehanceSDKProjectEditorSettingSelectorAbstractAdapter.Callbacks callbacks, int i) {
        super(context, list, callbacks, i);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        switch (i) {
            case 0:
                return new BehanceSDKProjectEditorSettingDetailTextViewHolder(LayoutInflater.from(this.context).inflate(R.layout.bsdk_card_project_editor_setting_detail_text, viewGroup, false));
            case 1:
                return new BehanceSDKProjectEditorSettingDetailAddViewHolder(LayoutInflater.from(this.context).inflate(R.layout.bsdk_card_project_editor_setting_detail_add, viewGroup, false));
            case 2:
                return new BehanceSDKProjectEditorSettingDetailTextViewHolder(LayoutInflater.from(this.context).inflate(R.layout.bsdk_card_project_editor_setting_detail_text, viewGroup, false));
            default:
                return null;
        }
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorSettingSelectorAbstractAdapter
    protected void bindSelectedItem(RecyclerView.ViewHolder viewHolder, int i) {
        ((BehanceSDKProjectEditorSettingDetailTextViewHolder) viewHolder).bsdkCardEditorSettingDetailText.setText(((BehanceSDKTagDTO) this.selectedItems.get(i)).getTitle());
        super.bindSelectedItem(viewHolder, i);
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorSettingSelectorAbstractAdapter
    protected void bindAddItem(RecyclerView.ViewHolder viewHolder, int i) {
        BehanceSDKProjectEditorSettingDetailAddViewHolder behanceSDKProjectEditorSettingDetailAddViewHolder = (BehanceSDKProjectEditorSettingDetailAddViewHolder) viewHolder;
        behanceSDKProjectEditorSettingDetailAddViewHolder.bsdkCardEditorSettingDetailAddEditText.setHint(this.ADD_RES_ID);
        behanceSDKProjectEditorSettingDetailAddViewHolder.bsdkCardEditorSettingDetailAddEditText.setText(this.inputString);
        behanceSDKProjectEditorSettingDetailAddViewHolder.bsdkCardEditorSettingDetailAddEditText.addTextChangedListener(this);
        super.bindAddItem(viewHolder, i);
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorSettingSelectorAbstractAdapter
    protected void bindSelectableItem(RecyclerView.ViewHolder viewHolder, int i) {
        String title = ((BehanceSDKTagDTO) this.selectableItems.get((i - this.selectedItems.size()) - 1)).getTitle();
        if (title != null && !title.isEmpty()) {
            String strReplaceAll = title.replaceAll("(?i)" + this.inputString, "<b>" + this.inputString + "</b>");
            if (Build.VERSION.SDK_INT >= 24) {
                ((BehanceSDKProjectEditorSettingDetailTextViewHolder) viewHolder).bsdkCardEditorSettingDetailText.setText(Html.fromHtml(strReplaceAll, 0));
            } else {
                ((BehanceSDKProjectEditorSettingDetailTextViewHolder) viewHolder).bsdkCardEditorSettingDetailText.setText(Html.fromHtml(strReplaceAll));
            }
        }
        super.bindSelectableItem(viewHolder, i);
    }
}
