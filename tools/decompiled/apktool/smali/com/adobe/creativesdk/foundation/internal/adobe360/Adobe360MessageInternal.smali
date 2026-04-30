.class public Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageInternal;
.super Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;
.source "Adobe360MessageInternal.java"


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;ZLcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;ZLcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)V

    .line 34
    return-void
.end method

.method public static create360MessageWithSnapshotAtPath(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageInternal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 43
    .line 46
    :try_start_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageInternal;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageInternal;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 50
    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageCreationException;

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "Adobe360Message"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageInternal;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageInternal;

    goto :goto_0

    .line 56
    :cond_0
    throw v0
.end method
