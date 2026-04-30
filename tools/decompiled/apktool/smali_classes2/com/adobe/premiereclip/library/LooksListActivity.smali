.class public Lcom/adobe/premiereclip/library/LooksListActivity;
.super Lcom/adobe/premiereclip/editor/TopOfEditorActivity;
.source "LooksListActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryClickListener;
.implements Ljava/util/Observer;


# static fields
.field static final mainHandler:Landroid/os/Handler;


# instance fields
.field private final COLUMN_COUNT:I

.field private clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

.field private currentLibraryName:Ljava/lang/String;

.field private gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

.field private initialized:Z

.field private libAdapter:Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;

.field private libRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private libraryNameView:Landroid/widget/TextView;

.field private lookNameHeight:I

.field private lookRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private lookThumbHeight:I

.field private looksAdapter:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

.field private looksPreviewResources:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

.field private mProgressDialog:Lcom/alertdialogpro/b;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private project:Lcom/adobe/premiereclip/project/Project;

.field private projectKey:Ljava/lang/String;

.field private toolBar:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/adobe/premiereclip/library/LooksListActivity;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;-><init>()V

    .line 76
    const/4 v0, 0x3

    iput v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->COLUMN_COUNT:I

    .line 87
    invoke-static {}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getSharedInstance()Lcom/adobe/premiereclip/library/ClipLibraryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/library/LooksListActivity;)Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->libAdapter:Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/library/LooksListActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->toolBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/adobe/premiereclip/library/LooksListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->getSelectedLibraryId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/adobe/premiereclip/library/LooksListActivity;)I
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->getSelectedLookPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/adobe/premiereclip/library/LooksListActivity;I)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/library/LooksListActivity;->checkEmptyLibrary(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/adobe/premiereclip/library/LooksListActivity;)Lcom/adobe/premiereclip/project/Project;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->project:Lcom/adobe/premiereclip/project/Project;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/adobe/premiereclip/library/LooksListActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->lookRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/adobe/premiereclip/library/LooksListActivity;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->lookThumbHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/library/LooksListActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/adobe/premiereclip/library/LooksListActivity;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->lookNameHeight:I

    return v0
.end method

