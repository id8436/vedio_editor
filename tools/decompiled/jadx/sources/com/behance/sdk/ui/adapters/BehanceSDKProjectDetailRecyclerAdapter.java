package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.CardView;
import android.support.v7.widget.RecyclerView;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.R;
import com.behance.sdk.dto.project.BehanceSDKAbstractCommentDTO;
import com.behance.sdk.dto.project.BehanceSDKAbstractProjectModuleDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectCommentDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectModuleAudioDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectModuleEmbedDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectModuleImageDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectModuleTextDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectModuleVideoDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectStylesDTO;
import com.behance.sdk.dto.search.BehanceSDKUserDTO;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.managers.BehanceSDKUserManager;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectDetailAppreciateViewHolder;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectDetailCommentViewHolder;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectDetailCommentsHeaderViewHolder;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectDetailInfoShareViewHolder;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectDetailItemViewHolder;
import com.behance.sdk.util.BehanceSDKUtils;
import com.facebook.drawee.a.a.c;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.l.d;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.mortbay.jetty.MimeTypes;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectDetailRecyclerAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private static final int ITEM_TYPE_APPRECIATE_VIEW = 2;
    private static final int ITEM_TYPE_COMMENT = 6;
    private static final int ITEM_TYPE_COMMENT_HEADER = 3;
    private static final int ITEM_TYPE_COMMENT_PLACEHOLDER = 5;
    private static final int ITEM_TYPE_HEADER_PADDING = 0;
    private static final int ITEM_TYPE_INFO_SHARE_VIEW = 4;
    private static final int ITEM_TYPE_LOADER = 7;
    private static final int ITEM_TYPE_PROJECT_MODULE = 1;
    private static final int PROJECT_CAPTION_TOP_SPACING = 16;
    private static final double PROJECT_TEXT_MAX_SCALE = 1.5d;
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKProjectDetailRecyclerAdapter.class);
    private BehanceSDK behanceSDK;
    private int bgColor;
    private Callbacks callbacks;
    private boolean commentsAllowed;
    private int commentsCount;
    private Context context;
    private double displayWidth;
    private int headerHeight;
    private int loggedInUserId;
    private boolean moreToLoad = true;
    private boolean ownedByLoggedInUser;
    private boolean projectAppreciated;
    private List<BehanceSDKProjectCommentDTO> projectComments;
    private List<BehanceSDKAbstractProjectModuleDTO> projectModules;
    private double scaleFactor;
    private BehanceSDKProjectStylesDTO styles;
    private SparseArray<Integer> webViewHeights;

    public interface Callbacks {
        void onDeleteCommentRequested(BehanceSDKAbstractCommentDTO behanceSDKAbstractCommentDTO);

        void onImageClicked(int i);

        void onProjectAppreciated();

        void onProjectInfoClicked();

        void onProjectShareClick();
    }

    public BehanceSDKProjectDetailRecyclerAdapter(Context context, BehanceSDKProjectDTO behanceSDKProjectDTO) {
        this.ownedByLoggedInUser = false;
        this.context = context;
        this.projectModules = behanceSDKProjectDTO.getModules();
        this.styles = behanceSDKProjectDTO.getProjectStyles();
        BehanceSDKUserManager behanceSDKUserManager = BehanceSDKUserManager.getInstance();
        if (behanceSDKUserManager.isUserLoggedIn() && behanceSDKUserManager.getUserDTO() != null) {
            this.loggedInUserId = behanceSDKUserManager.getUserDTO().getId();
        } else {
            this.loggedInUserId = -1;
        }
        Iterator<BehanceSDKUserDTO> it = behanceSDKProjectDTO.getOwners().iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next().getId() == this.loggedInUserId) {
                    this.ownedByLoggedInUser = true;
                    break;
                }
            } else {
                break;
            }
        }
        this.displayWidth = context.getResources().getDisplayMetrics().widthPixels;
        this.scaleFactor = (this.displayWidth * 0.85d) / 725.0d;
        this.headerHeight = 100;
        this.projectComments = new ArrayList();
        this.commentsCount = behanceSDKProjectDTO.getStats().getCommentsCount();
        this.commentsAllowed = behanceSDKProjectDTO.isAllowComments();
        this.behanceSDK = BehanceSDK.getInstance();
        this.bgColor = context.getResources().getColor(R.color.bsdk_transparent);
        this.projectAppreciated = behanceSDKProjectDTO.isAppreciatedByUser();
        this.webViewHeights = new SparseArray<>(this.projectModules.size());
        for (int i = 0; i < this.projectModules.size(); i++) {
            this.webViewHeights.put(i, -1);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        switch (i) {
            case 2:
                return new BehanceSDKProjectDetailAppreciateViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.bsdk_card_view_project_detail_appreciate, viewGroup, false));
            case 3:
                return new BehanceSDKProjectDetailCommentsHeaderViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.bsdk_card_view_project_detail_comments_header, viewGroup, false));
            case 4:
                return new BehanceSDKProjectDetailInfoShareViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.bsdk_card_view_project_detail_info_share, viewGroup, false));
            case 5:
                return new BehanceSDKProjectDetailItemViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.bsdk_card_view_project_detail_comments_placeholder, viewGroup, false));
            case 6:
                return new BehanceSDKProjectDetailCommentViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.bsdk_card_view_project_detail_comment, viewGroup, false));
            case 7:
                return new BehanceSDKProjectDetailItemViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.bsdk_card_view_loader, viewGroup, false));
            default:
                return new BehanceSDKProjectDetailItemViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.bsdk_card_view_project_detail_module, viewGroup, false));
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (i < this.projectModules.size() + 1) {
            BehanceSDKProjectDetailItemViewHolder behanceSDKProjectDetailItemViewHolder = (BehanceSDKProjectDetailItemViewHolder) viewHolder;
            behanceSDKProjectDetailItemViewHolder.container.setBackgroundColor(this.bgColor);
            behanceSDKProjectDetailItemViewHolder.container.removeAllViews();
            if (i == 0) {
                behanceSDKProjectDetailItemViewHolder.container.getLayoutParams().height = this.headerHeight;
                return;
            }
            int i2 = i - 1;
            if (i2 == 0 && this.styles.getProjectMarginTop() > 0) {
                View view = new View(this.context);
                behanceSDKProjectDetailItemViewHolder.container.addView(view);
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
                layoutParams.height = (int) (((double) this.styles.getProjectMarginTop()) * this.scaleFactor);
                layoutParams.width = -1;
                view.setLayoutParams(layoutParams);
            }
            BehanceSDKAbstractProjectModuleDTO behanceSDKAbstractProjectModuleDTO = this.projectModules.get(i2);
            if (behanceSDKAbstractProjectModuleDTO instanceof BehanceSDKProjectModuleTextDTO) {
                makeTextModule(((BehanceSDKProjectModuleTextDTO) behanceSDKAbstractProjectModuleDTO).getFormattedText(), behanceSDKProjectDetailItemViewHolder.container, this.styles.getCustomCSS(), this.displayWidth, i2);
            } else if (behanceSDKAbstractProjectModuleDTO instanceof BehanceSDKProjectModuleImageDTO) {
                makeImageModule((BehanceSDKProjectModuleImageDTO) behanceSDKAbstractProjectModuleDTO, behanceSDKProjectDetailItemViewHolder.container, i2);
            } else {
                makeWVModule(behanceSDKAbstractProjectModuleDTO, behanceSDKProjectDetailItemViewHolder.container, i2);
            }
            if (i2 < this.projectModules.size() - 1) {
                addDividerSpacer(behanceSDKProjectDetailItemViewHolder, i2);
                return;
            }
            return;
        }
        if (viewHolder instanceof BehanceSDKProjectDetailAppreciateViewHolder) {
            setUpAppreciateItem((BehanceSDKProjectDetailAppreciateViewHolder) viewHolder);
            return;
        }
        if (viewHolder instanceof BehanceSDKProjectDetailInfoShareViewHolder) {
            setupShareInfoItem((BehanceSDKProjectDetailInfoShareViewHolder) viewHolder);
            return;
        }
        if (viewHolder instanceof BehanceSDKProjectDetailCommentViewHolder) {
            populateComment((BehanceSDKProjectDetailCommentViewHolder) viewHolder, (i - this.projectModules.size()) - 4);
            return;
        }
        if (viewHolder instanceof BehanceSDKProjectDetailCommentsHeaderViewHolder) {
            makeCommentsHeader((BehanceSDKProjectDetailCommentsHeaderViewHolder) viewHolder);
        } else if (i == getItemCount() - 1) {
            viewHolder.itemView.findViewById(R.id.bsdk_card_loader_progress_bar).setVisibility(this.moreToLoad ? 0 : 4);
            ((CardView) viewHolder.itemView).setCardBackgroundColor(this.context.getResources().getColor(R.color.bsdk_card_color_off_white));
            ((CardView) viewHolder.itemView).setContentPadding(0, 0, 0, BehanceSDKUtils.getTranslucentNavHeight((AppCompatActivity) this.context));
        }
    }

    private void setupShareInfoItem(BehanceSDKProjectDetailInfoShareViewHolder behanceSDKProjectDetailInfoShareViewHolder) {
        behanceSDKProjectDetailInfoShareViewHolder.infoView.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectDetailRecyclerAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BehanceSDKProjectDetailRecyclerAdapter.this.callbacks != null) {
                    BehanceSDKProjectDetailRecyclerAdapter.this.callbacks.onProjectInfoClicked();
                }
            }
        });
        behanceSDKProjectDetailInfoShareViewHolder.shareText.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectDetailRecyclerAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BehanceSDKProjectDetailRecyclerAdapter.this.callbacks != null) {
                    BehanceSDKProjectDetailRecyclerAdapter.this.callbacks.onProjectShareClick();
                }
            }
        });
    }

    private void makeImageModule(BehanceSDKProjectModuleImageDTO behanceSDKProjectModuleImageDTO, LinearLayout linearLayout, int i) {
        SimpleDraweeView simpleDraweeView = new SimpleDraweeView(this.context);
        simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
        linearLayout.addView(simpleDraweeView);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) simpleDraweeView.getLayoutParams();
        double width = behanceSDKProjectModuleImageDTO.isFullBleed() ? this.displayWidth : (this.displayWidth * ((double) behanceSDKProjectModuleImageDTO.getWidth())) / 725.0d;
        layoutParams.height = (int) Math.round((((double) behanceSDKProjectModuleImageDTO.getHeight()) / ((double) behanceSDKProjectModuleImageDTO.getWidth())) * width);
        layoutParams.width = (int) Math.round(width);
        simpleDraweeView.getHierarchy().b(new ColorDrawable(this.context.getResources().getColor(R.color.bsdk_project_image_bg_overlay)));
        simpleDraweeView.setController(c.a().b(d.a(Uri.parse(behanceSDKProjectModuleImageDTO.getHDSrcUrl())).a(true).n()).c(d.a(Uri.parse(behanceSDKProjectModuleImageDTO.getSrcUrl())).a(true).n()).b(simpleDraweeView.getController()).a(true).p());
        simpleDraweeView.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectDetailRecyclerAdapter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        if (behanceSDKProjectModuleImageDTO.getCaptionFormattedText() != null && !behanceSDKProjectModuleImageDTO.getCaptionFormattedText().isEmpty()) {
            addCaptionSpacer(linearLayout);
            makeTextModule(behanceSDKProjectModuleImageDTO.getCaptionFormattedText(), linearLayout, this.styles.getCustomCSS(), this.displayWidth, i);
        }
    }

    private int findImageNumFromModuleNum(int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < this.projectModules.size(); i3++) {
            if (this.projectModules.get(i3) instanceof BehanceSDKProjectModuleImageDTO) {
                if (i3 != i) {
                    i2++;
                } else {
                    return i2;
                }
            }
        }
        return 0;
    }

    private void makeTextModule(String str, LinearLayout linearLayout, String str2, double d2, final int i) {
        WebView webView = new WebView(this.context);
        WebSettings settings = webView.getSettings();
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setJavaScriptEnabled(false);
        settings.setSupportZoom(false);
        settings.setDefaultTextEncodingName("UTF-8");
        settings.setTextZoom((int) (100.0d * Math.min(this.scaleFactor, 1.5d)));
        webView.setVerticalScrollBarEnabled(false);
        webView.setHorizontalScrollBarEnabled(false);
        String str3 = "<html><head><meta name=\"viewport\" content=\"width=725, maximum-scale=3.059\"/><style type=\"text/css\">" + str2 + "</style></head><body>" + str + "</body></html>";
        webView.setBackgroundColor(this.bgColor);
        linearLayout.addView(webView);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) webView.getLayoutParams();
        layoutParams.height = -2;
        layoutParams.width = (int) (0.85d * d2);
        webView.setLayoutParams(layoutParams);
        if (this.webViewHeights.get(i).intValue() <= 0) {
            webView.setWebViewClient(new WebViewClient() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectDetailRecyclerAdapter.4
                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView2, String str4) {
                    return super.shouldOverrideUrlLoading(webView2, str4);
                }

                @Override // android.webkit.WebViewClient
                public void onPageStarted(WebView webView2, String str4, Bitmap bitmap) {
                    super.onPageStarted(webView2, str4, bitmap);
                }

                @Override // android.webkit.WebViewClient
                public void onPageFinished(WebView webView2, String str4) {
                    super.onPageFinished(webView2, str4);
                    BehanceSDKProjectDetailRecyclerAdapter.this.webViewHeights.put(i, Integer.valueOf(webView2.getMeasuredHeight()));
                    webView2.setWebViewClient(null);
                }
            });
        } else {
            linearLayout.setMinimumHeight(this.webViewHeights.get(i).intValue());
        }
        webView.loadDataWithBaseURL(null, str3, MimeTypes.TEXT_HTML, "utf-8", null);
    }

    private void makeWVModule(BehanceSDKAbstractProjectModuleDTO behanceSDKAbstractProjectModuleDTO, LinearLayout linearLayout, final int i) {
        String embedHTML;
        if (behanceSDKAbstractProjectModuleDTO instanceof BehanceSDKProjectModuleEmbedDTO) {
            embedHTML = ((BehanceSDKProjectModuleEmbedDTO) behanceSDKAbstractProjectModuleDTO).getEmbedHTML();
        } else if (behanceSDKAbstractProjectModuleDTO instanceof BehanceSDKProjectModuleAudioDTO) {
            embedHTML = ((BehanceSDKProjectModuleAudioDTO) behanceSDKAbstractProjectModuleDTO).getEmbedHTML();
        } else {
            embedHTML = behanceSDKAbstractProjectModuleDTO instanceof BehanceSDKProjectModuleVideoDTO ? ((BehanceSDKProjectModuleVideoDTO) behanceSDKAbstractProjectModuleDTO).getEmbedHTML() : null;
        }
        WebView webView = new WebView(this.context);
        WebSettings settings = webView.getSettings();
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(false);
        settings.setDefaultTextEncodingName("UTF-8");
        String str = "<html><head><meta name=\"viewport\" content=\"width=725, maximum-scale=3.059\"/></head><body>" + embedHTML + "</body></html>";
        webView.setBackgroundColor(this.bgColor);
        linearLayout.addView(webView);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) webView.getLayoutParams();
        layoutParams.height = -2;
        layoutParams.width = (int) (this.displayWidth * 0.85d);
        webView.setLayoutParams(layoutParams);
        if (this.webViewHeights.get(i).intValue() <= 0) {
            webView.setWebViewClient(new WebViewClient() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectDetailRecyclerAdapter.5
                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView2, String str2) {
                    return super.shouldOverrideUrlLoading(webView2, str2);
                }

                @Override // android.webkit.WebViewClient
                public void onPageStarted(WebView webView2, String str2, Bitmap bitmap) {
                    super.onPageStarted(webView2, str2, bitmap);
                }

                @Override // android.webkit.WebViewClient
                public void onPageFinished(WebView webView2, String str2) {
                    super.onPageFinished(webView2, str2);
                    BehanceSDKProjectDetailRecyclerAdapter.this.webViewHeights.put(i, Integer.valueOf(webView2.getMeasuredHeight()));
                    webView2.setWebViewClient(null);
                }
            });
        } else {
            linearLayout.setMinimumHeight(this.webViewHeights.get(i).intValue());
        }
        webView.loadDataWithBaseURL(null, str, MimeTypes.TEXT_HTML, "utf-8", null);
        if (behanceSDKAbstractProjectModuleDTO instanceof BehanceSDKProjectModuleEmbedDTO) {
            BehanceSDKProjectModuleEmbedDTO behanceSDKProjectModuleEmbedDTO = (BehanceSDKProjectModuleEmbedDTO) behanceSDKAbstractProjectModuleDTO;
            if (behanceSDKProjectModuleEmbedDTO.getCaptionFormattedText() != null && !behanceSDKProjectModuleEmbedDTO.getCaptionFormattedText().isEmpty()) {
                addCaptionSpacer(linearLayout);
                makeTextModule(behanceSDKProjectModuleEmbedDTO.getCaptionFormattedText(), linearLayout, this.styles.getCustomCSS(), this.displayWidth, i);
            }
        }
    }

    private void addCaptionSpacer(LinearLayout linearLayout) {
        View view = new View(this.context);
        linearLayout.addView(view);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        layoutParams.height = (int) (16.0d * this.scaleFactor);
        layoutParams.width = -1;
        view.setLayoutParams(layoutParams);
    }

    private void addDividerSpacer(BehanceSDKProjectDetailItemViewHolder behanceSDKProjectDetailItemViewHolder, int i) {
        if (this.styles.getDividerCSS() == null) {
            if (this.styles.getModuleMarginBottom() > 0) {
                View view = new View(this.context);
                behanceSDKProjectDetailItemViewHolder.container.addView(view);
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
                layoutParams.height = (int) (((double) this.styles.getModuleMarginBottom()) * this.scaleFactor);
                layoutParams.width = -1;
                view.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        LinearLayout linearLayout = new LinearLayout(this.context);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        behanceSDKProjectDetailItemViewHolder.container.addView(linearLayout);
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) linearLayout.getLayoutParams();
        layoutParams2.height = (int) (((double) this.styles.getModuleMarginBottom()) * this.scaleFactor);
        layoutParams2.width = -1;
        linearLayout.setLayoutParams(layoutParams2);
        makeTextModule("<p class=\"divider\"></p>", linearLayout, this.styles.getDividerCSS(), this.displayWidth, i);
    }

    private void populateComment(BehanceSDKProjectDetailCommentViewHolder behanceSDKProjectDetailCommentViewHolder, int i) {
        final BehanceSDKProjectCommentDTO behanceSDKProjectCommentDTO = this.projectComments.get(i);
        behanceSDKProjectDetailCommentViewHolder.comment.setText(behanceSDKProjectCommentDTO.getContent());
        behanceSDKProjectDetailCommentViewHolder.name.setText(behanceSDKProjectCommentDTO.getUser().getDisplayName());
        behanceSDKProjectDetailCommentViewHolder.date.setText(getFormattedDate(behanceSDKProjectCommentDTO.getCreatedDate()));
        try {
            behanceSDKProjectDetailCommentViewHolder.avatar.setController(c.a().b(d.a(Uri.parse(behanceSDKProjectCommentDTO.getUser().findProfileImageInDecreasingSizeOrder(115).getUrl())).a(true).n()).b(behanceSDKProjectDetailCommentViewHolder.avatar.getController()).a(true).p());
        } catch (NullPointerException e2) {
            behanceSDKProjectDetailCommentViewHolder.avatar.setImageBitmap(null);
        }
        if (this.ownedByLoggedInUser || behanceSDKProjectCommentDTO.getUser().getId() == this.loggedInUserId) {
            behanceSDKProjectDetailCommentViewHolder.itemView.findViewById(R.id.bsdk_card_project_comment_container).setOnCreateContextMenuListener(new View.OnCreateContextMenuListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectDetailRecyclerAdapter.6
                @Override // android.view.View.OnCreateContextMenuListener
                public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
                    contextMenu.add(1, 1, 0, BehanceSDKProjectDetailRecyclerAdapter.this.context.getResources().getString(R.string.bsdk_menu_item_label_delete_comment)).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectDetailRecyclerAdapter.6.1
                        @Override // android.view.MenuItem.OnMenuItemClickListener
                        public boolean onMenuItemClick(MenuItem menuItem) {
                            if (BehanceSDKProjectDetailRecyclerAdapter.this.callbacks != null) {
                                BehanceSDKProjectDetailRecyclerAdapter.this.callbacks.onDeleteCommentRequested(behanceSDKProjectCommentDTO);
                                int iIndexOf = BehanceSDKProjectDetailRecyclerAdapter.this.projectComments.indexOf(behanceSDKProjectCommentDTO);
                                BehanceSDKProjectDetailRecyclerAdapter.this.projectComments.remove(iIndexOf);
                                if (BehanceSDKProjectDetailRecyclerAdapter.this.commentsCount == 1) {
                                    BehanceSDKProjectDetailRecyclerAdapter.this.notifyItemChanged(iIndexOf + BehanceSDKProjectDetailRecyclerAdapter.this.projectModules.size() + 4);
                                } else {
                                    BehanceSDKProjectDetailRecyclerAdapter.this.notifyItemRemoved(iIndexOf + BehanceSDKProjectDetailRecyclerAdapter.this.projectModules.size() + 4);
                                }
                                BehanceSDKProjectDetailRecyclerAdapter.this.commentsCount--;
                                BehanceSDKProjectDetailRecyclerAdapter.this.notifyItemChanged(BehanceSDKProjectDetailRecyclerAdapter.this.projectModules.size() + 3);
                            }
                            return true;
                        }
                    });
                }
            });
        }
    }

    private void makeCommentsHeader(BehanceSDKProjectDetailCommentsHeaderViewHolder behanceSDKProjectDetailCommentsHeaderViewHolder) {
        if (this.commentsAllowed) {
            behanceSDKProjectDetailCommentsHeaderViewHolder.commentHeaderContainer.setVisibility(0);
            behanceSDKProjectDetailCommentsHeaderViewHolder.commentsHeader.setText(this.context.getResources().getString(R.string.bsdk_project_detail_fragment_comments_header_text, new DecimalFormat("###,###,###,###").format(this.commentsCount)));
            return;
        }
        behanceSDKProjectDetailCommentsHeaderViewHolder.commentHeaderContainer.setVisibility(8);
    }

    private void setUpAppreciateItem(final BehanceSDKProjectDetailAppreciateViewHolder behanceSDKProjectDetailAppreciateViewHolder) {
        behanceSDKProjectDetailAppreciateViewHolder.itemView.setBackgroundColor(this.bgColor);
        if (this.projectAppreciated) {
            behanceSDKProjectDetailAppreciateViewHolder.appreciateView.getDrawable().setColorFilter(this.context.getResources().getColor(R.color.bsdk_project_detail_appreciated_badge_color), PorterDuff.Mode.SRC_ATOP);
            behanceSDKProjectDetailAppreciateViewHolder.appreciateThumb.setVisibility(8);
            behanceSDKProjectDetailAppreciateViewHolder.thankYouText.setVisibility(0);
        } else {
            behanceSDKProjectDetailAppreciateViewHolder.appreciateView.getDrawable().setColorFilter(this.context.getResources().getColor(R.color.bsdk_behance_blue), PorterDuff.Mode.SRC_ATOP);
            behanceSDKProjectDetailAppreciateViewHolder.appreciateView.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectDetailRecyclerAdapter.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (BehanceSDKProjectDetailRecyclerAdapter.this.callbacks != null) {
                        behanceSDKProjectDetailAppreciateViewHolder.appreciateView.setOnClickListener(null);
                        behanceSDKProjectDetailAppreciateViewHolder.appreciateView.getDrawable().setColorFilter(BehanceSDKProjectDetailRecyclerAdapter.this.context.getResources().getColor(R.color.bsdk_project_detail_appreciated_badge_color), PorterDuff.Mode.SRC_ATOP);
                        behanceSDKProjectDetailAppreciateViewHolder.appreciateThumb.setVisibility(8);
                        behanceSDKProjectDetailAppreciateViewHolder.thankYouText.setVisibility(0);
                        BehanceSDKProjectDetailRecyclerAdapter.this.projectAppreciated = true;
                        BehanceSDKProjectDetailRecyclerAdapter.this.callbacks.onProjectAppreciated();
                    }
                }
            });
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return Math.max(this.projectComments.size(), this.commentsAllowed ? 1 : 0) + this.projectModules.size() + 5;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (i == 0) {
            return 0;
        }
        if (i <= this.projectModules.size()) {
            return 1;
        }
        if (i == this.projectModules.size() + 1) {
            return 2;
        }
        if (i == this.projectModules.size() + 2) {
            return 4;
        }
        if (i == this.projectModules.size() + 3) {
            return 3;
        }
        if (i < getItemCount() - 1) {
            return this.projectComments.size() == 0 ? 5 : 6;
        }
        return 7;
    }

    public void setHeaderHeight(int i) {
        this.headerHeight = i;
    }

    public void addComments(List<BehanceSDKProjectCommentDTO> list) {
        this.projectComments.addAll(list);
        notifyDataSetChanged();
    }

    public void newCommentPosted(BehanceSDKProjectCommentDTO behanceSDKProjectCommentDTO) {
        this.projectComments.add(0, behanceSDKProjectCommentDTO);
        if (this.commentsCount == 0) {
            notifyItemChanged(this.projectModules.size() + 4);
        } else {
            notifyItemInserted(this.projectModules.size() + 4);
        }
        this.commentsCount++;
        notifyItemChanged(this.projectModules.size() + 3);
    }

    private CharSequence getFormattedDate(long j) {
        String string = this.context.getResources().getString(R.string.bsdk_wip_details_view_posted_on_date_format);
        Locale locale = this.context.getResources().getConfiguration().locale;
        Locale locale2 = locale == null ? Locale.ENGLISH : locale;
        try {
            return new SimpleDateFormat(string, locale2).format(Long.valueOf(j * 1000));
        } catch (IllegalArgumentException e2) {
            try {
                return new SimpleDateFormat("MMM d hh:mm aaa", locale2).format(Long.valueOf(1000 * j));
            } catch (IllegalArgumentException e3) {
                logger.error(e2, "Comments View date formatting error with locale %s", locale2);
                return null;
            }
        }
    }

    public void setMoreToLoad(boolean z) {
        this.moreToLoad = z;
        notifyItemChanged(getItemCount() - 1);
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }

    public List<BehanceSDKProjectCommentDTO> getProjectComments() {
        return this.projectComments;
    }
}
