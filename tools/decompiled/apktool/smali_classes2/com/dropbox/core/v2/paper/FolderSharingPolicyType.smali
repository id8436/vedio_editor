.class public final enum Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;
.super Ljava/lang/Enum;
.source "FolderSharingPolicyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

.field public static final enum INVITE_ONLY:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

.field public static final enum TEAM:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    const-string/jumbo v1, "TEAM"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;->TEAM:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    .line 33
    new-instance v0, Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    const-string/jumbo v1, "INVITE_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;->INVITE_ONLY:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    sget-object v1, Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;->TEAM:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;->INVITE_ONLY:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;->$VALUES:[Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;->$VALUES:[Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    return-object v0
.end method
