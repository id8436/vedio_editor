.class Lcom/adobe/creativeapps/settings/activity/ProfileFragment$3;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$3;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$3;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$100(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 150
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$3;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method
