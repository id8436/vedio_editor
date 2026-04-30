.class public Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;
.super Ljava/lang/Object;
.source "AdobeCollaborationSessionModel.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpServiceDelegate;


# static fields
.field private static _sharedModel:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;


# instance fields
.field online:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;->_sharedModel:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getSharedModel()Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;->_sharedModel:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;->_sharedModel:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;

    .line 35
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;->_sharedModel:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;

    return-object v0
.end method


# virtual methods
.method public HTTPServiceAuthenticationDidFail(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 42
    .line 44
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->hasEncounteredTooManyAuthFailures()Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->reAuthenticate()Z

    move-result v0

    .line 47
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->setAccessToken(Ljava/lang/String;)V

    .line 57
    :goto_0
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->setSuspended(Z)V

    .line 62
    :cond_0
    return v0

    .line 52
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeStorageModel"

    const-string/jumbo v3, "Too many authentication failures have occurred within the last 5 minutes."

    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->setAccessToken(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public HTTPServiceDidDisconnect(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3a98

    .line 69
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 70
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Ljava/util/Timer;)V

    move-wide v4, v2

    .line 101
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 103
    return-void
.end method

.method public HTTPServiceIsActive(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;->online:Z

    return v0
.end method

.method public login()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public logout()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method
