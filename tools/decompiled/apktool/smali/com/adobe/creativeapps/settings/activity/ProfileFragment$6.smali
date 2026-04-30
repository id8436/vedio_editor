.class Lcom/adobe/creativeapps/settings/activity/ProfileFragment$6;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$6;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$6;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$600(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$6;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-static {v1}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$500(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Lcom/adobe/creativeapps/settings/utils/CircleTransform;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativeapps/settings/utils/CircleTransform;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 215
    :cond_0
    return-void
.end method

.method public onError()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method
