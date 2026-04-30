.class public Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentData;
.super Ljava/lang/Object;
.source "AdobeAssetCommentData.java"


# instance fields
.field private avatarURL:Ljava/lang/String;

.field private commentURL:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private resourceURL:Ljava/lang/String;

.field private timeStamp:J

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentData;->userName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentData;->content:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentData;->avatarURL:Ljava/lang/String;

    .line 17
    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentData;->commentURL:Ljava/lang/String;

    .line 18
    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentData;->resourceURL:Ljava/lang/String;

    .line 19
    iput-wide p3, p0, Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentData;->timeStamp:J

    .line 21
    return-void
.end method


# virtual methods
.method public getAvatarURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentData;->avatarURL:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentData;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentData;->commentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentData;->resourceURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentData;->timeStamp:J

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentData;->userName:Ljava/lang/String;

    return-object v0
.end method
