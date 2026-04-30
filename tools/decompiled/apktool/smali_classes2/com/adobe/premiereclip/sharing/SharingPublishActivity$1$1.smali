.class Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1$1;
.super Ljava/lang/Object;
.source "SharingPublishActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/util/ProjectPosterView$PosterViewListener;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1$1;->this$1:Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccessImageLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1$1;->this$1:Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingPublishActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->access$100(Lcom/adobe/premiereclip/sharing/SharingPublishActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1$1;->this$1:Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/SharingPublishActivity$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingPublishActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;->access$000(Lcom/adobe/premiereclip/sharing/SharingPublishActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    :cond_0
    return-void
.end method
