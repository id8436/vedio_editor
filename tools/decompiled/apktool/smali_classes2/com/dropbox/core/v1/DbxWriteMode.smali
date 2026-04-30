.class public final Lcom/dropbox/core/v1/DbxWriteMode;
.super Ljava/lang/Object;
.source "DbxWriteMode.java"


# static fields
.field private static final AddInstance:Lcom/dropbox/core/v1/DbxWriteMode;

.field private static final ForceInstance:Lcom/dropbox/core/v1/DbxWriteMode;


# instance fields
.field final params:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/dropbox/core/v1/DbxWriteMode;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "overwrite"

    aput-object v2, v1, v3

    const-string/jumbo v2, "false"

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lcom/dropbox/core/v1/DbxWriteMode;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v1/DbxWriteMode;->AddInstance:Lcom/dropbox/core/v1/DbxWriteMode;

    .line 43
    new-instance v0, Lcom/dropbox/core/v1/DbxWriteMode;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "overwrite"

    aput-object v2, v1, v3

    const-string/jumbo v2, "true"

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lcom/dropbox/core/v1/DbxWriteMode;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v1/DbxWriteMode;->ForceInstance:Lcom/dropbox/core/v1/DbxWriteMode;

    return-void
.end method

.method varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxWriteMode;->params:[Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static add()Lcom/dropbox/core/v1/DbxWriteMode;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/dropbox/core/v1/DbxWriteMode;->AddInstance:Lcom/dropbox/core/v1/DbxWriteMode;

    return-object v0
.end method

.method public static force()Lcom/dropbox/core/v1/DbxWriteMode;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/dropbox/core/v1/DbxWriteMode;->ForceInstance:Lcom/dropbox/core/v1/DbxWriteMode;

    return-object v0
.end method

.method public static update(Ljava/lang/String;)Lcom/dropbox/core/v1/DbxWriteMode;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lcom/dropbox/core/v1/DbxWriteMode;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "parent_rev"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lcom/dropbox/core/v1/DbxWriteMode;-><init>([Ljava/lang/String;)V

    return-object v0
.end method
