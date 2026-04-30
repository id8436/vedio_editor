.class public final enum Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;
.super Ljava/lang/Enum;
.source "SharedLinkAccessFailureReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

.field public static final enum EMAIL_VERIFY_REQUIRED:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

.field public static final enum LOGIN_REQUIRED:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

.field public static final enum OWNER_ONLY:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

.field public static final enum PASSWORD_REQUIRED:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

.field public static final enum TEAM_ONLY:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    const-string/jumbo v1, "LOGIN_REQUIRED"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->LOGIN_REQUIRED:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    .line 27
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    const-string/jumbo v1, "EMAIL_VERIFY_REQUIRED"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->EMAIL_VERIFY_REQUIRED:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    const-string/jumbo v1, "PASSWORD_REQUIRED"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->PASSWORD_REQUIRED:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    .line 35
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    const-string/jumbo v1, "TEAM_ONLY"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->TEAM_ONLY:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    const-string/jumbo v1, "OWNER_ONLY"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->OWNER_ONLY:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    .line 47
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->OTHER:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->LOGIN_REQUIRED:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->EMAIL_VERIFY_REQUIRED:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->PASSWORD_REQUIRED:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->TEAM_ONLY:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->OWNER_ONLY:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->OTHER:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->$VALUES:[Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->$VALUES:[Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    return-object v0
.end method
