.class Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1;
.super Ljava/lang/Object;
.source "SharingPublishActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/SharingPublishActivity;

.field final synthetic val$project:Lcom/adobe/premiereclip/project/Project;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/SharingPublishActivity;Lcom/adobe/premiereclip/project/Project;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingPublishActivity;

    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1;->val$project:Lcom/adobe/premiereclip/project/Project;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingPublishActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->access$000(Lcom/adobe/premiereclip/sharing/SharingPublishActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 73
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingPublishActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->access$000(Lcom/adobe/premiereclip/sharing/SharingPublishActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    .line 74
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingPublishActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->access$000(Lcom/adobe/premiereclip/sharing/SharingPublishActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    .line 76
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingPublishActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->access$100(Lcom/adobe/premiereclip/sharing/SharingPublishActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1;->val$project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getPosterPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingPublishActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->access$000(Lcom/adobe/premiereclip/sharing/SharingPublishActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1$1;

    invoke-direct {v4, p0}, Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1$1;-><init>(Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/util/ProjectPosterView;->load(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;ZLcom/adobe/premiereclip/util/ProjectPosterView$PosterViewListener;)V

    .line 84
    return-void
.end method
