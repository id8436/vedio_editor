.class public Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;
.super Ljava/lang/Object;
.source "Adobe360WorkflowResponseMessageCreator.java"


# static fields
.field public static final ADOBE_360_WORKFLOW_PRIMARY_OUTPUT_NAME:Ljava/lang/String; = "primaryOutput"


# instance fields
.field private actionItem:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

.field private actionItemArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;",
            ">;"
        }
    .end annotation
.end field

.field responseMessageCreatorCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/IAdobe360WorkflowResponseMessageCreatorCallback;

.field private responseReason:Ljava/lang/String;

.field private responseResults:Lorg/json/JSONObject;

.field private responseStatusCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create360WorkflowResponseMessageWithRequestMessage(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 70
    if-nez p1, :cond_0

    .line 71
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const-string/jumbo v1, "Request Adobe360Message can\'t be null"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 75
    :cond_0
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;

    invoke-direct {v2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)V

    .line 77
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360Utils;->getApplicationName()Ljava/lang/String;

    move-result-object v3

    .line 80
    :try_start_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getAdobeID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 84
    :goto_0
    invoke-static {v3, v0, v1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->createContextWithAppName(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->setResponseContext(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;)V

    .line 86
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->responseMessageCreatorCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/IAdobe360WorkflowResponseMessageCreatorCallback;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->responseMessageCreatorCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/IAdobe360WorkflowResponseMessageCreatorCallback;

    invoke-interface {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/IAdobe360WorkflowResponseMessageCreatorCallback;->updateResponseMessageBuilder(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->actionItem:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->actionItem:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    const-string/jumbo v1, "primaryOutput"

    invoke-virtual {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->addOutputAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;)V

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->actionItemArray:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->actionItemArray:Ljava/util/List;

    const-string/jumbo v1, "primaryOutput"

    invoke-virtual {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->addOutputAssetArray(Ljava/util/List;Ljava/lang/String;)V

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->responseStatusCode:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 95
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->responseStatusCode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->setResponseStatusCode(Ljava/lang/String;)V

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->responseReason:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 98
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->responseReason:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->setResponseReason(Ljava/lang/String;)V

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->responseResults:Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    .line 101
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->responseResults:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->setResponseResults(Lorg/json/JSONObject;)V

    .line 103
    :cond_6
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->buildMessage()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    move-result-object v0

    return-object v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v5, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getRequestMessageCreatorCallback()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/IAdobe360WorkflowResponseMessageCreatorCallback;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->responseMessageCreatorCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/IAdobe360WorkflowResponseMessageCreatorCallback;

    return-object v0
.end method

.method public setActionItem(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;)V
    .locals 1

    .prologue
    .line 141
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->actionItem:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->actionItemArray:Ljava/util/List;

    .line 143
    return-void
.end method

.method public setActionItemArray(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->actionItemArray:Ljava/util/List;

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->actionItem:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 152
    return-void
.end method

.method public setActionItemData([BLjava/lang/String;)V
    .locals 1

    .prologue
    .line 122
    const-string/jumbo v0, "primaryOutput"

    invoke-static {p1, p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->createAssetWithData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->actionItem:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->actionItemArray:Ljava/util/List;

    .line 124
    return-void
.end method

.method public setActionItemDcxElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 131
    const-string/jumbo v0, "primaryOutput"

    invoke-static {p1, p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->createAssetWithData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->actionItem:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->actionItemArray:Ljava/util/List;

    .line 133
    return-void
.end method

.method public setActionItemFilePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    const-string/jumbo v0, "primaryOutput"

    invoke-static {p1, p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->createAssetWithData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->actionItem:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->actionItemArray:Ljava/util/List;

    .line 114
    return-void
.end method

.method public setRequestMessageCreatorCallback(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/IAdobe360WorkflowResponseMessageCreatorCallback;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->responseMessageCreatorCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/IAdobe360WorkflowResponseMessageCreatorCallback;

    .line 197
    return-void
.end method

.method public setResponseReason(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->responseReason:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setResponseResults(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->responseResults:Lorg/json/JSONObject;

    .line 179
    return-void
.end method

.method public setResponseStatusCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseMessageCreator;->responseStatusCode:Ljava/lang/String;

    .line 161
    return-void
.end method
