.class public Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;
.super Ljava/lang/Object;
.source "Adobe360WorkflowRequestIntentCreator.java"


# static fields
.field protected static final k360MessageAction:Ljava/lang/String; = "360#action"

.field protected static final k360MessageActionId:Ljava/lang/String; = "action_id"

.field protected static final k360MessageActionSubType:Ljava/lang/String; = "action_sub_type"

.field protected static final kReceiverOwnsRequestMessage:Ljava/lang/String; = "own_request_message"

.field protected static final kRequestMessagePath:Ljava/lang/String; = "request_message_snapshot_uri"

.field protected static final kResponseMessagePath:Ljava/lang/String; = "response_message_snapshot_uri"


# instance fields
.field private _action:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;

.field private _authority:Ljava/lang/String;

.field private _context:Landroid/content/Context;

.field private _receiverOwnsRequestMessage:Z

.field private _requestMessage:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

.field private _requestMessagePath:Ljava/lang/String;

.field private _responseMessagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_requestMessage:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    .line 46
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_requestMessagePath:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_responseMessagePath:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_receiverOwnsRequestMessage:Z

    .line 49
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_context:Landroid/content/Context;

    .line 50
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_authority:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_action:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;

    .line 80
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_requestMessage:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    .line 81
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_requestMessagePath:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_responseMessagePath:Ljava/lang/String;

    .line 83
    iput-boolean p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_receiverOwnsRequestMessage:Z

    .line 84
    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_context:Landroid/content/Context;

    .line 85
    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_authority:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_action:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_requestMessagePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_requestMessage:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->handleErrorCallback(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_authority:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_responseMessagePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_action:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_receiverOwnsRequestMessage:Z

    return v0
.end method

.method static synthetic access$800(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;Landroid/content/Intent;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->handleCompletionCallback(Landroid/content/Intent;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private handleCompletionCallback(Landroid/content/Intent;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    if-eqz p2, :cond_0

    .line 118
    if-eqz p3, :cond_1

    .line 120
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator$2;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/content/Intent;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-interface {p2, p1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleErrorCallback(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    if-eqz p2, :cond_0

    .line 95
    if-eqz p3, :cond_1

    .line 97
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-interface {p2, p1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public createRequestIntent(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_requestMessage:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_requestMessagePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->_authority:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 152
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;->Adobe360WorkflowErrorBadRequest:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;->handleErrorCallback(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    .line 155
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator$3;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator$3;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentCreator;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    .line 279
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 280
    return-void
.end method
