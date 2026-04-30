.class Lcom/behance/sdk/BehanceSDK$1;
.super Ljava/lang/Object;
.source "BehanceSDK.java"

# interfaces
.implements Lcom/behance/sdk/datamanager/listeners/interfaces/IGetCreativeFieldsAsyncTaskListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/BehanceSDK;

.field final synthetic val$getCreativeFieldsListener:Lcom/behance/sdk/IBehanceSDKGetCreativeFieldsListener;


# direct methods
.method constructor <init>(Lcom/behance/sdk/BehanceSDK;Lcom/behance/sdk/IBehanceSDKGetCreativeFieldsListener;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDK$1;->this$0:Lcom/behance/sdk/BehanceSDK;

    iput-object p2, p0, Lcom/behance/sdk/BehanceSDK$1;->val$getCreativeFieldsListener:Lcom/behance/sdk/IBehanceSDKGetCreativeFieldsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCreativeFieldsFailure(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDK$1;->val$getCreativeFieldsListener:Lcom/behance/sdk/IBehanceSDKGetCreativeFieldsListener;

    invoke-interface {v0, p1}, Lcom/behance/sdk/IBehanceSDKGetCreativeFieldsListener;->onLoadCreativeFieldsFailure(Ljava/lang/Exception;)V

    .line 526
    return-void
.end method

.method public onLoadCreativeFieldsSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDK$1;->val$getCreativeFieldsListener:Lcom/behance/sdk/IBehanceSDKGetCreativeFieldsListener;

    invoke-interface {v0, p1}, Lcom/behance/sdk/IBehanceSDKGetCreativeFieldsListener;->onLoadCreativeFieldsSuccess(Ljava/util/List;)V

    .line 521
    return-void
.end method
