.class Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$2;
.super Ljava/lang/Object;
.source "DrawerOptionAdapter.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;

.field final synthetic val$holder0:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ProfileViewHolder;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ProfileViewHolder;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$2;->this$0:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;

    iput-object p2, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$2;->val$holder0:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ProfileViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$2;->val$holder0:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ProfileViewHolder;

    iget-object v0, v0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ProfileViewHolder;->mProfilePic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$2;->this$0:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;

    invoke-static {v1}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->access$100(Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;)Lcom/adobe/creativeapps/settings/utils/CircleTransform;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativeapps/settings/utils/CircleTransform;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    :cond_0
    return-void
.end method

.method public onError()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method
