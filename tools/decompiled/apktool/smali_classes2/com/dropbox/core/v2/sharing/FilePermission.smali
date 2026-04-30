.class public Lcom/dropbox/core/v2/sharing/FilePermission;
.super Ljava/lang/Object;
.source "FilePermission.java"


# instance fields
.field protected final action:Lcom/dropbox/core/v2/sharing/FileAction;

.field protected final allow:Z

.field protected final reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/FileAction;Z)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/sharing/FilePermission;-><init>(Lcom/dropbox/core/v2/sharing/FileAction;ZLcom/dropbox/core/v2/sharing/PermissionDeniedReason;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/FileAction;ZLcom/dropbox/core/v2/sharing/PermissionDeniedReason;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'action\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/FilePermission;->action:Lcom/dropbox/core/v2/sharing/FileAction;

    .line 45
    iput-boolean p2, p0, Lcom/dropbox/core/v2/sharing/FilePermission;->allow:Z

    .line 46
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/FilePermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    if-ne p1, p0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 109
    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 113
    check-cast p1, Lcom/dropbox/core/v2/sharing/FilePermission;

    .line 114
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FilePermission;->action:Lcom/dropbox/core/v2/sharing/FileAction;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FilePermission;->action:Lcom/dropbox/core/v2/sharing/FileAction;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FilePermission;->action:Lcom/dropbox/core/v2/sharing/FileAction;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FilePermission;->action:Lcom/dropbox/core/v2/sharing/FileAction;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/FileAction;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/FilePermission;->allow:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/FilePermission;->allow:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FilePermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FilePermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FilePermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FilePermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FilePermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 116
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 120
    goto :goto_0
.end method

.method public getAction()Lcom/dropbox/core/v2/sharing/FileAction;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FilePermission;->action:Lcom/dropbox/core/v2/sharing/FileAction;

    return-object v0
.end method

.method public getAllow()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/FilePermission;->allow:Z

    return v0
.end method

.method public getReason()Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FilePermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FilePermission;->action:Lcom/dropbox/core/v2/sharing/FileAction;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/FilePermission;->allow:Z

    .line 97
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FilePermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    aput-object v2, v0, v1

    .line 95
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 100
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/dropbox/core/v2/sharing/FilePermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FilePermission$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FilePermission$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    sget-object v0, Lcom/dropbox/core/v2/sharing/FilePermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FilePermission$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FilePermission$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
