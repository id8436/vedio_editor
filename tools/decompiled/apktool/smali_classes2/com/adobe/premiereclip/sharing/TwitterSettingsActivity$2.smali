.class Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2;
.super Ljava/lang/Object;
.source "TwitterSettingsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;

.field final synthetic val$projectThumb:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2;->this$0:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;

    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2;->val$projectThumb:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 100
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2;->val$projectThumb:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 101
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2;->val$projectThumb:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2;->val$projectThumb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    .line 103
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

    .line 104
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2;->this$0:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;

    iget-object v1, v1, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->projKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectWithKey(Ljava/lang/String;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2;->this$0:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;

    iget-object v1, v1, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->projKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getPosterPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2;->val$projectThumb:Landroid/widget/ImageView;

    const/4 v3, 0x0

    new-instance v4, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2$1;

    invoke-direct {v4, p0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2$1;-><init>(Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/adobe/premiereclip/util/ProjectPosterView;->load(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;ZLcom/adobe/premiereclip/util/ProjectPosterView$PosterViewListener;)V

    .line 113
    return-void
.end method
