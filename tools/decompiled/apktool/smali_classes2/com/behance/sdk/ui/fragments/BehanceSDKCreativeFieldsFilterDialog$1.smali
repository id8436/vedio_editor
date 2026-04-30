.class Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog$1;
.super Ljava/lang/Object;
.source "BehanceSDKCreativeFieldsFilterDialog.java"

# interfaces
.implements Lcom/behance/sdk/IBehanceSDKUserCredentials;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAdobeAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserBehanceAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method
