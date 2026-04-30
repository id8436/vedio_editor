.class public Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ProjectsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private projects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/Project;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/premiereclip/ProjectsListFragment;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/ProjectsListFragment;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/Project;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    iput-object p1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 288
    invoke-virtual {p0, p2}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->updateData(Ljava/util/ArrayList;)V

    .line 289
    return-void
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->openRenameDialog(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->duplicateAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->deleteAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->projects:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->openProjectOptionsPopup(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->getProjectPosition(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private deleteAction(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 481
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapDeleteForMyProject(Ljava/lang/String;)V

    .line 482
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->getProjectPosition(Ljava/lang/String;)I

    move-result v0

    .line 483
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 493
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->projects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 488
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/adobe/premiereclip/project/ProjectManager;->deleteProjectWithKey(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->notifyItemRemoved(I)V

    .line 490
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->deleteProjectWithKey(Ljava/lang/String;)V

    .line 491
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->didDeleteMyProject(Ljava/lang/String;)V

    .line 492
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didRefreshMyProjects()V

    goto :goto_0
.end method

.method private duplicateAction(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 496
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->getProjectPosition(Ljava/lang/String;)I

    move-result v0

    .line 497
    if-ne v0, v1, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapDuplicateForMyProject(Ljava/lang/String;)V

    .line 501
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->duplicateProjectWithKey(Ljava/lang/String;)I

    move-result v0

    .line 502
    if-eq v0, v1, :cond_0

    .line 505
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/ProjectsListFragment;->projectsUpdated()V

    .line 506
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didRefreshMyProjects()V

    goto :goto_0
.end method

.method private getProjectPosition(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 512
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->projects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->projects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/Project;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    :goto_1
    return v1

    .line 512
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 517
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private openProjectOptionsPopup(Ljava/lang/String;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 444
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/ProjectsListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 445
    new-instance v1, Landroid/widget/ListPopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 446
    invoke-virtual {v1, p2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 448
    new-instance v2, Lcom/adobe/premiereclip/adapter/PopupListAdapter;

    iget-object v3, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-static {v3}, Lcom/adobe/premiereclip/ProjectsListFragment;->access$900(Lcom/adobe/premiereclip/ProjectsListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/adobe/premiereclip/adapter/PopupListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 449
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/util/Utilities;->preparePopupView(Landroid/content/Context;Landroid/widget/ListPopupWindow;)V

    .line 450
    new-instance v0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;

    invoke-direct {v0, p0, v1, p1}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;-><init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;Landroid/widget/ListPopupWindow;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 476
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 477
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    .line 478
    return-void
.end method

.method private openRenameDialog(ILandroid/view/View;)V
    .locals 10

    .prologue
    .line 374
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->projects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/premiereclip/project/Project;

    .line 375
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, v4, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapTitleForMyProject(Ljava/lang/String;)V

    .line 377
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    .line 378
    invoke-virtual {v1}, Lcom/adobe/premiereclip/ProjectsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 380
    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/ProjectsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040181

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 381
    invoke-static {v1}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 382
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 384
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v6

    .line 385
    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 387
    const v0, 0x7f1205fa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 388
    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/Project;->getProjectName()Ljava/lang/String;

    move-result-object v3

    .line 389
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 390
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 393
    const v0, 0x7f1205fd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Button;

    .line 394
    const v0, 0x7f1205fe

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/Button;

    .line 395
    const v0, 0x7f1205fb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageButton;

    .line 396
    invoke-virtual {v9}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 397
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 398
    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    new-instance v0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$4;

    invoke-direct {v0, p0, v7}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$4;-><init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;Landroid/widget/Button;)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 410
    new-instance v0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$5;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$5;-><init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;Landroid/widget/EditText;Ljava/lang/String;Lcom/adobe/premiereclip/project/Project;ILandroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    new-instance v0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$6;

    invoke-direct {v0, p0, v6}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$6;-><init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    new-instance v0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$7;

    invoke-direct {v0, p0, v2}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$7;-><init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;Landroid/widget/EditText;)V

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 441
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->projects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 211
    check-cast p1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->onBindViewHolder(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;I)V
    .locals 7

    .prologue
    .line 340
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->projects:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/adobe/premiereclip/project/Project;

    .line 342
    iget-object v0, p1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getProjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v2, p1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 345
    invoke-static {v2}, Lcom/adobe/premiereclip/util/Utilities;->resetViewIfBitmapRecycled(Landroid/widget/ImageView;)V

    .line 347
    iget-object v0, v1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getPosterPath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    .line 348
    invoke-static {v3}, Lcom/adobe/premiereclip/ProjectsListFragment;->access$600(Lcom/adobe/premiereclip/ProjectsListFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-static {v4}, Lcom/adobe/premiereclip/ProjectsListFragment;->access$500(Lcom/adobe/premiereclip/ProjectsListFragment;)I

    move-result v4

    const/4 v5, 0x1

    new-instance v6, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$3;

    invoke-direct {v6, p0}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$3;-><init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;)V

    .line 347
    invoke-static/range {v0 .. v6}, Lcom/adobe/premiereclip/util/ProjectPosterView;->load(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;IIZLcom/adobe/premiereclip/util/ProjectPosterView$PosterViewListener;)V

    .line 360
    iget-object v0, p1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 361
    iget-object v0, p1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->projects:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/Project;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    iput-object v0, p1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->key:Ljava/lang/String;

    .line 364
    iget-object v0, p1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->mCardView:Landroid/view/View;

    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/ProjectsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/util/LollipopUtils;->setElevation(Landroid/view/View;F)V

    .line 365
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;
    .locals 3

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04017f

    const/4 v2, 0x0

    .line 323
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 325
    const v1, 0x7f1205f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-static {v2}, Lcom/adobe/premiereclip/ProjectsListFragment;->access$500(Lcom/adobe/premiereclip/ProjectsListFragment;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 327
    new-instance v1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;-><init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;Landroid/view/View;)V

    .line 328
    return-object v1
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 211
    check-cast p1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->onViewRecycled(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;)V
    .locals 2

    .prologue
    .line 333
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 334
    iget-object v0, p1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    return-void
.end method

.method public updateData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/Project;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$1;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$1;-><init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 302
    iput-object p1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->projects:Ljava/util/ArrayList;

    .line 303
    return-void
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/Project;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    iput-object p1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->projects:Ljava/util/ArrayList;

    .line 307
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/ProjectsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 308
    if-nez v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 309
    :cond_0
    new-instance v1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$2;-><init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
