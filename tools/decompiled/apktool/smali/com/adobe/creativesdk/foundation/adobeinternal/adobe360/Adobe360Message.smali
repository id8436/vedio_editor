.class public abstract Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;
.super Ljava/lang/Object;
.source "Adobe360Message.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ADOBE_360_ACTION_TYPE_CAPTURE:Ljava/lang/String;

.field public static final ADOBE_360_ACTION_TYPE_CAPTURE_N:Ljava/lang/String;

.field public static final ADOBE_360_ACTION_TYPE_EDIT:Ljava/lang/String;

.field public static final ADOBE_360_ACTION_TYPE_EMBED:Ljava/lang/String;

.field public static final ADOBE_360_ACTION_TYPE_EMBED_N:Ljava/lang/String;

.field private static final ADOBE_360_MESSAGE_ACTION_ID_KEY:Ljava/lang/String;

.field private static final ADOBE_360_MESSAGE_ACTION_TYPE_KEY:Ljava/lang/String;

.field private static final ADOBE_360_MESSAGE_APP_SPECIFIC_DATA_KEY:Ljava/lang/String;

.field private static final ADOBE_360_MESSAGE_NAME:Ljava/lang/String;

.field private static final ADOBE_360_MESSAGE_REQUEST_CONTEXT_KEY:Ljava/lang/String;

.field private static final ADOBE_360_MESSAGE_RESPONSE_CONTEXT_KEY:Ljava/lang/String;

.field private static final ADOBE_360_MESSAGE_ROOT_KEY:Ljava/lang/String;

.field private static final ADOBE_360_MESSAGE_STATUS_CODE_KEY:Ljava/lang/String;

.field private static final ADOBE_360_MESSAGE_STATUS_KEY:Ljava/lang/String;

.field private static final ADOBE_360_MESSAGE_STATUS_REASON_KEY:Ljava/lang/String;

.field private static final ADOBE_360_MESSAGE_TRANSPORT_RESERVED_DATA_KEY:Ljava/lang/String;

.field private static final ADOBE_360_MESSAGE_TYPE:Ljava/lang/String;

.field private static final ADOBE_360_MESSAGE_VERSION_KEY:Ljava/lang/String;

.field private static Adobe360MessageCurrentVersion:I = 0x0

.field private static final INPUTS:Ljava/lang/String; = "inputs"

.field public static final MANIFEST:Ljava/lang/String; = "manifest"

.field public static final OPERATION_JSON:Ljava/lang/String; = "operation.json"

.field private static final OUTPUTS:Ljava/lang/String; = "outputs"

.field private static final PRIMARY:Ljava/lang/String; = "primary"

.field public static final SNAPSHOT_PATH:Ljava/lang/String; = "snapshotPath"

.field private static TAG:Ljava/lang/String; = null

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field protected mAcceptedMediaTypes:Lorg/json/JSONObject;

.field protected mActionId:Ljava/lang/String;

.field protected mActionType:Ljava/lang/String;

.field protected mAppSpecificData:Lorg/json/JSONObject;

.field protected mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

.field protected mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

.field protected mInputAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mInputDescriptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mOutputAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mOutputDescriptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequestContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

.field protected mRequestOptions:Lorg/json/JSONObject;

.field protected mResponseContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

.field protected mResponseReason:Ljava/lang/String;

.field protected mResponseResults:Lorg/json/JSONObject;

.field protected mResponseStatusCode:Ljava/lang/String;

.field protected mSnapshotPath:Ljava/lang/String;

.field protected mTransportReservedData:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    .line 86
    const-string/jumbo v0, "Adobe360Message"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->TAG:Ljava/lang/String;

    .line 128
    const-string/jumbo v0, "capture"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_ACTION_TYPE_CAPTURE:Ljava/lang/String;

    .line 129
    const-string/jumbo v0, "captureN"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_ACTION_TYPE_CAPTURE_N:Ljava/lang/String;

    .line 130
    const-string/jumbo v0, "edit"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_ACTION_TYPE_EDIT:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, "embed"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_ACTION_TYPE_EMBED:Ljava/lang/String;

    .line 132
    const-string/jumbo v0, "embedN"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_ACTION_TYPE_EMBED_N:Ljava/lang/String;

    .line 133
    const-string/jumbo v0, "360 Message"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_NAME:Ljava/lang/String;

    .line 134
    const-string/jumbo v0, "application/vnd.adobe.360-message+dcx"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_TYPE:Ljava/lang/String;

    .line 135
    const-string/jumbo v0, "360#message"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_ROOT_KEY:Ljava/lang/String;

    .line 136
    const-string/jumbo v0, "message-version"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_VERSION_KEY:Ljava/lang/String;

    .line 137
    const-string/jumbo v0, "action-id"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_ACTION_ID_KEY:Ljava/lang/String;

    .line 138
    const-string/jumbo v0, "action-type"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_ACTION_TYPE_KEY:Ljava/lang/String;

    .line 139
    const-string/jumbo v0, "status"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_STATUS_KEY:Ljava/lang/String;

    .line 140
    const-string/jumbo v0, "code"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_STATUS_CODE_KEY:Ljava/lang/String;

    .line 141
    const-string/jumbo v0, "reason"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_STATUS_REASON_KEY:Ljava/lang/String;

    .line 142
    const-string/jumbo v0, "request-context"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_REQUEST_CONTEXT_KEY:Ljava/lang/String;

    .line 143
    const-string/jumbo v0, "response-context"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_RESPONSE_CONTEXT_KEY:Ljava/lang/String;

    .line 144
    const-string/jumbo v0, "app-specific-data"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_APP_SPECIFIC_DATA_KEY:Ljava/lang/String;

    .line 145
    const-string/jumbo v0, "transport-reserved-data"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_TRANSPORT_RESERVED_DATA_KEY:Ljava/lang/String;

    .line 146
    sput v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->Adobe360MessageCurrentVersion:I

    .line 147
    return-void

    :cond_0
    move v0, v1

    .line 78
    goto :goto_0
