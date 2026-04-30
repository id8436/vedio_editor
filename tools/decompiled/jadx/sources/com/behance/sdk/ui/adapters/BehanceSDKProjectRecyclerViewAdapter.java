package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.net.Uri;
import android.support.v7.widget.RecyclerView;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.R;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import com.behance.sdk.dto.search.BehanceSDKUserDTO;
import com.behance.sdk.managers.BehanceSDKUserManager;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectViewHolder;
import com.behance.sdk.ui.animations.BehanceSDKRecyclerItemAnimator;
import com.behance.sdk.util.BehanceSDKColumnCountUtil;
import com.facebook.drawee.a.a.c;
import com.facebook.imagepipeline.l.d;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectRecyclerViewAdapter extends RecyclerView.Adapter<BehanceSDKProjectViewHolder> {
    private static final String SHARE_PROJECT_ITEM_DIALOG_FRAGMENT_TAG = "SHARE_PROJECT_ITEM_DIALOG_FRAGMENT_TAG";
    private boolean cleanFeed;
    private int columns;
    private Context context;
    private DisplayMetrics displayMetrics;
    private BehanceSDKRecyclerItemAnimator itemAnimator;
    private LayoutInflater layoutInflater;
    private int loggedInUserId;
    private List<BehanceSDKProjectDTO> projects;
    private BehanceSDK behanceSDK = BehanceSDK.getInstance();
    private boolean moreToLoad = true;

    public BehanceSDKProjectRecyclerViewAdapter(Context context, List<BehanceSDKProjectDTO> list) {
        BehanceSDKUserDTO userDTO;
        this.loggedInUserId = -1;
        this.context = context;
        this.projects = list;
        this.layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        this.displayMetrics = context.getResources().getDisplayMetrics();
        this.columns = BehanceSDKColumnCountUtil.getActivityColumnCount(context);
        BehanceSDKUserManager behanceSDKUserManager = BehanceSDKUserManager.getInstance();
        if (behanceSDKUserManager != null && (userDTO = behanceSDKUserManager.getUserDTO()) != null) {
            this.loggedInUserId = userDTO.getId();
        }
        this.itemAnimator = BehanceSDKRecyclerItemAnimator.getInstance(context, this.columns);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public BehanceSDKProjectViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1) {
            return new BehanceSDKProjectViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.bsdk_card_view_loader, viewGroup, false));
        }
        return new BehanceSDKProjectViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.bsdk_card_view_project, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(BehanceSDKProjectViewHolder behanceSDKProjectViewHolder, int i) {
        if (i == getBasicItemCount() && behanceSDKProjectViewHolder.getItemViewType() == 1) {
            behanceSDKProjectViewHolder.card.setVisibility(this.moreToLoad ? 0 : 4);
            this.itemAnimator.setAnimation(behanceSDKProjectViewHolder.card, i, true);
            return;
        }
        if (this.cleanFeed) {
            behanceSDKProjectViewHolder.title.setLines(1);
            behanceSDKProjectViewHolder.appreciationsContainer.setVisibility(8);
            behanceSDKProjectViewHolder.artist.setVisibility(8);
        } else {
            behanceSDKProjectViewHolder.title.setLines(2);
            behanceSDKProjectViewHolder.appreciationsContainer.setVisibility(0);
            behanceSDKProjectViewHolder.artist.setVisibility(0);
        }
        final BehanceSDKProjectDTO behanceSDKProjectDTO = this.projects.get(i);
        if (behanceSDKProjectDTO.getOwners() != null) {
            Iterator<BehanceSDKUserDTO> it = behanceSDKProjectDTO.getOwners().iterator();
            while (it.hasNext() && it.next().getId() != this.loggedInUserId) {
            }
        }
        behanceSDKProjectViewHolder.title.setText(behanceSDKProjectDTO.getName());
        if (!behanceSDKProjectDTO.getOwners().isEmpty()) {
            behanceSDKProjectViewHolder.artist.setText(behanceSDKProjectDTO.getOwners().get(0).getDisplayName());
        }
        behanceSDKProjectViewHolder.cover.setImageDrawable(null);
        if (behanceSDKProjectDTO.getCovers() != null && behanceSDKProjectDTO.getCovers().findCoverImageInIncreasingSizeOrderAndFallback(404) != null) {
            behanceSDKProjectViewHolder.cover.setController(c.a().b(d.a(Uri.parse(behanceSDKProjectDTO.getCovers().findCoverImageInIncreasingSizeOrderAndFallback(404).getUrl())).a(true).n()).b(behanceSDKProjectViewHolder.cover.getController()).p());
        }
        DecimalFormat decimalFormat = new DecimalFormat("###,###,###,###");
        if (behanceSDKProjectDTO.getStats() != null) {
            behanceSDKProjectViewHolder.appreciations.setText(decimalFormat.format(behanceSDKProjectDTO.getStats().getAppreciationsCount()));
            behanceSDKProjectViewHolder.views.setText(decimalFormat.format(behanceSDKProjectDTO.getStats().getViewsCount()));
        }
        behanceSDKProjectViewHolder.card.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectRecyclerViewAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    BehanceSDKProjectRecyclerViewAdapter.this.behanceSDK.launchProjectDetailsActivity(BehanceSDKProjectRecyclerViewAdapter.this.context, behanceSDKProjectDTO.getId());
                } catch (Exception e2) {
                }
            }
        });
        behanceSDKProjectViewHolder.card.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectRecyclerViewAdapter.2
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                BehanceSDKProjectRecyclerViewAdapter.this.displayShareProjectView(behanceSDKProjectDTO);
                return true;
            }
        });
        this.itemAnimator.setAnimation(behanceSDKProjectViewHolder.card, i, false);
    }

    private int getBasicItemCount() {
        return this.projects.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return getBasicItemCount() + 1;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return i == getBasicItemCount() ? 1 : 0;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(BehanceSDKProjectViewHolder behanceSDKProjectViewHolder) {
        if (behanceSDKProjectViewHolder != null && behanceSDKProjectViewHolder.card != null) {
            behanceSDKProjectViewHolder.card.clearAnimation();
            behanceSDKProjectViewHolder.card.setTranslationY(0.0f);
        }
    }

    public void setProjects(List<BehanceSDKProjectDTO> list) {
        this.projects = list;
        notifyDataSetChanged();
    }

    public void addProjectsItems(List<BehanceSDKProjectDTO> list) {
        this.projects.addAll(list);
    }

    public BehanceSDKProjectDTO getProjectItem(int i) {
        if (this.projects == null || i >= this.projects.size()) {
            return null;
        }
        return this.projects.get(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void displayShareProjectView(BehanceSDKProjectDTO behanceSDKProjectDTO) {
    }

    public void setMoreToLoad(boolean z) {
        this.moreToLoad = z;
        notifyItemChanged(getBasicItemCount());
    }

    private void editProject(BehanceSDKProjectDTO behanceSDKProjectDTO) {
        Toast.makeText(this.context, "pretend it's been renamed...", 0).show();
    }

    private void cloneProject(BehanceSDKProjectDTO behanceSDKProjectDTO) {
        Toast.makeText(this.context, "pretend it's now private...", 0).show();
    }

    private void unpublishProject(BehanceSDKProjectDTO behanceSDKProjectDTO) {
        Toast.makeText(this.context, "pretend project unpublished...", 0).show();
    }

    private void deleteProject(BehanceSDKProjectDTO behanceSDKProjectDTO) {
        Toast.makeText(this.context, "pretend project has been deleted...", 0).show();
    }

    public Context getContext() {
        return this.context;
    }
}
