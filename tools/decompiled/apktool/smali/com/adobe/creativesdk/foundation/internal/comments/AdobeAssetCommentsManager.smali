.class public Lcom/adobe/creativesdk/foundation/internal/comments/AdobeAssetCommentsManager;
.super Ljava/lang/Object;
.source "AdobeAssetCommentsManager.java"


# instance fields
.field targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeAssetCommentsManager;->targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 14
    return-void
.end method


# virtual methods
.method public addComments(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;)V
    .locals 6

    .prologue
    .line 31
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->getSharedSession()Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

    move-result-object v0

    .line 32
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getEmail()Ljava/lang/String;

    move-result-object v3

    .line 35
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeAssetCommentsManager;->targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->createComment(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 37
    return-void
.end method

.method public deleteComment(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeDeleteCommentCallback;)V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->getSharedSession()Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->deleteComment(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeDeleteCommentCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 26
    return-void
.end method

.method public getComments(Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeGetCommentsCallback;)V
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->getSharedSession()Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeAssetCommentsManager;->targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->getComments(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeGetCommentsCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 20
    return-void
.end method
