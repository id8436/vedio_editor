.class public final enum Lcom/dropbox/core/v2/sharing/Visibility;
.super Ljava/lang/Enum;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/Visibility;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/Visibility;

.field public static final enum PASSWORD:Lcom/dropbox/core/v2/sharing/Visibility;

.field public static final enum PUBLIC:Lcom/dropbox/core/v2/sharing/Visibility;

.field public static final enum SHARED_FOLDER_ONLY:Lcom/dropbox/core/v2/sharing/Visibility;

.field public static final enum TEAM_AND_PASSWORD:Lcom/dropbox/core/v2/sharing/Visibility;

.field public static final enum TEAM_ONLY:Lcom/dropbox/core/v2/sharing/Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/dropbox/core/v2/sharing/Visibility;

    const-string/jumbo v1, "PUBLIC"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/Visibility;->PUBLIC:Lcom/dropbox/core/v2/sharing/Visibility;

    .line 32
    new-instance v0, Lcom/dropbox/core/v2/sharing/Visibility;

    const-string/jumbo v1, "TEAM_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/Visibility;->TEAM_ONLY:Lcom/dropbox/core/v2/sharing/Visibility;

    .line 37
    new-instance v0, Lcom/dropbox/core/v2/sharing/Visibility;

    const-string/jumbo v1, "PASSWORD"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/Visibility;->PASSWORD:Lcom/dropbox/core/v2/sharing/Visibility;

    .line 42
    new-instance v0, Lcom/dropbox/core/v2/sharing/Visibility;

    const-string/jumbo v1, "TEAM_AND_PASSWORD"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/Visibility;->TEAM_AND_PASSWORD:Lcom/dropbox/core/v2/sharing/Visibility;

    .line 47
    new-instance v0, Lcom/dropbox/core/v2/sharing/Visibility;

    const-string/jumbo v1, "SHARED_FOLDER_ONLY"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/sharing/Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/Visibility;->SHARED_FOLDER_ONLY:Lcom/dropbox/core/v2/sharing/Visibility;

    .line 55
    new-instance v0, Lcom/dropbox/core/v2/sharing/Visibility;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/Visibility;->OTHER:Lcom/dropbox/core/v2/sharing/Visibility;

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/Visibility;

    sget-object v1, Lcom/dropbox/core/v2/sharing/Visibility;->PUBLIC:Lcom/dropbox/core/v2/sharing/Visibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/Visibility;->TEAM_ONLY:Lcom/dropbox/core/v2/sharing/Visibility;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/Visibility;->PASSWORD:Lcom/dropbox/core/v2/sharing/Visibility;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/Visibility;->TEAM_AND_PASSWORD:Lcom/dropbox/core/v2/sharing/Visibility;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/sharing/Visibility;->SHARED_FOLDER_ONLY:Lcom/dropbox/core/v2/sharing/Visibility;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/sharing/Visibility;->OTHER:Lcom/dropbox/core/v2/sharing/Visibility;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/sharing/Visibility;->$VALUES:[Lcom/dropbox/core/v2/sharing/Visibility;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/Visibility;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/dropbox/core/v2/sharing/Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/Visibility;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/Visibility;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/dropbox/core/v2/sharing/Visibility;->$VALUES:[Lcom/dropbox/core/v2/sharing/Visibility;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/Visibility;

    return-object v0
.end method
