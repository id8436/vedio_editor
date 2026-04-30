.class public Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentData;
.super Ljava/lang/Object;
.source "Adobe360WorkflowResponseIntentData.java"


# instance fields
.field private responseMessage:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentData;->responseMessage:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    .line 27
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentData;->setResponseMessage(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getResponseMessage()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentData;->responseMessage:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    return-object v0
.end method

.method public setResponseMessage(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseIntentData;->responseMessage:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    .line 40
    return-void
.end method
