.class public final enum Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;
.super Ljava/lang/Enum;
.source "AddMemberSelectorError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

.field public static final enum AUTOMATIC_GROUP:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

.field public static final enum GROUP_DELETED:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

.field public static final enum GROUP_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

.field public static final enum INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

.field public static final enum INVALID_EMAIL:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

.field public static final enum UNVERIFIED_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    const-string/jumbo v1, "AUTOMATIC_GROUP"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->AUTOMATIC_GROUP:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    .line 43
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    const-string/jumbo v1, "INVALID_DROPBOX_ID"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    .line 47
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    const-string/jumbo v1, "INVALID_EMAIL"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_EMAIL:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    .line 53
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    const-string/jumbo v1, "UNVERIFIED_DROPBOX_ID"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->UNVERIFIED_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    .line 58
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    const-string/jumbo v1, "GROUP_DELETED"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->GROUP_DELETED:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    .line 62
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    const-string/jumbo v1, "GROUP_NOT_ON_TEAM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->GROUP_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    .line 71
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->AUTOMATIC_GROUP:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_EMAIL:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->UNVERIFIED_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->GROUP_DELETED:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->GROUP_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    return-object v0
.end method
