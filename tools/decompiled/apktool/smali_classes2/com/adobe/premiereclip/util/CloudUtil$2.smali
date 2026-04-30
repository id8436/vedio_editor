.class final Lcom/adobe/premiereclip/util/CloudUtil$2;
.super Ljava/lang/Object;
.source "CloudUtil.java"

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
.field final synthetic val$listener:Lcom/adobe/premiereclip/util/CloudUtil$Listener;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/util/CloudUtil$Listener;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/adobe/premiereclip/util/CloudUtil$2;->val$listener:Lcom/adobe/premiereclip/util/CloudUtil$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/premiereclip/util/CloudUtil$2;->val$listener:Lcom/adobe/premiereclip/util/CloudUtil$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/util/CloudUtil$Listener;->onCloudError()V

    .line 67
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/util/CloudUtil$2;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method
