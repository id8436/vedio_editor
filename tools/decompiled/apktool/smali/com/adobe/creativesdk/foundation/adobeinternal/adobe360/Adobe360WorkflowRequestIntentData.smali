.class public Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;
.super Ljava/lang/Object;
.source "Adobe360WorkflowRequestIntentData.java"


# instance fields
.field private actionId:Ljava/lang/String;

.field private actionSubType:Ljava/lang/String;

.field private requestMessage:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

.field private responseMessagePathInCaller:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->requestMessage:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    .line 28
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->responseMessagePathInCaller:Landroid/net/Uri;

    .line 30
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->actionId:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->actionSubType:Ljava/lang/String;

    .line 36
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->setRequestMessage(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->setResponseMessagePathInCaller(Landroid/net/Uri;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->setActionId(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->setActionSubType(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getActionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->actionId:Ljava/lang/String;

    return-object v0
.end method

.method public getActionSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->actionSubType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMessage()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->requestMessage:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    return-object v0
.end method

.method public getResponseMessagePathInCaller()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->responseMessagePathInCaller:Landroid/net/Uri;

    return-object v0
.end method

.method public setActionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->actionId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setActionSubType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->actionSubType:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setRequestMessage(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->requestMessage:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    .line 52
    return-void
.end method

.method public setResponseMessagePathInCaller(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestIntentData;->responseMessagePathInCaller:Landroid/net/Uri;

    .line 63
    return-void
.end method
