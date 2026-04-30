.class Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2$1;
.super Ljava/lang/Object;
.source "TwitterSettingsActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/util/ProjectPosterView$PosterViewListener;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2$1;->this$1:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccessImageLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2$1;->this$1:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2;->this$0:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->projKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2$1;->this$1:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2;->val$projectThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    :cond_0
    return-void
.end method