.end method

.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;ZLcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "snapshotPath"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 475
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "parentProgress is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 477
    :cond_1
    const-wide/16 v0, 0x1

    invoke-virtual {p3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateTotalUnitCount(J)V

    .line 479
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    const-wide/16 v0, 0x1

    invoke-virtual {p3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 482
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 485
    :cond_2
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 486
    if-eqz p2, :cond_3

    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_TEMP_COMPOSITE:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    :goto_0
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    .line 487
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_ROOT_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 489
    if-nez v0, :cond_4

    .line 491
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const-string/jumbo v1, "The 360#message property is missing from the manifest\'s root node."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 486
    :cond_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_COMPOSITE:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    goto :goto_0

    .line 495
    :cond_4
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_VERSION_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 497
    sget v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->Adobe360MessageCurrentVersion:I

    if-eq v1, v2, :cond_5

    .line 499
    const-wide/16 v0, 0x1

    invoke-virtual {p3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 500
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorUnknownMessageFormatVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 503
    :cond_5
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->initPropertiesWithMessageDictionary(Lorg/json/JSONObject;)V

    .line 505
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 507
    const-wide/16 v0, 0x1

    invoke-virtual {p3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 508
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 511
    :cond_6
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    const-string/jumbo v1, "/operation.json"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 513
    if-nez v0, :cond_7

    .line 515
    const-wide/16 v0, 0x1

    invoke-virtual {p3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 516
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const-string/jumbo v1, "The operation document component is missing."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 520
    :cond_7
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;

    move-result-object v0

    .line 522
    if-nez v0, :cond_8

    .line 524
    const-wide/16 v0, 0x1

    invoke-virtual {p3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 525
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const-string/jumbo v1, "The operation document is missing on disk."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 529
    :cond_8
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->createOperationDocumentWithFileAtPath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;

    move-result-object v3

    .line 531
    if-nez v3, :cond_9

    .line 533
    const-wide/16 v0, 0x1

    invoke-virtual {p3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 534
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const-string/jumbo v1, "The operation document could not be read."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 538
    :cond_9
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getOptions()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mRequestOptions:Lorg/json/JSONObject;

    .line 539
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getResults()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseResults:Lorg/json/JSONObject;

    .line 568
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getInputs()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 570
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getInputs()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    .line 572
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getInputs()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 574
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 575
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getInputs()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 576
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_c

    .line 578
    check-cast v1, Lorg/json/JSONArray;

    .line 579
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 580
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_b

    .line 582
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 583
    new-instance v7, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromCompositeImpl;

    invoke-direct {v7, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromCompositeImpl;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    const-string/jumbo v8, "/inputs"

    invoke-virtual {v7, v8, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromCompositeImpl;->perform(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v7

    .line 584
    if-nez v7, :cond_a

    .line 586
    const-wide/16 v0, 0x1

    invoke-virtual {p3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 587
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Input item with path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/inputs"

    invoke-static {v2, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is missing from the manifest."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 589
    :cond_a
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 591
    :cond_b
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 595
    :cond_c
    sget-boolean v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v2, :cond_d

    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unexpected input value type."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 596
    :cond_d
    check-cast v1, Ljava/lang/String;

    .line 597
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromCompositeImpl;

    invoke-direct {v2, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromCompositeImpl;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    const-string/jumbo v5, "/inputs"

    invoke-virtual {v2, v5, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromCompositeImpl;->perform(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v2

    .line 598
    if-nez v2, :cond_e

    .line 600
    const-wide/16 v2, 0x1

    invoke-virtual {p3, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 601
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Input item with path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/inputs"

    invoke-static {v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is missing from the manifest."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 603
    :cond_e
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 608
    :cond_f
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getOutputs()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 610
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getOutputs()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    .line 612
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getOutputs()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 614
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 615
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getOutputs()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 616
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_12

    .line 618
    check-cast v1, Lorg/json/JSONArray;

    .line 619
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 620
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_11

    .line 622
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 623
    new-instance v7, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromCompositeImpl;

    invoke-direct {v7, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromCompositeImpl;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    const-string/jumbo v8, "/outputs"

    invoke-virtual {v7, v8, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromCompositeImpl;->perform(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v7

    .line 624
    if-nez v7, :cond_10

    .line 626
    const-wide/16 v0, 0x1

    invoke-virtual {p3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 627
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Output item with path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/outputs"

    invoke-static {v2, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is missing from the manifest."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 629
    :cond_10
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 631
    :cond_11
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 635
    :cond_12
    sget-boolean v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v2, :cond_13

    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unexpected input value type."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 636
    :cond_13
    check-cast v1, Ljava/lang/String;

    .line 637
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromCompositeImpl;

    invoke-direct {v2, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromCompositeImpl;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    const-string/jumbo v5, "/outputs"

    invoke-virtual {v2, v5, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromCompositeImpl;->perform(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v2

    .line 638
    if-nez v2, :cond_14

    .line 640
    const-wide/16 v2, 0x1

    invoke-virtual {p3, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 641
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Input item with path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/outputs"

    invoke-static {v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is missing from the manifest."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 643
    :cond_14
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 648
    :cond_15
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getOutputDispositions()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 650
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mAcceptedMediaTypes:Lorg/json/JSONObject;

    .line 652
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getOutputDispositions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 653
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 654
    :cond_16
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 656
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 657
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;

    .line 659
    iget-object v3, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->mediaRange:Ljava/lang/String;

    if-eqz v3, :cond_16

    .line 661
    :try_start_0
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mAcceptedMediaTypes:Lorg/json/JSONObject;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->mediaRange:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 662
    :catch_0
    move-exception v0

    .line 663
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->TAG:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 670
    :cond_17
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->validateWithError()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    .line 671
    if-eqz v0, :cond_18

    .line 673
    const-wide/16 v2, 0x1

    invoke-virtual {p3, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 674
    throw v0

    .line 676
    :cond_18
    const-wide/16 v0, 0x1

    invoke-virtual {p3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 677
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mActionId:Ljava/lang/String;

    .line 171
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "snapshotPath"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 176
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "parentProgress is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 178
    :cond_1
    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateTotalUnitCount(J)V

    .line 179
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 182
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 185
    :cond_2
    const-string/jumbo v0, "manifest"

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->createManifestWithContentsOfFile(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v3

    .line 186
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_SNAPSHOT:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    .line 187
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mSnapshotPath:Ljava/lang/String;

    .line 189
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_ROOT_KEY:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 191
    if-nez v0, :cond_3

    .line 193
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const-string/jumbo v1, "The 360#message property is missing from the manifest\'s root node."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 197
    :cond_3
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_VERSION_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 199
    sget v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->Adobe360MessageCurrentVersion:I

    if-eq v1, v2, :cond_4

    .line 201
    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 202
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorUnknownMessageFormatVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 205
    :cond_4
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->initPropertiesWithMessageDictionary(Lorg/json/JSONObject;)V

    .line 207
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 209
    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 210
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 213
    :cond_5
    const-string/jumbo v0, "operation.json"

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->createOperationDocumentWithFileAtPath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;

    move-result-object v4

    .line 215
    if-nez v4, :cond_6

    .line 217
    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 218
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const-string/jumbo v1, "The operation document could not be read."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 221
    :cond_6
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getOptions()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mRequestOptions:Lorg/json/JSONObject;

    .line 222
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getResults()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseResults:Lorg/json/JSONObject;

    .line 311
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getInputs()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 313
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getInputs()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    .line 315
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getInputs()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 317
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getInputs()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 319
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_a

    .line 321
    check-cast v1, Lorg/json/JSONArray;

    .line 322
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 323
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_9

    .line 325
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 326
    const/4 v8, 0x1

    new-array v8, v8, [Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-boolean v10, v8, v9

    .line 328
    new-instance v9, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromManifest;

    invoke-direct {v9, p0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromManifest;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V

    const-string/jumbo v10, "/inputs"

    invoke-virtual {v9, v10, v7, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromManifest;->perform(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v9

    .line 329
    if-nez v9, :cond_8

    .line 331
    const/4 v0, 0x0

    aget-boolean v0, v8, v0

    if-eqz v0, :cond_7

    .line 333
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)V

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;->perform()Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageInternal;

    move-result-object v0

    .line 334
    const-wide/16 v2, 0x1

    invoke-virtual {p2, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 335
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 336
    const-string/jumbo v2, "Adobe360Message"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageCreationException;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageCreationException;-><init>(Ljava/util/HashMap;)V

    throw v0

    .line 341
    :cond_7
    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 342
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Input item with path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/inputs"

    invoke-static {v2, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is missing from the manifest."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 345
    :cond_8
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 347
    :cond_9
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 351
    :cond_a
    check-cast v1, Ljava/lang/String;

    .line 352
    const/4 v2, 0x1

    new-array v2, v2, [Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-boolean v7, v2, v6

    .line 353
    new-instance v6, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromManifest;

    invoke-direct {v6, p0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromManifest;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V

    const-string/jumbo v7, "/inputs"

    invoke-virtual {v6, v7, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromManifest;->perform(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v6

    .line 354
    if-nez v6, :cond_c

    .line 356
    const/4 v0, 0x0

    aget-boolean v0, v2, v0

    if-eqz v0, :cond_b

    .line 358
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)V

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;->perform()Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageInternal;

    move-result-object v0

    .line 359
    const-wide/16 v2, 0x1

    invoke-virtual {p2, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 360
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 361
    const-string/jumbo v2, "Adobe360Message"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageCreationException;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageCreationException;-><init>(Ljava/util/HashMap;)V

    throw v0

    .line 366
    :cond_b
    const-wide/16 v2, 0x1

    invoke-virtual {p2, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 367
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Input item with path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/inputs"

    invoke-static {v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is missing from the manifest."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 371
    :cond_c
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 376
    :cond_d
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getOutputs()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 378
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getOutputs()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    .line 380
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getOutputs()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 382
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 383
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getOutputs()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 384
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_11

    .line 386
    check-cast v1, Lorg/json/JSONArray;

    .line 387
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 388
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_10

    .line 390
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 391
    const/4 v8, 0x1

    new-array v8, v8, [Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-boolean v10, v8, v9

    .line 392
    new-instance v9, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromManifest;

    invoke-direct {v9, p0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromManifest;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V

    const-string/jumbo v10, "/outputs"

    invoke-virtual {v9, v10, v7, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromManifest;->perform(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v9

    .line 393
    if-nez v9, :cond_f

    .line 395
    const/4 v0, 0x0

    aget-boolean v0, v8, v0

    if-eqz v0, :cond_e

    .line 397
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)V

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;->perform()Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageInternal;

    move-result-object v0

    .line 398
    const-wide/16 v2, 0x1

    invoke-virtual {p2, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 399
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 400
    const-string/jumbo v2, "Adobe360Message"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageCreationException;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageCreationException;-><init>(Ljava/util/HashMap;)V

    throw v0

    .line 405
    :cond_e
    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 406
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Output item with path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/outputs"

    invoke-static {v2, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is missing from the manifest."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 409
    :cond_f
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 411
    :cond_10
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 415
    :cond_11
    check-cast v1, Ljava/lang/String;

    .line 416
    const/4 v2, 0x1

    new-array v2, v2, [Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-boolean v7, v2, v6

    .line 417
    new-instance v6, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromManifest;

    invoke-direct {v6, p0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromManifest;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V

    const-string/jumbo v7, "/outputs"

    invoke-virtual {v6, v7, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromManifest;->perform(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v6

    .line 418
    if-nez v6, :cond_13

    .line 420
    const/4 v0, 0x0

    aget-boolean v0, v2, v0

    if-eqz v0, :cond_12

    .line 422
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)V

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;->perform()Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageInternal;

    move-result-object v0

    .line 423
    const-wide/16 v2, 0x1

    invoke-virtual {p2, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 424
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 425
    const-string/jumbo v2, "Adobe360Message"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageCreationException;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageCreationException;-><init>(Ljava/util/HashMap;)V

    throw v0

    .line 430
    :cond_12
    const-wide/16 v2, 0x1

    invoke-virtual {p2, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 431
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Output item with path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/outputs"

    invoke-static {v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is missing from the manifest."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 435
    :cond_13
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 440
    :cond_14
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getOutputDispositions()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 442
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mAcceptedMediaTypes:Lorg/json/JSONObject;

    .line 444
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->getOutputDispositions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 445
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 446
    :cond_15
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 448
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 449
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;

    .line 451
    iget-object v3, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->mediaRange:Ljava/lang/String;

    if-eqz v3, :cond_15

    .line 453
    :try_start_0
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mAcceptedMediaTypes:Lorg/json/JSONObject;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->mediaRange:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 454
    :catch_0
    move-exception v0

    .line 455
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->TAG:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 462
    :cond_16
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->validateWithError()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    .line 463
    if-eqz v0, :cond_17

    .line 465
    const-wide/16 v2, 0x1

    invoke-virtual {p2, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 466
    throw v0

    .line 469
    :cond_17
    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 470
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 78
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->executeBlockOnQueue(Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->messageDictionaryFromProperties()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_ROOT_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->imageOutputParametersFromAcceptedMediaTypes()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->archiveItemsWithAssets(Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private archiveItemsWithAssets(Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1505
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1593
    new-instance v4, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1ArchiveItemsWithAssetWrapper;

    invoke-direct {v4, p0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1ArchiveItemsWithAssetWrapper;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Ljava/lang/String;)V

    .line 1595
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360Utils;->getAllKeys(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1596
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1598
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1599
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1602
    check-cast v0, Ljava/util/ArrayList;

    .line 1603
    const/4 v3, 0x1

    .line 1604
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 1606
    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1ArchiveItemsWithAssetWrapper;->perform(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1607
    if-eqz v0, :cond_1

    .line 1609
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1613
    :cond_1
    const/4 v0, 0x0

    .line 1617
    :goto_2
    if-nez v0, :cond_0

    move-object v0, v1

    .line 1638
    :goto_3
    return-object v0

    .line 1625
    :cond_2
    sget-boolean v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v6, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unexpected value type found in asset dictionary."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1626
    :cond_3
    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 1627
    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1ArchiveItemsWithAssetWrapper;->perform(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1628
    if-eqz v0, :cond_4

    .line 1630
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 1634
    goto :goto_3

    :cond_5
    move-object v0, v2

    .line 1638
    goto :goto_3

    :cond_6
    move v0, v3

    goto :goto_2
.end method

.method private static executeBlockOnQueue(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 830
    if-eqz p1, :cond_0

    .line 832
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 838
    :goto_0
    return-void

    .line 836
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private getAssetWithName(Ljava/lang/String;Ljava/util/List;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2896
    .line 2899
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2901
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    .line 2902
    const-string/jumbo v2, "inputs"

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2910
    :goto_0
    if-nez v0, :cond_1

    .line 2912
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorMissingAsset:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const-string/jumbo v1, "Message does not contain any assets."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2904
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 2906
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    .line 2907
    const-string/jumbo v2, "outputs"

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2916
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2918
    instance-of v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    if-nez v2, :cond_2

    .line 2920
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorMissingAsset:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2922
    :cond_2
    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private getDataForAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2604
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "asset"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2605
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "srcPathPrefix"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2607
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$6;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$adobe360$Adobe360Message$Adobe360MessageFormat:[I

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 2688
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unexpected message format type."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2609
    :pswitch_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2614
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    move-object v1, v0

    .line 2692
    :cond_2
    :goto_1
    return-object v1

    .line 2616
    :catch_0
    move-exception v0

    .line 2618
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->TAG:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 2623
    :cond_3
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, [B

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2625
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    move-object v1, v0

    goto :goto_1

    .line 2632
    :pswitch_1
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mSnapshotPath:Ljava/lang/String;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "snapshotPath cannot be nil when format is set to \'snapshot\'"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2634
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mSnapshotPath:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2637
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_1

    .line 2639
    :catch_1
    move-exception v0

    .line 2641
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->TAG:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2648
    :pswitch_2
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "composite cannot be nil when format is set to \'composite\'"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2649
    :cond_5
    const-string/jumbo v0, "/"

    invoke-static {v0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2651
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2652
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 2654
    if-nez v0, :cond_6

    .line 2656
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing component with path "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2662
    :cond_6
    :try_start_2
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 2667
    :goto_2
    if-nez v0, :cond_7

    .line 2669
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing component file for component with path "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2663
    :catch_2
    move-exception v0

    .line 2664
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->TAG:Ljava/lang/String;

    invoke-static {v3, v4, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    .line 2676
    :cond_7
    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    goto/16 :goto_1

    .line 2678
    :catch_3
    move-exception v0

    .line 2680
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->TAG:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2685
    :pswitch_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorAssetFileDoesNotExist:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2607
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getElementForAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    .line 2991
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "asset"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2992
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2994
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_FROM_BUILDER:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_COMPOSITE:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_TEMP_COMPOSITE:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Backing 360 Message representation should not support DCX elements"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2998
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    return-object v0

    .line 3002
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorIncorrectAssetDataType:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Asset with path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a DCX Element"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0
.end method

.method private getInputArrayWithName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    .line 2959
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2960
    if-nez v0, :cond_0

    .line 2962
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorMissingAsset:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2965
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_1

    .line 2967
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorScalarVectorMismatch:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2970
    :cond_1
    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private getInputWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    .line 2927
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2928
    if-nez v0, :cond_0

    .line 2930
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorMissingAsset:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2933
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 2935
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorScalarVectorMismatch:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2938
    :cond_1
    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    return-object v0
.end method

.method private getOutputArrayWithName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    .line 2975
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2976
    if-nez v0, :cond_0

    .line 2978
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorMissingAsset:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2981
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_1

    .line 2983
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorScalarVectorMismatch:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2986
    :cond_1
    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private getOutputWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    .line 2943
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2944
    if-nez v0, :cond_0

    .line 2946
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorMissingAsset:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2949
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 2951
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorScalarVectorMismatch:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2954
    :cond_1
    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    return-object v0
.end method

.method private getPathToImmutableAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2697
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "asset"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2698
    :cond_0
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "srcPathPrefix"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2700
    :cond_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$6;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$adobe360$Adobe360Message$Adobe360MessageFormat:[I

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2755
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unexpected message format type."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2703
    :pswitch_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2706
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2758
    :cond_2
    :goto_0
    return-object v0

    .line 2708
    :cond_3
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, [B

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2710
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorAssetFileDoesNotExist:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2717
    :pswitch_1
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mSnapshotPath:Ljava/lang/String;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "snapshotPath cannot be nil when format is set to \'snapshot\'"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2718
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mSnapshotPath:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2719
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2724
    :pswitch_2
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "composite cannot be nil when format is set to \'composite\'"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2725
    :cond_5
    const-string/jumbo v1, "/"

    invoke-static {v1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2727
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2728
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 2730
    if-nez v1, :cond_6

    .line 2732
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing component with path "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2738
    :cond_6
    :try_start_0
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2743
    :goto_1
    if-nez v0, :cond_2

    .line 2745
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing component file for component with path "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2739
    :catch_0
    move-exception v1

    .line 2740
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->TAG:Ljava/lang/String;

    invoke-static {v3, v4, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2752
    :pswitch_3
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorAssetFileDoesNotExist:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2700
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private imageOutputParametersFromAcceptedMediaTypes()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 755
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mAcceptedMediaTypes:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 757
    new-instance v1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mAcceptedMediaTypes:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 759
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mAcceptedMediaTypes:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 762
    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;

    invoke-direct {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;-><init>()V

    .line 763
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mAcceptedMediaTypes:Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->mediaRange:Ljava/lang/String;

    .line 764
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 770
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private initPropertiesWithMessageDictionary(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 681
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_ACTION_ID_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mActionId:Ljava/lang/String;

    .line 682
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_ACTION_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mActionType:Ljava/lang/String;

    .line 684
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_STATUS_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 686
    if-eqz v0, :cond_0

    .line 688
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_STATUS_CODE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseStatusCode:Ljava/lang/String;

    .line 689
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_STATUS_REASON_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseReason:Ljava/lang/String;

    .line 692
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_REQUEST_CONTEXT_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 694
    if-eqz v0, :cond_1

    .line 696
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->createContextWithDictionary(Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mRequestContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    .line 699
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_RESPONSE_CONTEXT_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 701
    if-eqz v0, :cond_2

    .line 703
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->createContextWithDictionary(Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    .line 706
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_APP_SPECIFIC_DATA_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mAppSpecificData:Lorg/json/JSONObject;

    .line 707
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_TRANSPORT_RESERVED_DATA_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mTransportReservedData:Lorg/json/JSONObject;

    .line 708
    return-void
.end method

.method private messageDictionaryFromProperties()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 712
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 713
    sget v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->Adobe360MessageCurrentVersion:I

    .line 715
    :try_start_0
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_VERSION_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 717
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_ACTION_ID_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mActionId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 718
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_ACTION_TYPE_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mActionType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 720
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseStatusCode:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseReason:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 722
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 723
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_STATUS_CODE_KEY:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseStatusCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 724
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_STATUS_REASON_KEY:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseReason:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 725
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_STATUS_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mRequestContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    if-eqz v0, :cond_2

    .line 730
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_REQUEST_CONTEXT_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mRequestContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->getDictionary()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 733
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    if-eqz v0, :cond_3

    .line 735
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_RESPONSE_CONTEXT_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->getDictionary()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 738
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mAppSpecificData:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    .line 740
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_APP_SPECIFIC_DATA_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mAppSpecificData:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 743
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mTransportReservedData:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    .line 745
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_MESSAGE_TRANSPORT_RESERVED_DATA_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mTransportReservedData:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :cond_5
    :goto_0
    return-object v1

    .line 747
    :catch_0
    move-exception v0

    .line 748
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->TAG:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static readFromComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;",
            "Landroid/os/Handler;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;"
        }
    .end annotation

    .prologue
    .line 996
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "composite"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 998
    :cond_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;-><init>()V

    .line 1000
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$2;

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$2;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V

    .line 1031
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1032
    return-object v1
.end method

.method public static readFromPath(Ljava/lang/String;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;"
        }
    .end annotation

    .prologue
    .line 851
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "path"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 852
    :cond_0
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;-><init>()V

    .line 854
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V

    .line 979
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 981
    return-object v2
.end method

.method private static validateActionType(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 797
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_ACTION_TYPE_EDIT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_ACTION_TYPE_EMBED:Ljava/lang/String;

    .line 798
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_ACTION_TYPE_CAPTURE:Ljava/lang/String;

    .line 799
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_ACTION_TYPE_CAPTURE_N:Ljava/lang/String;

    .line 800
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->ADOBE_360_ACTION_TYPE_EMBED_N:Ljava/lang/String;

    .line 801
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 797
    :goto_0
    return v0

    .line 801
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2313
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "asset"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2331
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$6;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$adobe360$Adobe360Message$Adobe360MessageFormat:[I

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 2445
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unexpected message format type."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2334
    :pswitch_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2339
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2344
    :goto_0
    if-eqz v0, :cond_6

    move v0, v1

    .line 2448
    :cond_1
    :goto_1
    return v0

    .line 2340
    :catch_0
    move-exception v0

    .line 2341
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    .line 2342
    goto :goto_0

    .line 2349
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, [B

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2353
    :try_start_1
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p3, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->fWrite(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 2358
    :goto_2
    if-eqz v0, :cond_6

    move v0, v1

    .line 2360
    goto :goto_1

    .line 2354
    :catch_1
    move-exception v0

    .line 2355
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    .line 2356
    goto :goto_2

    .line 2363
    :cond_3
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2365
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    .line 2366
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1WriteElementAsCompositeWrapper;

    invoke-direct {v1, p0, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1WriteElementAsCompositeWrapper;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1WriteElementAsCompositeWrapper;->perform(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;)Z

    move-result v0

    goto :goto_1

    .line 2373
    :pswitch_1
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mSnapshotPath:Ljava/lang/String;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "snapshotPath cannot be nil when format is set to \'snapshot\'"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2374
    :cond_4
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2375
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Asset data cannot be a DCX Element when the message\'s backing format is a snapshot."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2378
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mSnapshotPath:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2380
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v1

    .line 2385
    :goto_3
    if-nez v0, :cond_1

    :cond_6
    move v0, v2

    .line 2448
    goto/16 :goto_1

    .line 2381
    :catch_2
    move-exception v0

    .line 2382
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->TAG:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v1, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    .line 2383
    goto :goto_3

    .line 2395
    :pswitch_2
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "composite cannot be nil when format is set to \'composite\'"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2396
    :cond_7
    const-string/jumbo v0, "/"

    invoke-static {v0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2398
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2399
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 2401
    if-nez v0, :cond_9

    .line 2403
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getElementWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    move-result-object v0

    .line 2404
    if-nez v0, :cond_8

    .line 2405
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Missing component with path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2410
    :cond_8
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1WriteElementAsCompositeWrapper;

    invoke-direct {v1, p0, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1WriteElementAsCompositeWrapper;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1WriteElementAsCompositeWrapper;->perform(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;)Z

    move-result v0

    goto/16 :goto_1

    .line 2418
    :cond_9
    :try_start_3
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 2423
    :goto_4
    if-nez v0, :cond_a

    .line 2424
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Missing component file for component with path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2419
    :catch_3
    move-exception v0

    .line 2420
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v6, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->TAG:Ljava/lang/String;

    invoke-static {v5, v6, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_4

    .line 2430
    :cond_a
    :try_start_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v0}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move v0, v1

    .line 2435
    :goto_5
    if-nez v0, :cond_1

    .line 2442
    :pswitch_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorAssetFileDoesNotExist:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    invoke-static {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2431
    :catch_4
    move-exception v0

    .line 2432
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v1, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    .line 2433
    goto :goto_5

    .line 2331
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private writeToSnapshotAtPathNonSingleFile(Ljava/lang/String;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1064
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "snapshotPath"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    .line 1066
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    .line 1067
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;-><init>()V

    .line 1068
    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->setTotalUnitCount(J)V

    .line 1070
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V

    .line 1499
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1500
    return-object v2

    :cond_2
    move v0, v1

    .line 1065
    goto :goto_0
.end method

.method private writeToSnapshotAtPathSingleFile(Ljava/lang/String;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;"
        }
    .end annotation

    .prologue
    .line 1646
    const/4 v0, 0x5

    .line 1647
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;-><init>()V

    .line 1648
    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->setTotalUnitCount(J)V

    .line 1650
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V

    .line 1958
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1960
    return-object v2
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    .line 777
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_TEMP_SNAPSHOT:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mSnapshotPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 778
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mSnapshotPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_TEMP_COMPOSITE:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    if-ne v0, v1, :cond_0

    .line 783
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removeLocalStorage()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 784
    :catch_0
    move-exception v0

    .line 785
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->destroy()V

    .line 793
    return-void
.end method

.method public getAcceptedMediaTypes()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 3123
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mAcceptedMediaTypes:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getActionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3091
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mActionId:Ljava/lang/String;

    return-object v0
.end method

.method public getActionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3099
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mActionType:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSpecificData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 3131
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mAppSpecificData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getDataForAssetInInputArrayWithName(Ljava/lang/String;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    .line 2582
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2583
    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getInputArrayWithName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2584
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 2585
    const-string/jumbo v1, "inputs"

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getDataForAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getDataForAssetInOutputArrayWithName(Ljava/lang/String;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    .line 2597
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2598
    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getOutputArrayWithName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2599
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 2600
    const-string/jumbo v1, "outputs"

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getDataForAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getDataForInputWithName(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    .line 2559
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getInputWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v0

    .line 2560
    const-string/jumbo v1, "inputs"

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getDataForAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getDataForOutputWithName(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    .line 2569
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getOutputWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v0

    .line 2570
    const-string/jumbo v1, "outputs"

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getDataForAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getElementForAssetInInputArrayWithName(Ljava/lang/String;I)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    .line 3052
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3053
    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getInputArrayWithName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3054
    if-nez v0, :cond_1

    .line 3056
    const/4 v0, 0x0

    .line 3060
    :goto_0
    return-object v0

    .line 3059
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 3060
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getElementForAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    move-result-object v0

    goto :goto_0
.end method

.method public getElementForAssetInOutputArrayWithName(Ljava/lang/String;I)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    .line 3075
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3076
    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getOutputArrayWithName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3077
    if-nez v0, :cond_1

    .line 3079
    const/4 v0, 0x0

    .line 3083
    :goto_0
    return-object v0

    .line 3082
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 3083
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getElementForAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    move-result-object v0

    goto :goto_0
.end method

.method public getElementForInputWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    .line 3014
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getInputWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v0

    .line 3015
    if-nez v0, :cond_0

    .line 3017
    const/4 v0, 0x0

    .line 3020
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getElementForAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    move-result-object v0

    goto :goto_0
.end method

.method public getElementForOutputWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    .line 3031
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getOutputWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v0

    .line 3032
    if-nez v0, :cond_0

    .line 3034
    const/4 v0, 0x0

    .line 3037
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getElementForAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputDescriptors()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3172
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputDescriptors:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 3173
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputDescriptors:Ljava/util/Map;

    .line 3204
    :goto_0
    return-object v0

    .line 3175
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 3177
    new-instance v2, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 3179
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 3183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3184
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 3187
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 3189
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3192
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3196
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3200
    :cond_3
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputDescriptors:Ljava/util/Map;

    .line 3201
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputDescriptors:Ljava/util/Map;

    goto :goto_0

    .line 3204
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOutputDescriptors()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3213
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputDescriptors:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 3214
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputDescriptors:Ljava/util/Map;

    .line 3244
    :goto_0
    return-object v0

    .line 3216
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 3217
    new-instance v2, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 3219
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3221
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 3223
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3224
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 3227
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 3229
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3232
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3236
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3240
    :cond_3
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputDescriptors:Ljava/util/Map;

    .line 3241
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputDescriptors:Ljava/util/Map;

    goto :goto_0

    .line 3244
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPathToImmutableAssetInInputArrayWithName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 2798
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2799
    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getInputArrayWithName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2800
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 2801
    const-string/jumbo v1, "inputs"

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getPathToImmutableAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathToImmutableAssetInOutputArrayWithName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    .line 2815
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2816
    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getOutputArrayWithName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2817
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 2818
    const-string/jumbo v1, "outputs"

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getPathToImmutableAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathToImmutableAssetWithName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 2832
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2833
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2835
    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getAssetWithName(Ljava/lang/String;Ljava/util/List;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v2

    .line 2837
    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$6;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$adobe360$Adobe360Message$Adobe360MessageFormat:[I

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2888
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unexpected message format type."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2840
    :pswitch_0
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2843
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2891
    :cond_1
    :goto_0
    return-object v0

    .line 2845
    :cond_2
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, [B

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2847
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorAssetFileDoesNotExist:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2854
    :pswitch_1
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mSnapshotPath:Ljava/lang/String;

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "snapshotPath cannot be nil when format is set to \'snapshot\'"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2855
    :cond_3
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mSnapshotPath:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2856
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2860
    :pswitch_2
    sget-boolean v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-nez v3, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "composite cannot be nil when format is set to \'composite\'"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2861
    :cond_4
    const-string/jumbo v3, "/"

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2863
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2864
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 2866
    if-nez v0, :cond_5

    .line 2868
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing component with path "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2874
    :cond_5
    :try_start_0
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2879
    :goto_1
    if-nez v0, :cond_1

    .line 2881
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing component file for component with path "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 2875
    :catch_0
    move-exception v0

    .line 2876
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->TAG:Ljava/lang/String;

    invoke-static {v3, v4, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :cond_6
    move-object v0, v1

    .line 2891
    goto/16 :goto_0

    .line 2837
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPathToImmutableInputWithName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 2770
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getInputWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v0

    .line 2771
    const-string/jumbo v1, "inputs"

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getPathToImmutableAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathToImmutableOutputWithName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 2783
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getOutputWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v0

    .line 2784
    const-string/jumbo v1, "outputs"

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getPathToImmutableAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestContext()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;
    .locals 1

    .prologue
    .line 3115
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mRequestContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    return-object v0
.end method

.method public getRequestOptions()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 3107
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mRequestOptions:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getResponseContext()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;
    .locals 1

    .prologue
    .line 3147
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    return-object v0
.end method

.method public getResponseReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3163
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseReason:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseResults()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 3139
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseResults:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getResponseStatusCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3155
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseStatusCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTransportReservedData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 3251
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mTransportReservedData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public removeLocalStorage()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3268
    const/4 v0, 0x0

    .line 3270
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$6;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$adobe360$Adobe360Message$Adobe360MessageFormat:[I

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3332
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 3334
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    invoke-static {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 3275
    :pswitch_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v1, :cond_0

    .line 3277
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removeLocalStorage()Z

    move-result v0

    .line 3278
    iput-object v5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    goto :goto_0

    .line 3286
    :pswitch_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mSnapshotPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3288
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mSnapshotPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    move-result v0

    .line 3289
    iput-object v5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mSnapshotPath:Ljava/lang/String;

    goto :goto_0

    .line 3296
    :pswitch_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3298
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 3300
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3303
    :cond_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 3305
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3308
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3310
    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 3311
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3313
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    move-result v1

    .line 3315
    if-nez v1, :cond_4

    :cond_3
    move v0, v1

    .line 3325
    goto :goto_0

    :cond_4
    move v0, v1

    :goto_2
    move v1, v0

    .line 3323
    goto :goto_1

    .line 3337
    :cond_5
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_UNSPECIFIED:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    .line 3338
    return v0

    :cond_6
    move v0, v1

    goto :goto_2

    .line 3270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected validateWithError()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
    .locals 2

    .prologue
    .line 805
    const/4 v0, 0x0

    .line 807
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mActionId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 809
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const-string/jumbo v1, "Message is missing actionId."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    .line 824
    :cond_0
    :goto_0
    return-object v0

    .line 811
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mActionType:Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->validateActionType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 813
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const-string/jumbo v1, "Message doesn\'t have valid actionType."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    goto :goto_0

    .line 815
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 817
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const-string/jumbo v1, "Input assets and output assets may not be included in the same message."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    goto :goto_0

    .line 819
    :cond_3
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseResults:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseStatusCode:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 821
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const-string/jumbo v1, "Output assets may only be specified in a response message."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    goto :goto_0
.end method

.method public writeAssetInInputArrayWithName(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 2512
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2513
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "path"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2515
    :cond_1
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getInputArrayWithName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2516
    if-nez v0, :cond_2

    .line 2518
    const/4 v0, 0x0

    .line 2522
    :goto_0
    return v0

    .line 2521
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 2522
    const-string/jumbo v1, "inputs"

    invoke-direct {p0, v0, v1, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->writeAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public writeAssetInOutputArrayWithName(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 2540
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2541
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "path"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2543
    :cond_1
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getOutputArrayWithName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2544
    if-nez v0, :cond_2

    .line 2546
    const/4 v0, 0x0

    .line 2550
    :goto_0
    return v0

    .line 2549
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 2550
    const-string/jumbo v1, "outputs"

    invoke-direct {p0, v0, v1, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->writeAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public writeInputWithName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 2462
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2463
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "path"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2465
    :cond_1
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getInputWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v0

    .line 2466
    if-nez v0, :cond_2

    .line 2468
    const/4 v0, 0x0

    .line 2471
    :goto_0
    return v0

    :cond_2
    const-string/jumbo v1, "inputs"

    invoke-direct {p0, v0, v1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->writeAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public writeOutputWithName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 2485
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2486
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "path"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2488
    :cond_1
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getOutputWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v0

    .line 2489
    if-nez v0, :cond_2

    .line 2491
    const/4 v0, 0x0

    .line 2494
    :goto_0
    return v0

    :cond_2
    const-string/jumbo v1, "outputs"

    invoke-direct {p0, v0, v1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->writeAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public writeToCompositeAtPath(Ljava/lang/String;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1975
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "compositePath"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1977
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    .line 1978
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    .line 1979
    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-direct {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;-><init>()V

    .line 1980
    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->setTotalUnitCount(J)V

    .line 1982
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V

    .line 2302
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2304
    return-object v3

    :cond_2
    move v0, v1

    .line 1977
    goto :goto_0
.end method

.method public writeToSnapshotAtPath(Ljava/lang/String;ZLandroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/os/Handler;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;"
        }
    .end annotation

    .prologue
    .line 1049
    if-nez p2, :cond_0

    .line 1051
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->writeToSnapshotAtPathNonSingleFile(Ljava/lang/String;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    move-result-object v0

    .line 1055
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->writeToSnapshotAtPathSingleFile(Ljava/lang/String;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    move-result-object v0

    goto :goto_0
.end method
