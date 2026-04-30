.class Lcom/adobe/premiereclip/TourViewActivity$4;
.super Ljava/lang/Object;
.source "TourViewActivity.java"

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
.field final synthetic this$0:Lcom/adobe/premiereclip/TourViewActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/TourViewActivity;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/adobe/premiereclip/TourViewActivity$4;->this$0:Lcom/adobe/premiereclip/TourViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$4;->this$0:Lcom/adobe/premiereclip/TourViewActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/TourViewActivity;->access$100(Lcom/adobe/premiereclip/TourViewActivity;)V

    .line 339
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 333
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/TourViewActivity$4;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method
