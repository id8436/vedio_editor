package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.PopupMenu;
import android.support.v7.widget.RecyclerView;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Toast;
import com.b.a.h;
import com.behance.sdk.R;
import com.behance.sdk.dto.BehanceSDKTextSelectionState;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleAbstract;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleAudio;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleEmbed;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleImage;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleText;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleVideo;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectEditorModuleImageViewHolder;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectEditorModuleTextViewHolder;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectEditorModuleVideoLocalViewHolder;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectEditorModuleWarningViewHolder;
import com.behance.sdk.ui.animations.BehanceSDKResizeViewAnimation;
import com.behance.sdk.ui.components.BehanceSDKNotifyOnHeightChangeWebView;
import com.behance.sdk.ui.dialogs.BehanceSDKEmbedViewerDialogFragment;
import com.behance.sdk.util.BehanceSDKProjectEditorEmbedUtils;
import com.behance.sdk.util.BehanceSDKPublishTextUtils;
import com.behance.sdk.util.BehanceSDKTextEditorJSBridge;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import org.mortbay.jetty.MimeTypes;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorContentRecyclerAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements BehanceSDKNotifyOnHeightChangeWebView.HeightChangeCallbacks {
    private static final int MODULE_TYPE_AUDIO = 6;
    private static final int MODULE_TYPE_COLLECTION = 7;
    private static final int MODULE_TYPE_EMBED = 2;
    private static final int MODULE_TYPE_IMAGE = 0;
    private static final int MODULE_TYPE_TEXT = 1;
    private static final int MODULE_TYPE_UNKNOWN = 8;
    private static final int MODULE_TYPE_VIDEO_EMBED = 5;
    private static final int MODULE_TYPE_VIDEO_LOCAL = 3;
    private static final int MODULE_TYPE_VIDEO_PROCESSING = 4;
    private final int MODULE_MARGIN;
    private final int PROJECT_WIDTH;
    private final int TOOLS_HIDE_TRANSLATION;
    private AdapterCallbacks callbacks;
    private Context context;
    private List<BehanceSDKEditProjectModuleAbstract> modules;
    private WeakReference<View> shownOutlineContainer;
    private WeakReference<View> shownToolOverlay;
    private SparseIntArray webViewHeights;

    public interface AdapterCallbacks {
        void onEditTextCreated(int i, WebView webView);

        void onEditTextInActive();

        void onEditTextWebViewActive(WebView webView);

        void onModuleRemoved(int i);

        void onModuleReplaceRequested(int i);

        void onSelectionStateChanged(BehanceSDKTextSelectionState behanceSDKTextSelectionState);

        void scrollForModuleSelection(int i);
    }

    public BehanceSDKProjectEditorContentRecyclerAdapter(Context context, @Nullable List<BehanceSDKEditProjectModuleAbstract> list, AdapterCallbacks adapterCallbacks) {
        this.context = context;
        this.modules = list == null ? new ArrayList<>() : list;
        this.callbacks = adapterCallbacks;
        this.TOOLS_HIDE_TRANSLATION = context.getResources().getDimensionPixelSize(R.dimen.bsdk_module_tools_height) / 2;
        this.PROJECT_WIDTH = context.getResources().getDisplayMetrics().widthPixels;
        this.MODULE_MARGIN = context.getResources().getDimensionPixelSize(R.dimen.bsdk_module_padding);
        this.webViewHeights = new SparseIntArray();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        switch (i) {
            case 0:
                return new BehanceSDKProjectEditorModuleImageViewHolder(LayoutInflater.from(this.context).inflate(R.layout.bsdk_card_project_editor_module_image, viewGroup, false));
            case 1:
                return new BehanceSDKProjectEditorModuleTextViewHolder(LayoutInflater.from(this.context).inflate(R.layout.bsdk_card_project_editor_module_text, viewGroup, false));
            case 2:
            case 5:
            case 6:
                return new BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder(LayoutInflater.from(this.context).inflate(R.layout.bsdk_card_project_editor_module_video_audio_embed, viewGroup, false));
            case 3:
                return new BehanceSDKProjectEditorModuleVideoLocalViewHolder(LayoutInflater.from(this.context).inflate(R.layout.bsdk_card_project_editor_module_video_local, viewGroup, false));
            case 4:
            default:
                return new BehanceSDKProjectEditorModuleWarningViewHolder(LayoutInflater.from(this.context).inflate(R.layout.bsdk_card_project_editor_module_warning, viewGroup, false));
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) throws IOException {
        BehanceSDKEditProjectModuleAbstract behanceSDKEditProjectModuleAbstract = this.modules.get(i);
        if (behanceSDKEditProjectModuleAbstract instanceof BehanceSDKEditProjectModuleImage) {
            setupImage((BehanceSDKProjectEditorModuleImageViewHolder) viewHolder, (BehanceSDKEditProjectModuleImage) behanceSDKEditProjectModuleAbstract);
            return;
        }
        if (behanceSDKEditProjectModuleAbstract instanceof BehanceSDKEditProjectModuleText) {
            setupTextModule((BehanceSDKProjectEditorModuleTextViewHolder) viewHolder, (BehanceSDKEditProjectModuleText) behanceSDKEditProjectModuleAbstract);
            return;
        }
        if (behanceSDKEditProjectModuleAbstract instanceof BehanceSDKEditProjectModuleEmbed) {
            setupEmbed((BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder) viewHolder, (BehanceSDKEditProjectModuleEmbed) behanceSDKEditProjectModuleAbstract);
            return;
        }
        if (behanceSDKEditProjectModuleAbstract instanceof BehanceSDKEditProjectModuleVideo) {
            setupVideoAudioEmbed(viewHolder, behanceSDKEditProjectModuleAbstract);
            return;
        }
        if (behanceSDKEditProjectModuleAbstract instanceof BehanceSDKEditProjectModuleAudio) {
            setupEmbed((BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder) viewHolder, ((BehanceSDKEditProjectModuleAudio) behanceSDKEditProjectModuleAbstract).getHtml(), ((BehanceSDKEditProjectModuleAudio) behanceSDKEditProjectModuleAbstract).getId());
        } else if (viewHolder instanceof BehanceSDKProjectEditorModuleWarningViewHolder) {
            BehanceSDKProjectEditorModuleWarningViewHolder behanceSDKProjectEditorModuleWarningViewHolder = (BehanceSDKProjectEditorModuleWarningViewHolder) viewHolder;
            behanceSDKProjectEditorModuleWarningViewHolder.bsdkCardProjectEditorModuleWarningTitle.setText(R.string.bsdk_project_editor_unsupported_module_title);
            behanceSDKProjectEditorModuleWarningViewHolder.bsdkCardProjectEditorModuleWarningDescription.setText(R.string.bsdk_project_editor_unsupported_module_description);
            behanceSDKProjectEditorModuleWarningViewHolder.bsdkCardProjectEditorModuleWarningIcon.setImageResource(R.drawable.bsdk_icon_project_editor_unsupported_module);
        }
    }

    private void setupImage(final BehanceSDKProjectEditorModuleImageViewHolder behanceSDKProjectEditorModuleImageViewHolder, BehanceSDKEditProjectModuleImage behanceSDKEditProjectModuleImage) {
        behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageContainer.setEnabled(false);
        int dimensionPixelSize = behanceSDKEditProjectModuleImage.isFullBleed() ? 0 : this.context.getResources().getDimensionPixelSize(R.dimen.bsdk_module_reg_padding_outer);
        ((RecyclerView.LayoutParams) behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageContainer.getLayoutParams()).rightMargin = dimensionPixelSize;
        ((RecyclerView.LayoutParams) behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageContainer.getLayoutParams()).leftMargin = dimensionPixelSize;
        int i = this.PROJECT_WIDTH - (behanceSDKEditProjectModuleImage.isFullBleed() ? 0 : this.MODULE_MARGIN * 2);
        behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageFullBleed.setImageResource(behanceSDKEditProjectModuleImage.isFullBleed() ? R.drawable.bsdk_icon_project_editor_contract : R.drawable.bsdk_icon_project_editor_expand);
        behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageView.getLayoutParams().width = i;
        behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageView.getLayoutParams().height = (int) (((1.0d * ((double) i)) * ((double) behanceSDKEditProjectModuleImage.getHeight())) / ((double) behanceSDKEditProjectModuleImage.getWidth()));
        if (behanceSDKEditProjectModuleImage.isNewModule()) {
            h.b(this.context).a(new File(behanceSDKEditProjectModuleImage.getPath())).a(behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageView);
        } else {
            h.b(this.context).a(behanceSDKEditProjectModuleImage.getDisp()).a(behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageView);
        }
        behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageToolsContainer.setAlpha(0.0f);
        behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageToolsContainer.setTranslationY(this.TOOLS_HIDE_TRANSLATION);
        behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageToolsContainer.setVisibility(8);
        behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageView.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageToolsContainer.getTranslationY() == 0.0f) {
                    BehanceSDKProjectEditorContentRecyclerAdapter.this.hideToolOverlay(behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageToolsContainer, behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageContainer);
                } else {
                    BehanceSDKProjectEditorContentRecyclerAdapter.this.showToolOverlay(behanceSDKProjectEditorModuleImageViewHolder.itemView, behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageToolsContainer, behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageContainer);
                }
            }
        });
        behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageFullBleed.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                final BehanceSDKEditProjectModuleImage behanceSDKEditProjectModuleImage2 = (BehanceSDKEditProjectModuleImage) BehanceSDKProjectEditorContentRecyclerAdapter.this.modules.get(behanceSDKProjectEditorModuleImageViewHolder.getAdapterPosition());
                if (behanceSDKEditProjectModuleImage2.getWidth() <= 1400) {
                    Toast.makeText(BehanceSDKProjectEditorContentRecyclerAdapter.this.context, R.string.bsdk_project_editor_full_bleed_image_unsupported_message, 1).show();
                    return;
                }
                behanceSDKEditProjectModuleImage2.toggleFullBleed();
                behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageFullBleed.setImageResource(behanceSDKEditProjectModuleImage2.isFullBleed() ? R.drawable.bsdk_icon_project_editor_contract : R.drawable.bsdk_icon_project_editor_expand);
                BehanceSDKResizeViewAnimation behanceSDKResizeViewAnimation = new BehanceSDKResizeViewAnimation(behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageView, BehanceSDKProjectEditorContentRecyclerAdapter.this.PROJECT_WIDTH - (behanceSDKEditProjectModuleImage2.isFullBleed() ? 0 : BehanceSDKProjectEditorContentRecyclerAdapter.this.MODULE_MARGIN * 2));
                behanceSDKResizeViewAnimation.setDuration(100L);
                behanceSDKResizeViewAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.2.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                        behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageContainer.setEnabled(false);
                        ((RecyclerView.LayoutParams) behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageContainer.getLayoutParams()).rightMargin = 0;
                        ((RecyclerView.LayoutParams) behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageContainer.getLayoutParams()).leftMargin = 0;
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageContainer.setEnabled(true);
                        int dimensionPixelSize2 = behanceSDKEditProjectModuleImage2.isFullBleed() ? 0 : BehanceSDKProjectEditorContentRecyclerAdapter.this.context.getResources().getDimensionPixelSize(R.dimen.bsdk_module_reg_padding_outer);
                        ((RecyclerView.LayoutParams) behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageContainer.getLayoutParams()).rightMargin = dimensionPixelSize2;
                        ((RecyclerView.LayoutParams) behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageContainer.getLayoutParams()).leftMargin = dimensionPixelSize2;
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }
                });
                behanceSDKProjectEditorModuleImageViewHolder.itemView.startAnimation(behanceSDKResizeViewAnimation);
            }
        });
        behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageDelete.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKProjectEditorContentRecyclerAdapter.this.deleteModule(behanceSDKProjectEditorModuleImageViewHolder.getAdapterPosition());
            }
        });
        behanceSDKProjectEditorModuleImageViewHolder.bsdkCardProjectEditorModuleImageReplace.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BehanceSDKProjectEditorContentRecyclerAdapter.this.callbacks != null) {
                    BehanceSDKProjectEditorContentRecyclerAdapter.this.callbacks.onModuleReplaceRequested(behanceSDKProjectEditorModuleImageViewHolder.getAdapterPosition());
                }
            }
        });
    }

    private void setupTextModule(final BehanceSDKProjectEditorModuleTextViewHolder behanceSDKProjectEditorModuleTextViewHolder, final BehanceSDKEditProjectModuleText behanceSDKEditProjectModuleText) {
        behanceSDKProjectEditorModuleTextViewHolder.bsdkCardProjectEditorModuleTextContainer.setEnabled(false);
        behanceSDKProjectEditorModuleTextViewHolder.bsdkCardProjectEditorModuleTextWebView.setBackgroundColor(0);
        if (Build.VERSION.SDK_INT < 18) {
            behanceSDKProjectEditorModuleTextViewHolder.bsdkCardProjectEditorModuleTextWebView.clearView();
        } else {
            behanceSDKProjectEditorModuleTextViewHolder.bsdkCardProjectEditorModuleTextWebView.loadUrl("about:blank");
        }
        try {
            BehanceSDKPublishTextUtils.setupTextEditWebView(behanceSDKProjectEditorModuleTextViewHolder.bsdkCardProjectEditorModuleTextWebView, this.context, new BehanceSDKTextEditorJSBridge.ITextEditorJSBridge() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.5
                @Override // com.behance.sdk.util.BehanceSDKTextEditorJSBridge.ITextEditorJSBridge
                public void onTextChanged(String str) {
                    ((BehanceSDKEditProjectModuleText) BehanceSDKProjectEditorContentRecyclerAdapter.this.modules.get(behanceSDKProjectEditorModuleTextViewHolder.getAdapterPosition())).setHtml(str);
                }

                @Override // com.behance.sdk.util.BehanceSDKTextEditorJSBridge.ITextEditorJSBridge
                public void onLoadComplete() {
                    if (behanceSDKEditProjectModuleText.getHtml() == null || behanceSDKEditProjectModuleText.getHtml().isEmpty()) {
                        BehanceSDKProjectEditorContentRecyclerAdapter.this.callbacks.onEditTextCreated(behanceSDKProjectEditorModuleTextViewHolder.getAdapterPosition(), behanceSDKProjectEditorModuleTextViewHolder.bsdkCardProjectEditorModuleTextWebView);
                    } else {
                        BehanceSDKPublishTextUtils.setText(behanceSDKProjectEditorModuleTextViewHolder.bsdkCardProjectEditorModuleTextWebView, behanceSDKEditProjectModuleText.getHtml());
                    }
                }

                @Override // com.behance.sdk.util.BehanceSDKTextEditorJSBridge.ITextEditorJSBridge
                public void onFocus() {
                    BehanceSDKProjectEditorContentRecyclerAdapter.this.callbacks.onEditTextWebViewActive(behanceSDKProjectEditorModuleTextViewHolder.bsdkCardProjectEditorModuleTextWebView);
                    BehanceSDKProjectEditorContentRecyclerAdapter.this.runOnUiThread(new Runnable() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            behanceSDKProjectEditorModuleTextViewHolder.bsdkCardProjectEditorModuleTextOverlay.setVisibility(8);
                            behanceSDKProjectEditorModuleTextViewHolder.bsdkCardProjectEditorModuleTextContainer.setEnabled(true);
                        }
                    });
                }

                @Override // com.behance.sdk.util.BehanceSDKTextEditorJSBridge.ITextEditorJSBridge
                public void onBlur() {
                    BehanceSDKPublishTextUtils.checkEmpty(behanceSDKProjectEditorModuleTextViewHolder.bsdkCardProjectEditorModuleTextWebView);
                    BehanceSDKProjectEditorContentRecyclerAdapter.this.runOnUiThread(new Runnable() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.5.2
                        @Override // java.lang.Runnable
                        public void run() {
                            behanceSDKProjectEditorModuleTextViewHolder.bsdkCardProjectEditorModuleTextOverlay.setVisibility(0);
                            behanceSDKProjectEditorModuleTextViewHolder.bsdkCardProjectEditorModuleTextContainer.setEnabled(false);
                        }
                    });
                }

                @Override // com.behance.sdk.util.BehanceSDKTextEditorJSBridge.ITextEditorJSBridge
                public void onSelectionChanged(boolean z) {
                }

                @Override // com.behance.sdk.util.BehanceSDKTextEditorJSBridge.ITextEditorJSBridge
                public void onKeyUp() {
                }

                @Override // com.behance.sdk.util.BehanceSDKTextEditorJSBridge.ITextEditorJSBridge
                public void onEditorLoaded() {
                }

                @Override // com.behance.sdk.util.BehanceSDKTextEditorJSBridge.ITextEditorJSBridge
                public void onSelectionStateFetched(BehanceSDKTextSelectionState behanceSDKTextSelectionState) {
                    BehanceSDKProjectEditorContentRecyclerAdapter.this.callbacks.onSelectionStateChanged(behanceSDKTextSelectionState);
                }

                @Override // com.behance.sdk.util.BehanceSDKTextEditorJSBridge.ITextEditorJSBridge
                public void onEmptyCheck(boolean z) {
                    if (z) {
                        BehanceSDKProjectEditorContentRecyclerAdapter.this.runOnUiThread(new Runnable() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.5.3
                            @Override // java.lang.Runnable
                            public void run() {
                                BehanceSDKProjectEditorContentRecyclerAdapter.this.deleteModule(behanceSDKProjectEditorModuleTextViewHolder.getAdapterPosition());
                            }
                        });
                    }
                }
            });
            behanceSDKProjectEditorModuleTextViewHolder.bsdkCardProjectEditorModuleTextOverlay.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BehanceSDKProjectEditorContentRecyclerAdapter.this.callbacks.onEditTextInActive();
                    BehanceSDKProjectEditorContentRecyclerAdapter.this.clearCurrentToolOverlay();
                    behanceSDKProjectEditorModuleTextViewHolder.bsdkCardProjectEditorModuleTextContainer.setEnabled(true);
                    final PopupMenu popupMenu = new PopupMenu(BehanceSDKProjectEditorContentRecyclerAdapter.this.context, view);
                    popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.6.1
                        @Override // android.support.v7.widget.PopupMenu.OnMenuItemClickListener
                        public boolean onMenuItemClick(MenuItem menuItem) {
                            popupMenu.setOnDismissListener(null);
                            if (menuItem.getItemId() == R.id.bsdk_menu_editor_edit) {
                                BehanceSDKPublishTextUtils.focus(behanceSDKProjectEditorModuleTextViewHolder.bsdkCardProjectEditorModuleTextWebView);
                                BehanceSDKPublishTextUtils.moveCursorToEnd(behanceSDKProjectEditorModuleTextViewHolder.bsdkCardProjectEditorModuleTextWebView);
                                return true;
                            }
                            if (menuItem.getItemId() == R.id.bsdk_menu_editor_delete) {
                                BehanceSDKProjectEditorContentRecyclerAdapter.this.deleteModule(behanceSDKProjectEditorModuleTextViewHolder.getAdapterPosition());
                                return true;
                            }
                            return false;
                        }
                    });
                    popupMenu.inflate(R.menu.bsdk_menu_editor_text_module);
                    popupMenu.setGravity(5);
                    popupMenu.setOnDismissListener(new PopupMenu.OnDismissListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.6.2
                        @Override // android.support.v7.widget.PopupMenu.OnDismissListener
                        public void onDismiss(PopupMenu popupMenu2) {
                            behanceSDKProjectEditorModuleTextViewHolder.bsdkCardProjectEditorModuleTextContainer.setEnabled(false);
                        }
                    });
                    popupMenu.show();
                }
            });
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    private void setupVideoAudioEmbed(RecyclerView.ViewHolder viewHolder, BehanceSDKEditProjectModuleAbstract behanceSDKEditProjectModuleAbstract) throws IOException {
        if (viewHolder instanceof BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder) {
            setupEmbed((BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder) viewHolder, ((BehanceSDKEditProjectModuleVideo) behanceSDKEditProjectModuleAbstract).getHtml(), behanceSDKEditProjectModuleAbstract.getId());
            return;
        }
        if (viewHolder instanceof BehanceSDKProjectEditorModuleVideoLocalViewHolder) {
            final BehanceSDKProjectEditorModuleVideoLocalViewHolder behanceSDKProjectEditorModuleVideoLocalViewHolder = (BehanceSDKProjectEditorModuleVideoLocalViewHolder) viewHolder;
            behanceSDKProjectEditorModuleVideoLocalViewHolder.bsdkCardProjectEditorModuleVideoContainer.setEnabled(false);
            behanceSDKProjectEditorModuleVideoLocalViewHolder.bsdkCardProjectEditorModuleVideoPreview.getLayoutParams().width = this.PROJECT_WIDTH - (this.MODULE_MARGIN * 2);
            BehanceSDKEditProjectModuleVideo behanceSDKEditProjectModuleVideo = (BehanceSDKEditProjectModuleVideo) behanceSDKEditProjectModuleAbstract;
            if (behanceSDKEditProjectModuleVideo.getWidth() <= 0 || behanceSDKEditProjectModuleVideo.getHeight() <= 0) {
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                mediaMetadataRetriever.setDataSource(((BehanceSDKEditProjectModuleVideo) behanceSDKEditProjectModuleAbstract).getPath());
                behanceSDKEditProjectModuleVideo.setHeight(Integer.valueOf(mediaMetadataRetriever.extractMetadata(19)).intValue());
                behanceSDKEditProjectModuleVideo.setWidth(Integer.valueOf(mediaMetadataRetriever.extractMetadata(18)).intValue());
                mediaMetadataRetriever.release();
            }
            behanceSDKProjectEditorModuleVideoLocalViewHolder.bsdkCardProjectEditorModuleVideoPreview.getLayoutParams().height = (int) (((1.0d * ((double) (this.PROJECT_WIDTH - (this.MODULE_MARGIN * 2)))) * ((double) behanceSDKEditProjectModuleVideo.getHeight())) / ((double) behanceSDKEditProjectModuleVideo.getWidth()));
            h.b(this.context).a(new File(((BehanceSDKEditProjectModuleVideo) behanceSDKEditProjectModuleAbstract).getPath())).a(behanceSDKProjectEditorModuleVideoLocalViewHolder.bsdkCardProjectEditorModuleVideoPreview);
            behanceSDKProjectEditorModuleVideoLocalViewHolder.bsdkCardProjectEditorModuleVideoToolsContainer.setAlpha(0.0f);
            behanceSDKProjectEditorModuleVideoLocalViewHolder.bsdkCardProjectEditorModuleVideoToolsContainer.setTranslationY(this.TOOLS_HIDE_TRANSLATION);
            behanceSDKProjectEditorModuleVideoLocalViewHolder.bsdkCardProjectEditorModuleVideoPreview.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (behanceSDKProjectEditorModuleVideoLocalViewHolder.bsdkCardProjectEditorModuleVideoToolsContainer.getTranslationY() == 0.0f) {
                        BehanceSDKProjectEditorContentRecyclerAdapter.this.hideToolOverlay(behanceSDKProjectEditorModuleVideoLocalViewHolder.bsdkCardProjectEditorModuleVideoToolsContainer, behanceSDKProjectEditorModuleVideoLocalViewHolder.bsdkCardProjectEditorModuleVideoContainer);
                    } else {
                        BehanceSDKProjectEditorContentRecyclerAdapter.this.showToolOverlay(behanceSDKProjectEditorModuleVideoLocalViewHolder.itemView, behanceSDKProjectEditorModuleVideoLocalViewHolder.bsdkCardProjectEditorModuleVideoToolsContainer, behanceSDKProjectEditorModuleVideoLocalViewHolder.bsdkCardProjectEditorModuleVideoContainer);
                    }
                }
            });
            behanceSDKProjectEditorModuleVideoLocalViewHolder.bsdkCardProjectEditorModuleDelete.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.8
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BehanceSDKProjectEditorContentRecyclerAdapter.this.deleteModule(behanceSDKProjectEditorModuleVideoLocalViewHolder.getAdapterPosition());
                }
            });
            behanceSDKProjectEditorModuleVideoLocalViewHolder.bsdkCardProjectEditorModulePlay.setVisibility(8);
            return;
        }
        if (viewHolder instanceof BehanceSDKProjectEditorModuleWarningViewHolder) {
            BehanceSDKProjectEditorModuleWarningViewHolder behanceSDKProjectEditorModuleWarningViewHolder = (BehanceSDKProjectEditorModuleWarningViewHolder) viewHolder;
            behanceSDKProjectEditorModuleWarningViewHolder.bsdkCardProjectEditorModuleWarningTitle.setText(R.string.bsdk_project_editor_video_processing_title);
            behanceSDKProjectEditorModuleWarningViewHolder.bsdkCardProjectEditorModuleWarningDescription.setText(R.string.bsdk_project_editor_video_processing_description);
            behanceSDKProjectEditorModuleWarningViewHolder.bsdkCardProjectEditorModuleWarningIcon.setImageResource(R.drawable.bsdk_icon_project_editor_video_camera);
        }
    }

    private void setupEmbed(final BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder, final BehanceSDKEditProjectModuleEmbed behanceSDKEditProjectModuleEmbed) {
        setupEmbed(behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder, behanceSDKEditProjectModuleEmbed.getHtml(), behanceSDKEditProjectModuleEmbed.isFullBleed(), behanceSDKEditProjectModuleEmbed.getId());
        behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleFullBleed.setImageResource(behanceSDKEditProjectModuleEmbed.isFullBleed() ? R.drawable.bsdk_icon_project_editor_contract : R.drawable.bsdk_icon_project_editor_expand);
        behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleFullBleed.setVisibility(0);
        behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleFullBleed.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                behanceSDKEditProjectModuleEmbed.toggleFullBleed();
                behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleFullBleed.setImageResource(behanceSDKEditProjectModuleEmbed.isFullBleed() ? R.drawable.bsdk_icon_project_editor_contract : R.drawable.bsdk_icon_project_editor_expand);
                BehanceSDKProjectEditorContentRecyclerAdapter.this.webViewHeights.put(behanceSDKEditProjectModuleEmbed.getId(), 0);
                BehanceSDKProjectEditorContentRecyclerAdapter.this.notifyItemChanged(behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.getAdapterPosition());
            }
        });
    }

    private void setupEmbed(BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder, String str, int i) {
        setupEmbed(behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder, str, false, i);
        behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleFullBleed.setVisibility(4);
        behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleFullBleed.setOnClickListener(null);
    }

    private void setupEmbed(final BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder, final String str, boolean z, int i) {
        behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleWebContainer.setEnabled(false);
        WebSettings settings = behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleWebView.getSettings();
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(false);
        settings.setDefaultTextEncodingName("UTF-8");
        int dimensionPixelSize = this.context.getResources().getDimensionPixelSize(R.dimen.bsdk_module_reg_padding_inner);
        behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleWebContainer.setPadding(z ? 0 : dimensionPixelSize, dimensionPixelSize, z ? 0 : dimensionPixelSize, dimensionPixelSize);
        ((RecyclerView.LayoutParams) behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.itemView.getLayoutParams()).leftMargin = z ? 0 : this.context.getResources().getDimensionPixelSize(R.dimen.bsdk_module_reg_padding_outer);
        ((RecyclerView.LayoutParams) behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.itemView.getLayoutParams()).rightMargin = z ? 0 : this.context.getResources().getDimensionPixelSize(R.dimen.bsdk_module_reg_padding_outer);
        behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleWebView.loadDataWithBaseURL(null, "<html><head><meta name=\"viewport\" content=\"width=" + BehanceSDKProjectEditorEmbedUtils.getWidth(str) + "\"/></head><body>" + BehanceSDKProjectEditorEmbedUtils.setHtmlPosition(str) + "</body></html>", MimeTypes.TEXT_HTML, "utf-8", null);
        behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleWebToolsContainer.setAlpha(0.0f);
        behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleWebToolsContainer.setTranslationY(this.TOOLS_HIDE_TRANSLATION);
        behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleWebClickHandler.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleWebToolsContainer.getTranslationY() == 0.0f) {
                    BehanceSDKProjectEditorContentRecyclerAdapter.this.hideToolOverlay(behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleWebToolsContainer, behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleWebContainer);
                } else {
                    BehanceSDKProjectEditorContentRecyclerAdapter.this.showToolOverlay(behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.itemView, behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleWebToolsContainer, behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleWebContainer);
                }
            }
        });
        behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleDelete.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKProjectEditorContentRecyclerAdapter.this.deleteModule(behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.getAdapterPosition());
            }
        });
        behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModulePlay.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKEmbedViewerDialogFragment behanceSDKEmbedViewerDialogFragment = new BehanceSDKEmbedViewerDialogFragment();
                Bundle bundle = new Bundle();
                bundle.putString(BehanceSDKEmbedViewerDialogFragment.ARGS_EXTRA_EMBED, str);
                behanceSDKEmbedViewerDialogFragment.setArguments(bundle);
                behanceSDKEmbedViewerDialogFragment.show(((AppCompatActivity) BehanceSDKProjectEditorContentRecyclerAdapter.this.context).getSupportFragmentManager(), "FRAGMENT_TAG_PROJECT_EDITOR_VIEW_EMBED");
            }
        });
        behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleWebView.setCallbacks(this, i);
        if (this.webViewHeights.get(i) > 0) {
            behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleWebView.setMinimumHeight(this.webViewHeights.get(i));
            behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleWebView.setHeight(this.webViewHeights.get(i));
        } else {
            behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleWebView.setMinimumHeight(0);
            behanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.bsdkCardProjectEditorModuleWebView.setHeight(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCurrentToolOverlay() {
        if (this.shownToolOverlay != null && this.shownToolOverlay.get() != null) {
            hideToolOverlay(this.shownToolOverlay.get(), this.shownOutlineContainer != null ? this.shownOutlineContainer.get() : null);
            this.shownToolOverlay.clear();
            if (this.shownOutlineContainer != null) {
                this.shownOutlineContainer.clear();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showToolOverlay(View view, View view2, @Nullable View view3) {
        if (this.callbacks != null) {
            this.callbacks.scrollForModuleSelection(view.getBottom());
            this.callbacks.onEditTextInActive();
        }
        clearCurrentToolOverlay();
        view2.setVisibility(0);
        view2.animate().translationY(0.0f).alpha(1.0f).setDuration(100L).withEndAction(null).setListener(null).setInterpolator(new DecelerateInterpolator()).start();
        this.shownToolOverlay = new WeakReference<>(view2);
        if (view3 != null) {
            this.shownOutlineContainer = new WeakReference<>(view3);
            view3.setEnabled(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideToolOverlay(final View view, @Nullable View view2) {
        view.setVisibility(0);
        view.animate().translationY(this.TOOLS_HIDE_TRANSLATION).alpha(0.0f).setDuration(100L).withEndAction(new Runnable() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.13
            @Override // java.lang.Runnable
            public void run() {
                view.setVisibility(8);
            }
        }).setListener(null).setInterpolator(new AccelerateInterpolator()).start();
        if (view2 != null) {
            view2.setEnabled(false);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (this.modules.get(i) instanceof BehanceSDKEditProjectModuleImage) {
            return 0;
        }
        if (this.modules.get(i) instanceof BehanceSDKEditProjectModuleText) {
            return 1;
        }
        if (this.modules.get(i) instanceof BehanceSDKEditProjectModuleEmbed) {
            return 2;
        }
        if (this.modules.get(i) instanceof BehanceSDKEditProjectModuleVideo) {
            BehanceSDKEditProjectModuleVideo behanceSDKEditProjectModuleVideo = (BehanceSDKEditProjectModuleVideo) this.modules.get(i);
            if (behanceSDKEditProjectModuleVideo.getHtml() != null) {
                return 5;
            }
            if (behanceSDKEditProjectModuleVideo.getPath() != null) {
                return 3;
            }
            return 4;
        }
        if (this.modules.get(i) instanceof BehanceSDKEditProjectModuleAudio) {
            return 6;
        }
        return 8;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.modules.size();
    }

    public void setModules(List<BehanceSDKEditProjectModuleAbstract> list) {
        this.modules = list;
        notifyDataSetChanged();
    }

    public void deleteModule(int i) {
        this.modules.remove(i);
        notifyItemRemoved(i);
        if (this.callbacks != null) {
            this.callbacks.onModuleRemoved(i);
        }
    }

    public void addModule(BehanceSDKEditProjectModuleAbstract behanceSDKEditProjectModuleAbstract) {
        addModule(this.modules.size(), behanceSDKEditProjectModuleAbstract);
    }

    public void addModule(int i, BehanceSDKEditProjectModuleAbstract behanceSDKEditProjectModuleAbstract) {
        this.modules.add(i, behanceSDKEditProjectModuleAbstract);
        notifyItemInserted(i);
    }

    public void replaceModule(int i, BehanceSDKEditProjectModuleAbstract behanceSDKEditProjectModuleAbstract) {
        this.modules.remove(i);
        this.modules.add(i, behanceSDKEditProjectModuleAbstract);
        notifyItemChanged(i);
    }

    @Override // com.behance.sdk.ui.components.BehanceSDKNotifyOnHeightChangeWebView.HeightChangeCallbacks
    public void onHeightChange(int i, int i2) {
        this.webViewHeights.put(i2, i);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
        if ((viewHolder instanceof BehanceSDKProjectEditorModuleTextViewHolder) && ((BehanceSDKProjectEditorModuleTextViewHolder) viewHolder).bsdkCardProjectEditorModuleTextWebView.hasFocus() && this.callbacks != null) {
            this.callbacks.onEditTextInActive();
        }
        super.onViewDetachedFromWindow(viewHolder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runOnUiThread(Runnable runnable) {
        ((AppCompatActivity) this.context).runOnUiThread(runnable);
    }

    public boolean isModuleFullBleed(int i) {
        return i < this.modules.size() && (this.modules.get(i) instanceof BehanceSDKEditProjectModuleImage) && ((BehanceSDKEditProjectModuleImage) this.modules.get(i)).isFullBleed();
    }
}
