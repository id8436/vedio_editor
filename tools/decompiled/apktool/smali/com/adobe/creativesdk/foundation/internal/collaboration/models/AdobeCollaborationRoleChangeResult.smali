.class public Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRoleChangeResult;
.super Ljava/lang/Object;
.source "AdobeCollaborationRoleChangeResult.java"


# instance fields
.field private statusCode:I

.field private statusText:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRoleChangeResult;->statusCode:I

    return v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRoleChangeResult;->statusText:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRoleChangeResult;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setStatusCode(I)V
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRoleChangeResult;->statusCode:I

    .line 25
    return-void
.end method

.method public setStatusText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRoleChangeResult;->statusText:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRoleChangeResult;->userId:Ljava/lang/String;

    .line 33
    return-void
.end method
