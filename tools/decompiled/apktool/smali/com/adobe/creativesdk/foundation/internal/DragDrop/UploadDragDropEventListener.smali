.class public Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;
.super Ljava/lang/Object;
.source "UploadDragDropEventListener.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# static fields
.field public static T:Ljava/lang/String;


# instance fields
.field private _newSelectionFrame:Landroid/view/View;

.field container:Landroid/widget/FrameLayout;

.field containerDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

.field isEmptyStateViewHided:Z

.field layoutInflater:Landroid/view/LayoutInflater;

.field mListenerType:Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener$ListenerType;

.field selectionImageView:Landroid/widget/ImageView;

.field targetAssetFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

.field uploadFolderHref:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener$ListenerType;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->isEmptyStateViewHided:Z

    .line 53
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->targetAssetFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 54
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->uploadFolderHref:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->mListenerType:Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener$ListenerType;

    .line 56
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->containerDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 57
    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 61
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 62
    packed-switch v0, :pswitch_data_0

    .line 170
    const-string/jumbo v0, "DragDrop Example"

    const-string/jumbo v2, "Unknown action type received by OnDragListener."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 174
    :goto_0
    return v0

    .line 64
    :pswitch_0
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getInstance(Ljava/lang/Class;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    move-result-object v0

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->targetAssetFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->haveSessionForEndPoint(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->T:Ljava/lang/String;

    const-string/jumbo v2, "Already session found"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 66
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 71
    const-string/jumbo v3, "text/vnd.android.intent"

    invoke-virtual {v0, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "text/html"

    invoke-virtual {v0, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "text/plain"

    .line 72
    invoke-virtual {v0, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->T:Ljava/lang/String;

    const-string/jumbo v2, " Unsupported MimeTypes for dragged content. Returning false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 74
    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->containerDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->containerDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    if-eqz v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->containerDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    .line 78
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isFloatingMenuExpanded()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isEmptyFolderViewVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 81
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->hideEmptyStateView()V

    .line 82
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->isEmptyStateViewHided:Z

    .line 86
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->layoutInflater:Landroid/view/LayoutInflater;

    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->mListenerType:Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener$ListenerType;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener$ListenerType;->ROOT:Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener$ListenerType;

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener$ListenerType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 89
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_container_content_assetsview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->container:Landroid/widget/FrameLayout;

    .line 90
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->layoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assetcell_drag_drop_frame:I

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->_newSelectionFrame:Landroid/view/View;

    .line 91
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 92
    const/16 v1, 0x8

    .line 93
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 94
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->_newSelectionFrame:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->container:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    .line 97
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->container:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->_newSelectionFrame:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :cond_5
    :goto_1
    move v0, v2

    .line 106
    goto/16 :goto_0

    .line 102
    :cond_6
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->asset_content_holder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->container:Landroid/widget/FrameLayout;

    .line 103
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->layoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assetcell_drag_drop_frame:I

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->_newSelectionFrame:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->_newSelectionFrame:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->_newSelectionFrame:Landroid/view/View;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->selectionImageView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->selectionImageView:Landroid/widget/ImageView;

    .line 110
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->selectionImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->blue_rectangle_dash_line:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->mListenerType:Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener$ListenerType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener$ListenerType;->FOLDER:Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener$ListenerType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener$ListenerType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->container:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    .line 112
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->container:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->_newSelectionFrame:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :cond_7
    :goto_2
    move v0, v2

    .line 126
    goto/16 :goto_0

    .line 115
    :cond_8
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->containerDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->containerDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    if-eqz v0, :cond_9

    .line 116
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->containerDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    .line 117
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isEmptyFolderViewVisible()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 118
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->hideEmptyStateView()V

    .line 119
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->isEmptyStateViewHided:Z

    .line 122
    :cond_9
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->container:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->_newSelectionFrame:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 123
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->container:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->_newSelectionFrame:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_2

    :pswitch_2
    move v0, v2

    .line 129
    goto/16 :goto_0

    .line 132
    :pswitch_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->mListenerType:Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener$ListenerType;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener$ListenerType;->ROOT:Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener$ListenerType;

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener$ListenerType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->isEmptyStateViewHided:Z

    if-eqz v0, :cond_b

    .line 133
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->containerDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->containerDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    if-eqz v0, :cond_b

    .line 134
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->containerDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    .line 135
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isEmptyFolder()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 136
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->showEmptyAssetsStateView()V

    .line 137
    :cond_a
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->isEmptyStateViewHided:Z

    .line 140
    :cond_b
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->container:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_c

    .line 141
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    :cond_c
    move v0, v2

    .line 143
    goto/16 :goto_0

    .line 146
    :pswitch_4
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSDragToLokiEvent;

    const-string/jumbo v3, "drag_to_loki"

    invoke-direct {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSDragToLokiEvent;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSDragToLokiEvent;->endAndTrackEvent()V

    .line 148
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    .line 150
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 154
    :goto_3
    if-ge v1, v3, :cond_d

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 159
    :cond_d
    if-lez v3, :cond_e

    .line 160
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropContentHolder;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->uploadFolderHref:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropContentHolder;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 161
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;

    move-result-object v1

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_UPLOAD_DRAG_DROP_CONTENT:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {v1, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->postCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    :cond_e
    move v0, v2

    .line 163
    goto/16 :goto_0

    .line 166
    :pswitch_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->container:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->_newSelectionFrame:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v5, :cond_f

    .line 167
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    :cond_f
    move v0, v2

    .line 168
    goto/16 :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
