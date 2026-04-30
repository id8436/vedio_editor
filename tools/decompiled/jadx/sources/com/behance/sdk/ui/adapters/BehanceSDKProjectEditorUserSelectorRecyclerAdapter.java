package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.os.Build;
import android.support.v7.widget.RecyclerView;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.b.a.h;
import com.behance.sdk.R;
import com.behance.sdk.dto.search.BehanceSDKUserDTO;
import com.behance.sdk.ui.adapters.BehanceSDKProjectEditorSettingSelectorAbstractAdapter;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectEditorSettingDetailAddViewHolder;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectEditorSettingDetailProfileViewHolder;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorUserSelectorRecyclerAdapter extends BehanceSDKProjectEditorSettingSelectorAbstractAdapter {
    public BehanceSDKProjectEditorUserSelectorRecyclerAdapter(Context context, List<BehanceSDKUserDTO> list, BehanceSDKProjectEditorSettingSelectorAbstractAdapter.Callbacks callbacks, int i) {
        super(context, list, callbacks, i);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        switch (i) {
            case 0:
                return new BehanceSDKProjectEditorSettingDetailProfileViewHolder(LayoutInflater.from(this.context).inflate(R.layout.bsdk_card_project_editor_setting_detail_profile, viewGroup, false));
            case 1:
                return new BehanceSDKProjectEditorSettingDetailAddViewHolder(LayoutInflater.from(this.context).inflate(R.layout.bsdk_card_project_editor_setting_detail_add, viewGroup, false));
            case 2:
                return new BehanceSDKProjectEditorSettingDetailProfileViewHolder(LayoutInflater.from(this.context).inflate(R.layout.bsdk_card_project_editor_setting_detail_profile, viewGroup, false));
            default:
                return null;
        }
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorSettingSelectorAbstractAdapter
    protected void bindSelectedItem(RecyclerView.ViewHolder viewHolder, int i) {
        BehanceSDKUserDTO behanceSDKUserDTO = (BehanceSDKUserDTO) this.selectedItems.get(i);
        BehanceSDKProjectEditorSettingDetailProfileViewHolder behanceSDKProjectEditorSettingDetailProfileViewHolder = (BehanceSDKProjectEditorSettingDetailProfileViewHolder) viewHolder;
        behanceSDKProjectEditorSettingDetailProfileViewHolder.bsdkCardEditorSettingDetailTextPrimary.setText(behanceSDKUserDTO.getDisplayName());
        behanceSDKProjectEditorSettingDetailProfileViewHolder.bsdkCardEditorSettingDetailTextSecondary.setText(behanceSDKUserDTO.getUserName());
        h.b(this.context).a(behanceSDKUserDTO.findProfileImageInDecreasingSizeOrder(230).getUrl()).a(behanceSDKProjectEditorSettingDetailProfileViewHolder.bsdkCardEditorSettingDetailAvatar);
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
        BehanceSDKUserDTO behanceSDKUserDTO = (BehanceSDKUserDTO) this.selectableItems.get((i - this.selectedItems.size()) - 1);
        BehanceSDKProjectEditorSettingDetailProfileViewHolder behanceSDKProjectEditorSettingDetailProfileViewHolder = (BehanceSDKProjectEditorSettingDetailProfileViewHolder) viewHolder;
        String displayName = behanceSDKUserDTO.getDisplayName();
        String userName = behanceSDKUserDTO.getUserName();
        if (displayName != null && !displayName.isEmpty()) {
            displayName = displayName.replaceAll("(?i)" + this.inputString, "<b>" + this.inputString + "</b>");
        }
        if (userName != null && !userName.isEmpty()) {
            userName = userName.replaceAll("(?i)" + this.inputString, "<b>" + this.inputString + "</b>");
        }
        if (Build.VERSION.SDK_INT >= 24) {
            behanceSDKProjectEditorSettingDetailProfileViewHolder.bsdkCardEditorSettingDetailTextPrimary.setText(Html.fromHtml(displayName, 0));
            behanceSDKProjectEditorSettingDetailProfileViewHolder.bsdkCardEditorSettingDetailTextSecondary.setText(Html.fromHtml(userName, 0));
        } else {
            behanceSDKProjectEditorSettingDetailProfileViewHolder.bsdkCardEditorSettingDetailTextPrimary.setText(Html.fromHtml(displayName));
            behanceSDKProjectEditorSettingDetailProfileViewHolder.bsdkCardEditorSettingDetailTextSecondary.setText(Html.fromHtml(userName));
        }
        h.b(this.context).a(behanceSDKUserDTO.findProfileImageInDecreasingSizeOrder(230).getUrl()).a(behanceSDKProjectEditorSettingDetailProfileViewHolder.bsdkCardEditorSettingDetailAvatar);
        super.bindSelectableItem(viewHolder, i);
    }
}
