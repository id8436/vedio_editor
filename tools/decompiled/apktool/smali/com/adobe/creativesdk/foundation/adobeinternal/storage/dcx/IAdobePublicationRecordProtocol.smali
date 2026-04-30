.class public interface abstract Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;
.super Ljava/lang/Object;
.source "IAdobePublicationRecordProtocol.java"


# virtual methods
.method public abstract getDataForCreation()Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityException;
        }
    .end annotation
.end method

.method public abstract getDataForUpdate()Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityException;
        }
    .end annotation
.end method

.method public abstract stageResourcesAt(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityException;
        }
    .end annotation
.end method
