.class Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity$3;
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
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity$3;->this$0:Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity$3;->this$0:Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;

    invoke-virtual {v0}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->updateCloudList()V

    .line 156
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 152
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity$3;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method
