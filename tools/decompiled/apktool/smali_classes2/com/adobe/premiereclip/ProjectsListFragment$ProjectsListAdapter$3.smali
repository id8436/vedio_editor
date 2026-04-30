.class Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$3;
.super Ljava/lang/Object;
.source "ProjectsListFragment.java"

# interfaces
.implements Lcom/adobe/premiereclip/util/ProjectPosterView$PosterViewListener;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$3;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccessImageLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$3;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-static {v0}, Lcom/adobe/premiereclip/ProjectsListFragment;->access$700(Lcom/adobe/premiereclip/ProjectsListFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$3;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-static {v0}, Lcom/adobe/premiereclip/ProjectsListFragment;->access$700(Lcom/adobe/premiereclip/ProjectsListFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$3;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    invoke-static {v1, p1}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->access$800(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;

    .line 353
    if-eqz v0, :cond_0

    .line 354
    iget-object v0, v0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 357
    :cond_0
    return-void
.end method
