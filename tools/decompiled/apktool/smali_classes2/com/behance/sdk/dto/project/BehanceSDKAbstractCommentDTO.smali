.class public Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;
.super Ljava/lang/Object;
.source "BehanceSDKAbstractCommentDTO.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;",
        ">;"
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private createdDate:J

.field private id:Ljava/lang/String;

.field private user:Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget-wide v2, p0, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;->createdDate:J

    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;->getCreatedDate()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 71
    const/4 v0, -0x1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    iget-wide v2, p0, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;->createdDate:J

    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;->getCreatedDate()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 73
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;->compareTo(Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;)I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedDate()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;->createdDate:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;->user:Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;->content:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setCreatedDate(J)V
    .locals 1

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;->createdDate:J

    .line 57
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;->id:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setUser(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;->user:Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    .line 65
    return-void
.end method
