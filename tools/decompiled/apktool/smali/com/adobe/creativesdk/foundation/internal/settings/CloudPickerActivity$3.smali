.class Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity$3;
.super Ljava/lang/Object;
.source "CloudPickerActivity.java"

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
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->updateCloudList()V

    .line 161
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 157
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity$3;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method