.method static synthetic access$2200(Lcom/adobe/premiereclip/library/LooksListActivity;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/library/LooksListActivity;->onImageClicked(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$302(Lcom/adobe/premiereclip/library/LooksListActivity;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->initialized:Z

    return p1
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/library/LooksListActivity;)Lcom/alertdialogpro/b;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/library/LooksListActivity;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->librarySyncOnCompletion()V

    return-void
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/library/LooksListActivity;)Lcom/adobe/premiereclip/library/ClipLibraryManager;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/adobe/premiereclip/library/LooksListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->getCurrentLibraryId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkEmptyLibrary(I)V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method private dismissProgressDialog()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    invoke-virtual {v0}, Lcom/alertdialogpro/b;->dismiss()V

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    .line 309
    const/4 v0, 0x1

    .line 311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentLibraryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->isSelectedDefaultLooks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const v0, 0x7f0a0422

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 332
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getCurrentLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedLibraryId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getLook()Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v1

    .line 338
    instance-of v0, v1, Lcom/adobe/premiereclip/looks/ClipLook;

    if-eqz v0, :cond_0

    .line 339
    const v0, 0x7f0a0422

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 342
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    check-cast v0, Lcom/adobe/premiereclip/looks/CandyLook;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/looks/CandyLook;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    check-cast v1, Lcom/adobe/premiereclip/looks/CandyLook;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/looks/CandyLook;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedLookPosition()I
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getLook()Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v0

    .line 316
    if-nez v0, :cond_0

    .line 317
    const/4 v0, -0x1

    .line 323
    :goto_0
    return v0

    .line 319
    :cond_0
    instance-of v1, v0, Lcom/adobe/premiereclip/looks/ClipLook;

    if-eqz v1, :cond_1

    .line 320
    invoke-virtual {v0}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/looks/LocalLooks;->getIndexOfLookFromId(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getPositionFromLookFromId(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private librarySyncOnCompletion()V
    .locals 2

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->dismissProgressDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-direct {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->getSelectedLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getLibraryById(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 300
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->libraryNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->looksAdapter:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->notifyDataSetChanged()V

    .line 303
    :cond_0
    return-void
.end method

.method private onImageClicked(Landroid/view/View;I)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 347
    .line 348
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->isSelectedDefaultLooks()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    invoke-static {}, Lcom/adobe/premiereclip/looks/LocalLooks;->getClipLooks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/looks/BaseLook;

    move-object v1, v0

    .line 355
    :goto_0
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/library/LooksListActivity;->setLookToPreview(Lcom/adobe/premiereclip/looks/BaseLook;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 356
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setLook(Lcom/adobe/premiereclip/looks/BaseLook;)V

    .line 357
    instance-of v0, v1, Lcom/adobe/premiereclip/looks/ClipLook;

    if-eqz v0, :cond_2

    .line 358
    invoke-virtual {v1}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v3, v3, v2}, Lcom/adobe/premiereclip/dcx/DCXWriter;->applyLook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v1}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didSelectFinishingTouchesLook(Ljava/lang/String;)V

    .line 371
    :cond_0
    :goto_1
    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getLook(I)Lcom/adobe/premiereclip/looks/CandyLook;

    move-result-object v1

    goto :goto_0

    .line 361
    :cond_2
    instance-of v0, v1, Lcom/adobe/premiereclip/looks/CandyLook;

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v1}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/adobe/premiereclip/looks/CandyLook;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/looks/CandyLook;->getCubeDataUrl()Ljava/lang/String;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/adobe/premiereclip/looks/CandyLook;

    .line 364
    invoke-virtual {v0}, Lcom/adobe/premiereclip/looks/CandyLook;->getRenditionPathUrl()Ljava/lang/String;

    move-result-object v4

    move-object v0, v1

    check-cast v0, Lcom/adobe/premiereclip/looks/CandyLook;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/looks/CandyLook;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookId()Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-static {v2, v3, v4, v0, v1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->applyLook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "My Library"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didSelectFinishingTouchesLook(Ljava/lang/String;)V

    goto :goto_1

    .line 369
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0421

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private setLookToPreview(Lcom/adobe/premiereclip/looks/BaseLook;)Z
    .locals 3

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->initialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->shouldApplyLookOnPoster()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const-string/jumbo v0, "Looks Preview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "here: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->looksPreviewResources:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->applyLook(Lcom/adobe/premiereclip/looks/BaseLook;)Z

    move-result v0

    .line 271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startLibrarySync()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 275
    iget-object v2, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->isSelectedDefaultLooks()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getCurrentLibraryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    .line 276
    invoke-virtual {v2}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->isSyncStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    const-string/jumbo v2, ""

    const v3, 0x7f0a0527

    invoke-virtual {p0, v3}, Lcom/adobe/premiereclip/library/LooksListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/alertdialogpro/b;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/alertdialogpro/b;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    .line 278
    iget-object v2, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    invoke-virtual {v2, v0}, Lcom/alertdialogpro/b;->setCancelable(Z)V

    .line 279
    iget-object v2, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    invoke-virtual {v2, v1}, Lcom/alertdialogpro/b;->setCanceledOnTouchOutside(Z)V

    .line 280
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    new-instance v2, Lcom/adobe/premiereclip/library/LooksListActivity$4;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/library/LooksListActivity$4;-><init>(Lcom/adobe/premiereclip/library/LooksListActivity;)V

    invoke-virtual {v1, v2}, Lcom/alertdialogpro/b;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 290
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->forceSync()V

    .line 291
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->libraryNameView:Landroid/widget/TextView;

    const v2, 0x7f0a0423

    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/library/LooksListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public closeAndGoBack(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->onBackPressed()V

    .line 264
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .prologue
    .line 255
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 256
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->setResult(ILandroid/content/Intent;)V

    .line 258
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onBackPressed()V

    .line 259
    const v0, 0x7f05002d

    const v1, 0x7f05002e

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/library/LooksListActivity;->overridePendingTransition(II)V

    .line 260
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 103
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v0, 0x7f040028

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->setContentView(I)V

    .line 105
    invoke-static {p0}, Lcom/h/a/d;->a(Landroid/app/Activity;)V

    .line 107
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "project_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->projectKey:Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectWithKey(Ljava/lang/String;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->project:Lcom/adobe/premiereclip/project/Project;

    .line 111
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 112
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 114
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 115
    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v2, v0, 0x10

    .line 117
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c037a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 118
    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v0, v0, 0x4

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x3

    .line 119
    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->lookThumbHeight:I

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 122
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c037b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 123
    invoke-static {}, Lcom/adobe/utility/FontUtils;->getInstance()Lcom/adobe/utility/FontUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/utility/FontUtils;->getAdobeCleanTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 124
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 125
    const-string/jumbo v3, "ATjg"

    .line 126
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v8, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 127
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c037d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v4, v1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v1, v4

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->lookNameHeight:I

    .line 129
    const v0, 0x7f1200e5

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 130
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 132
    const v1, 0x7f120138

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/library/LooksListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->toolBar:Landroid/view/View;

    .line 134
    const v1, 0x7f12013a

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/library/LooksListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->libraryNameView:Landroid/widget/TextView;

    .line 135
    const v1, 0x7f12013b

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/library/LooksListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->lookRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 136
    new-instance v1, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    invoke-direct {v1, p0, p0}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;-><init>(Lcom/adobe/premiereclip/library/LooksListActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->looksAdapter:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    .line 137
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->lookRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->looksAdapter:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 138
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->lookRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 140
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 141
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040139

    invoke-virtual {v1, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 142
    iget-object v2, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 143
    iget-object v2, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    const v2, 0x7f12051e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->libRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 147
    new-instance v1, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->libAdapter:Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;

    .line 148
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->libAdapter:Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;

    invoke-virtual {v1, p0}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->setLibraryClickListener(Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryClickListener;)V

    .line 150
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->libRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->libAdapter:Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 151
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->libRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/adobe/premiereclip/library/LooksListActivity$1;

    invoke-direct {v2, p0, p0, v9, v8}, Lcom/adobe/premiereclip/library/LooksListActivity$1;-><init>(Lcom/adobe/premiereclip/library/LooksListActivity;Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 169
    invoke-static {v9}, Lcom/adobe/premiereclip/coachmarks/ScreenUtil;->getWidthInPx(I)F

    move-result v1

    .line 170
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 172
    iget-object v3, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 173
    iget-object v3, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 175
    iget-object v3, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 177
    const v3, 0x7f120139

    invoke-virtual {p0, v3}, Lcom/adobe/premiereclip/library/LooksListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/adobe/premiereclip/library/LooksListActivity$2;

    invoke-direct {v4, p0, v1, v2}, Lcom/adobe/premiereclip/library/LooksListActivity$2;-><init>(Lcom/adobe/premiereclip/library/LooksListActivity;FI)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    new-instance v1, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    .line 188
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 189
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 190
    iput-boolean v8, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->initialized:Z

    .line 192
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getLook()Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/adobe/premiereclip/looks/ClipLook;

    if-eqz v1, :cond_2

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v0, v9}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->setSelectedDefaultLooks(Z)V

    .line 195
    const v0, 0x7f0a0422

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->currentLibraryName:Ljava/lang/String;

    .line 208
    :goto_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->startLibrarySync()Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->libraryNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->currentLibraryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->looksAdapter:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    invoke-direct {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->getSelectedLookPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->setSelectedPosition(I)V

    .line 212
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->looksAdapter:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->notifyDataSetChanged()V

    .line 213
    return-void

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v1, v8}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->setSelectedDefaultLooks(Z)V

    .line 199
    check-cast v0, Lcom/adobe/premiereclip/looks/CandyLook;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/looks/CandyLook;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_3

    .line 201
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    iget-object v2, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v2, v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getLibraryById(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->setCurrentLibrary(Ljava/lang/Object;)V

    .line 205
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getCurrentLibraryName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->currentLibraryName:Ljava/lang/String;

    goto :goto_0

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getCurrentLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->setCurrentLibrary(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onPause()V

    .line 233
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->removeObserver(Ljava/util/Observer;)V

    .line 235
    invoke-static {}, Lcom/adobe/mobile/Config;->pauseCollectingLifecycleData()V

    .line 237
    return-void
.end method

.method public onPopupLibraryClicked(Landroid/view/View;I)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const v4, 0x7f12013c

    const/4 v3, 0x0

    .line 431
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 433
    if-lez p2, :cond_3

    .line 434
    add-int/lit8 v0, p2, -0x1

    .line 435
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v1, v3}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->setSelectedDefaultLooks(Z)V

    .line 436
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getCurrentLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v1

    if-nez v1, :cond_0

    .line 460
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getSortedLibraries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 438
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->setCurrentLibrary(Ljava/lang/Object;)V

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->libraryNameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v2, v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getLibraryName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->countLooksInCurrentLibrary()I

    move-result v0

    if-nez v0, :cond_2

    .line 441
    invoke-virtual {p0, v4}, Lcom/adobe/premiereclip/library/LooksListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 453
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->looksAdapter:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->notifyDataSetChanged()V

    .line 454
    invoke-direct {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->getCurrentLibraryId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->getSelectedLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 455
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->looksAdapter:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    invoke-direct {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->getSelectedLookPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->setSelectedPosition(I)V

    goto :goto_0

    .line 444
    :cond_2
    invoke-virtual {p0, v4}, Lcom/adobe/premiereclip/library/LooksListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 448
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->setSelectedDefaultLooks(Z)V

    .line 449
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->libraryNameView:Landroid/widget/TextView;

    const v1, 0x7f0a0422

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/library/LooksListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    invoke-virtual {p0, v4}, Lcom/adobe/premiereclip/library/LooksListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 458
    :cond_4
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->looksAdapter:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->setSelectedPosition(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onResume()V

    .line 242
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->addObserver(Ljava/util/Observer;)V

    .line 243
    invoke-static {p0}, Lcom/adobe/mobile/Config;->collectLifecycleData(Landroid/app/Activity;)V

    .line 244
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 217
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onStart()V

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->initialized:Z

    .line 219
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    new-instance v2, Lcom/adobe/premiereclip/library/LooksListActivity$3;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/library/LooksListActivity$3;-><init>(Lcom/adobe/premiereclip/library/LooksListActivity;)V

    iget-object v3, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;-><init>(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$Listener;Lcom/adobe/premiereclip/project/Project;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->looksPreviewResources:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    .line 227
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->looksPreviewResources:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->release()V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->initialized:Z

    .line 250
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onStop()V

    .line 251
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 379
    instance-of v0, p2, Lcom/adobe/premiereclip/library/LibraryNotification;

    if-eqz v0, :cond_0

    .line 380
    check-cast p2, Lcom/adobe/premiereclip/library/LibraryNotification;

    .line 382
    iget-object v0, p2, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    const-string/jumbo v1, "SyncCompleteNotification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    const-string/jumbo v0, "Looks"

    const-string/jumbo v1, "library sync complete!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v0, Lcom/adobe/premiereclip/library/LooksListActivity$5;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/library/LooksListActivity$5;-><init>(Lcom/adobe/premiereclip/library/LooksListActivity;)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iget-object v0, p2, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    const-string/jumbo v1, "syncStarted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    const-string/jumbo v0, "Looks"

    const-string/jumbo v1, "library sync started!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-direct {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->startLibrarySync()Z

    goto :goto_0

    .line 395
    :cond_2
    iget-object v0, p2, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    const-string/jumbo v1, "librarySyncIssue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 396
    const-string/jumbo v0, "Looks"

    const-string/jumbo v1, "library sync issue!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v0, Lcom/adobe/premiereclip/library/LooksListActivity$6;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/library/LooksListActivity$6;-><init>(Lcom/adobe/premiereclip/library/LooksListActivity;)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 403
    :cond_3
    iget-object v0, p2, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    const-string/jumbo v1, "elementAdded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 404
    const-string/jumbo v0, "Looks"

    const-string/jumbo v1, "library sync : element added!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v0, Lcom/adobe/premiereclip/library/LooksListActivity$7;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/library/LooksListActivity$7;-><init>(Lcom/adobe/premiereclip/library/LooksListActivity;)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 411
    :cond_4
    iget-object v0, p2, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    const-string/jumbo v1, "elementRemoved"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 412
    const-string/jumbo v0, "Looks"

    const-string/jumbo v1, "library sync : element removed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v0, Lcom/adobe/premiereclip/library/LooksListActivity$8;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/library/LooksListActivity$8;-><init>(Lcom/adobe/premiereclip/library/LooksListActivity;)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 419
    :cond_5
    iget-object v0, p2, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    const-string/jumbo v1, "libraryAdded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const-string/jumbo v0, "Looks"

    const-string/jumbo v1, "library sync : library added!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-direct {p0}, Lcom/adobe/premiereclip/library/LooksListActivity;->librarySyncOnCompletion()V

    .line 422
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->invalidateOptionsMenu(Landroid/app/Activity;)Z

    .line 424
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity;->clipLibraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->countLooksInCurrentLibrary()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->checkEmptyLibrary(I)V

    goto/16 :goto_0
.end method
