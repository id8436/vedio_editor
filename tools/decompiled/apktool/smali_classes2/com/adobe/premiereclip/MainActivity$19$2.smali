.class Lcom/adobe/premiereclip/MainActivity$19$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

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
.field final synthetic this$1:Lcom/adobe/premiereclip/MainActivity$19;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity$19;)V
    .locals 0

    .prologue
    .line 2013
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$19$2;->this$1:Lcom/adobe/premiereclip/MainActivity$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 2

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$19$2;->this$1:Lcom/adobe/premiereclip/MainActivity$19;

    iget-object v0, v0, Lcom/adobe/premiereclip/MainActivity$19;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$2700(Lcom/adobe/premiereclip/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getAssetCountError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$19$2;->this$1:Lcom/adobe/premiereclip/MainActivity$19;

    iget-object v0, v0, Lcom/adobe/premiereclip/MainActivity$19;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$900(Lcom/adobe/premiereclip/MainActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2017
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$19$2;->this$1:Lcom/adobe/premiereclip/MainActivity$19;

    iget-object v0, v0, Lcom/adobe/premiereclip/MainActivity$19;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$2800(Lcom/adobe/premiereclip/MainActivity;)V

    .line 2018
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2013
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/MainActivity$19$2;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method
