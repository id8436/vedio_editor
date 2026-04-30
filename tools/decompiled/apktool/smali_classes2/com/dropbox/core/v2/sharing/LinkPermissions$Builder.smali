.class public Lcom/dropbox/core/v2/sharing/LinkPermissions$Builder;
.super Ljava/lang/Object;
.source "LinkPermissions.java"


# instance fields
.field protected final canRevoke:Z

.field protected requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

.field protected resolvedVisibility:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

.field protected revokeFailureReason:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;


# direct methods
.method protected constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-boolean p1, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions$Builder;->canRevoke:Z

    .line 132
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions$Builder;->resolvedVisibility:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    .line 133
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions$Builder;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    .line 134
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions$Builder;->revokeFailureReason:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    .line 135
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/LinkPermissions;
    .locals 5

    .prologue
    .line 191
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkPermissions;

    iget-boolean v1, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions$Builder;->canRevoke:Z

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions$Builder;->resolvedVisibility:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions$Builder;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions$Builder;->revokeFailureReason:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/sharing/LinkPermissions;-><init>(ZLcom/dropbox/core/v2/sharing/ResolvedVisibility;Lcom/dropbox/core/v2/sharing/RequestedVisibility;Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;)V

    return-object v0
.end method

.method public withRequestedVisibility(Lcom/dropbox/core/v2/sharing/RequestedVisibility;)Lcom/dropbox/core/v2/sharing/LinkPermissions$Builder;
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions$Builder;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    .line 167
    return-object p0
.end method

.method public withResolvedVisibility(Lcom/dropbox/core/v2/sharing/ResolvedVisibility;)Lcom/dropbox/core/v2/sharing/LinkPermissions$Builder;
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions$Builder;->resolvedVisibility:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    .line 151
    return-object p0
.end method

.method public withRevokeFailureReason(Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;)Lcom/dropbox/core/v2/sharing/LinkPermissions$Builder;
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions$Builder;->revokeFailureReason:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    .line 181
    return-object p0
.end method
