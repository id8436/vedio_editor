.class Lcom/adobe/premiereclip/sharing/PublishInfoActivity$1;
.super Ljava/lang/Object;
.source "PublishInfoActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

.field final synthetic val$project:Lcom/adobe/premiereclip/project/Project;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/PublishInfoActivity;Lcom/adobe/premiereclip/project/Project;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$1;->this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$1;->val$project:Lcom/adobe/premiereclip/project/Project;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 76
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$1;->this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->projectThumb:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 77
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$1;->this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->projectThumb:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$1;->this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    iget-object v1, v1, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->projectThumb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    .line 79
    const-string/jumbo v2, "PublishInfoActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "w = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", h = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$1;->this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->access$000(Lcom/adobe/premiereclip/sharing/PublishInfoActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$1;->val$project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getPosterPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$1;->this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    iget-object v2, v2, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->projectThumb:Landroid/widget/ImageView;

    const/4 v3, 0x0

    new-instance v4, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$1$1;

    invoke-direct {v4, p0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$1$1;-><init>(Lcom/adobe/premiereclip/sharing/PublishInfoActivity$1;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/util/ProjectPosterView;->load(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;ZLcom/adobe/premiereclip/util/ProjectPosterView$PosterViewListener;)V

    .line 89
    return-void
.end method
