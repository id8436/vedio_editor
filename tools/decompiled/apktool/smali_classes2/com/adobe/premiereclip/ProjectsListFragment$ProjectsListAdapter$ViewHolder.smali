.class public Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ProjectsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public key:Ljava/lang/String;

.field public mCardView:Landroid/view/View;

.field public mImageButton:Landroid/widget/ImageButton;

.field public mImageView:Landroid/widget/ImageView;

.field public mTextView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 225
    iput-object p1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    .line 226
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 227
    invoke-static {p2}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 228
    const v0, 0x7f1205f0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->mCardView:Landroid/view/View;

    .line 229
    const v0, 0x7f1205f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 230
    const v0, 0x7f1205f1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 231
    const v0, 0x7f1205f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageButton;

    .line 233
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder$1;-><init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder$2;-><init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 254
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/ProjectsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/MainActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/MainActivity;->onInterruptCoachmarks()V

    .line 255
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->canReadCompositeBasedOnVersion(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-static {v0}, Lcom/adobe/premiereclip/ProjectsListFragment;->access$400(Lcom/adobe/premiereclip/ProjectsListFragment;)V

    .line 283
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->mCardView:Landroid/view/View;

    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/ProjectsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/util/LollipopUtils;->setElevation(Landroid/view/View;F)V

    .line 261
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectWithKey(Ljava/lang/String;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v9

    .line 264
    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/Project;->getEditMode()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 265
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/ProjectsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v8, v0

    .line 269
    :goto_1
    const-string/jumbo v0, "project_key"

    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->key:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string/jumbo v0, "newProject"

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 272
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapPosterFrameForMyProject(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    .line 274
    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/Project;->getProjectName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    .line 276
    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/Project;->getProjectName()Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 278
    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/Project;->getEditMode()I

    move-result v9

    if-ne v9, v5, :cond_2

    :goto_2
    move-object v7, v6

    .line 273
    invoke-virtual/range {v0 .. v7}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectInfoWithTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-virtual {v0, v8}, Lcom/adobe/premiereclip/ProjectsListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 267
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/ProjectsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v8, v0

    goto :goto_1

    :cond_2
    move v5, v7

    .line 278
    goto :goto_2
.end method
