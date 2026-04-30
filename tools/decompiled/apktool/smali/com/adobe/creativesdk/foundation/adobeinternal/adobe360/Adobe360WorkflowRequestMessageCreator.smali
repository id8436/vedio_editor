.class public Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;
.super Ljava/lang/Object;
.source "Adobe360WorkflowRequestMessageCreator.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ADOBE_360_WORKFLOW_CALLING_APP:Ljava/lang/String; = "calling-app"

.field public static final ADOBE_360_WORKFLOW_PRIMARY_INPUT_NAME:Ljava/lang/String; = "primaryInput"


# instance fields
.field private acceptedMediaTypes:Lorg/json/JSONObject;

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

.field private appSpecificData:Lorg/json/JSONObject;

.field private requestMessageCreatorCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/IAdobe360WorkflowRequestMessageCreatorCallback;

.field private requestOptions:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create360WorkflowRequestMessageWithAction(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 76
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Action can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 79
    :cond_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;-><init>()V

    .line 80
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->setActionId(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360Utils;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getAdobeID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->createContextWithAppName(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->setRequestContext(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;)V

    .line 86
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->requestMessageCreatorCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/IAdobe360WorkflowRequestMessageCreatorCallback;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->requestMessageCreatorCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/IAdobe360WorkflowRequestMessageCreatorCallback;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/IAdobe360WorkflowRequestMessageCreatorCallback;->updateRequestMessageBuilder(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->appSpecificData:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->appSpecificData:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->setAppSpecificData(Lorg/json/JSONObject;)V

    .line 92
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->getType()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->setActionType(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->actionItem:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->actionItem:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    const-string/jumbo v2, "primaryInput"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->addInputAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;)V

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->actionItemArray:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->actionItemArray:Ljava/util/List;

    const-string/jumbo v2, "primaryInput"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->addInputAssetArray(Ljava/util/List;Ljava/lang/String;)V

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->acceptedMediaTypes:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    .line 101
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->acceptedMediaTypes:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->setAcceptedMediaTypes(Lorg/json/JSONObject;)V

    .line 103
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->requestOptions:Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    .line 104
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->requestOptions:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->setRequestOptions(Lorg/json/JSONObject;)V

    .line 106
    :cond_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 108
    :try_start_0
    const-string/jumbo v0, "calling-app"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360Utils;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->setTransportReservedData(Lorg/json/JSONObject;)V

    .line 114
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->buildMessage()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    move-result-object v0

    return-object v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v4, "Adobe360WorkflowRequestMessageCreator"

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAppSpecificData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->appSpecificData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRequestMessageCreatorCallback()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/IAdobe360WorkflowRequestMessageCreatorCallback;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->requestMessageCreatorCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/IAdobe360WorkflowRequestMessageCreatorCallback;

    return-object v0
.end method

.method public setAcceptedMediaTypes(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->acceptedMediaTypes:Lorg/json/JSONObject;

    .line 195
    return-void
.end method

.method public setActionItem(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;)V
    .locals 1

    .prologue
    .line 175
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->actionItem:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->actionItemArray:Ljava/util/List;

    .line 177
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
    .line 184
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->actionItemArray:Ljava/util/List;

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->actionItem:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 186
    return-void
.end method

.method public setActionItemData([BLjava/lang/String;)V
    .locals 1

    .prologue
    .line 156
    const-string/jumbo v0, "primaryInput"

    invoke-static {p1, p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->createAssetWithData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->actionItem:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->actionItemArray:Ljava/util/List;

    .line 158
    return-void
.end method

.method public setActionItemDcxElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 165
    const-string/jumbo v0, "primaryInput"

    invoke-static {p1, p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->createAssetWithData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->actionItem:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->actionItemArray:Ljava/util/List;

    .line 167
    return-void
.end method

.method public setActionItemFilePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 146
    const-string/jumbo v0, "primaryInput"

    invoke-static {p1, p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->createAssetWithData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->actionItem:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->actionItemArray:Ljava/util/List;

    .line 148
    return-void
.end method

.method public setAppSpecificData(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->appSpecificData:Lorg/json/JSONObject;

    .line 138
    return-void
.end method

.method public setRequestMessageCreatorCallback(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/IAdobe360WorkflowRequestMessageCreatorCallback;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->requestMessageCreatorCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/IAdobe360WorkflowRequestMessageCreatorCallback;

    .line 222
    return-void
.end method

.method public setRequestOptions(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestMessageCreator;->requestOptions:Lorg/json/JSONObject;

    .line 204
    return-void
.end method
