.class Lcom/adobe/creativeapps/settings/utils/BehanceSource$1;
.super Ljava/lang/Object;
.source "BehanceSource.java"

# interfaces
.implements Lcom/adobe/creativesdk/behance/IAdobeBehanceSDKGetUserProfileListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/utils/BehanceSource;

.field final synthetic val$iBehanceAccountDetailsUpdate:Lcom/adobe/creativeapps/settings/utils/BehanceSource$IBehanceAccountDetailsUpdate;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/utils/BehanceSource;Lcom/adobe/creativeapps/settings/utils/BehanceSource$IBehanceAccountDetailsUpdate;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/utils/BehanceSource$1;->this$0:Lcom/adobe/creativeapps/settings/utils/BehanceSource;

    iput-object p2, p0, Lcom/adobe/creativeapps/settings/utils/BehanceSource$1;->val$iBehanceAccountDetailsUpdate:Lcom/adobe/creativeapps/settings/utils/BehanceSource$IBehanceAccountDetailsUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditProfileFailure(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "BehanceSource"

    const-string/jumbo v1, "Exception in behance"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/utils/BehanceSource$1;->val$iBehanceAccountDetailsUpdate:Lcom/adobe/creativeapps/settings/utils/BehanceSource$IBehanceAccountDetailsUpdate;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/adobe/creativeapps/settings/utils/BehanceSource$IBehanceAccountDetailsUpdate;->behanceDetailsUpdated(Lcom/behance/sdk/BehanceSDKUserProfile;Ljava/lang/Exception;)V

    .line 51
    return-void
.end method

.method public onGetUserProfileSuccess(Lcom/behance/sdk/BehanceSDKUserProfile;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/utils/BehanceSource$1;->val$iBehanceAccountDetailsUpdate:Lcom/adobe/creativeapps/settings/utils/BehanceSource$IBehanceAccountDetailsUpdate;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/adobe/creativeapps/settings/utils/BehanceSource$IBehanceAccountDetailsUpdate;->behanceDetailsUpdated(Lcom/behance/sdk/BehanceSDKUserProfile;Ljava/lang/Exception;)V

    .line 43
    return-void
.end method
