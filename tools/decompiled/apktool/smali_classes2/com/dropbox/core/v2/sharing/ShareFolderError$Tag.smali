.class public final enum Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;
.super Ljava/lang/Enum;
.source "ShareFolderError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

.field public static final enum BAD_PATH:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

.field public static final enum DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

.field public static final enum EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

.field public static final enum NO_PERMISSION:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

.field public static final enum TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    const-string/jumbo v1, "EMAIL_UNVERIFIED"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    .line 38
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    const-string/jumbo v1, "BAD_PATH"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->BAD_PATH:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    .line 43
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    const-string/jumbo v1, "TEAM_POLICY_DISALLOWS_MEMBER_POLICY"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    const-string/jumbo v1, "DISALLOWED_SHARED_LINK_POLICY"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    .line 57
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    const-string/jumbo v1, "NO_PERMISSION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    .line 30
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->BAD_PATH:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    return-object v0
.end method
