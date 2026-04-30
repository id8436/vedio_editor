.class public Lcom/dropbox/core/v2/sharing/LinkPermission;
.super Ljava/lang/Object;
.source "LinkPermission.java"


# instance fields
.field protected final action:Lcom/dropbox/core/v2/sharing/LinkAction;

.field protected final allow:Z

.field protected final reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/LinkAction;Z)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/sharing/LinkPermission;-><init>(Lcom/dropbox/core/v2/sharing/LinkAction;ZLcom/dropbox/core/v2/sharing/PermissionDeniedReason;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/LinkAction;ZLcom/dropbox/core/v2/sharing/PermissionDeniedReason;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'action\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/LinkPermission;->action:Lcom/dropbox/core/v2/sharing/LinkAction;

    .line 41
    iput-boolean p2, p0, Lcom/dropbox/core/v2/sharing/LinkPermission;->allow:Z

    .line 42
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/LinkPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    if-ne p1, p0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 99
    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 103
    check-cast p1, Lcom/dropbox/core/v2/sharing/LinkPermission;

    .line 104
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkPermission;->action:Lcom/dropbox/core/v2/sharing/LinkAction;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/LinkPermission;->action:Lcom/dropbox/core/v2/sharing/LinkAction;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkPermission;->action:Lcom/dropbox/core/v2/sharing/LinkAction;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/LinkPermission;->action:Lcom/dropbox/core/v2/sharing/LinkAction;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/LinkAction;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/LinkPermission;->allow:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/LinkPermission;->allow:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/LinkPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/LinkPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 106
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 110
    goto :goto_0
.end method

.method public getAction()Lcom/dropbox/core/v2/sharing/LinkAction;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPermission;->action:Lcom/dropbox/core/v2/sharing/LinkAction;

    return-object v0
.end method

.method public getAllow()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/LinkPermission;->allow:Z

    return v0
.end method

.method public getReason()Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkPermission;->action:Lcom/dropbox/core/v2/sharing/LinkAction;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/LinkPermission;->allow:Z

    .line 87
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    aput-object v2, v0, v1

    .line 85
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 90
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
