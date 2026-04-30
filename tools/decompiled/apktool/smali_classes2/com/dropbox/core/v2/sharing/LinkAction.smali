.class public final enum Lcom/dropbox/core/v2/sharing/LinkAction;
.super Ljava/lang/Enum;
.source "LinkAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/LinkAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/LinkAction;

.field public static final enum CHANGE_ACCESS_LEVEL:Lcom/dropbox/core/v2/sharing/LinkAction;

.field public static final enum CHANGE_AUDIENCE:Lcom/dropbox/core/v2/sharing/LinkAction;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/LinkAction;

.field public static final enum REMOVE_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkAction;

.field public static final enum REMOVE_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkAction;

.field public static final enum SET_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkAction;

.field public static final enum SET_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkAction;

    const-string/jumbo v1, "CHANGE_ACCESS_LEVEL"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/LinkAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkAction;->CHANGE_ACCESS_LEVEL:Lcom/dropbox/core/v2/sharing/LinkAction;

    .line 30
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkAction;

    const-string/jumbo v1, "CHANGE_AUDIENCE"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/LinkAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkAction;->CHANGE_AUDIENCE:Lcom/dropbox/core/v2/sharing/LinkAction;

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkAction;

    const-string/jumbo v1, "REMOVE_EXPIRY"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/LinkAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkAction;->REMOVE_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkAction;

    .line 38
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkAction;

    const-string/jumbo v1, "REMOVE_PASSWORD"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/LinkAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkAction;->REMOVE_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkAction;

    .line 42
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkAction;

    const-string/jumbo v1, "SET_EXPIRY"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/sharing/LinkAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkAction;->SET_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkAction;

    .line 46
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkAction;

    const-string/jumbo v1, "SET_PASSWORD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/LinkAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkAction;->SET_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkAction;

    .line 54
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkAction;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/LinkAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkAction;->OTHER:Lcom/dropbox/core/v2/sharing/LinkAction;

    .line 21
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/LinkAction;

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkAction;->CHANGE_ACCESS_LEVEL:Lcom/dropbox/core/v2/sharing/LinkAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkAction;->CHANGE_AUDIENCE:Lcom/dropbox/core/v2/sharing/LinkAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkAction;->REMOVE_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkAction;->REMOVE_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkAction;->SET_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/sharing/LinkAction;->SET_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/core/v2/sharing/LinkAction;->OTHER:Lcom/dropbox/core/v2/sharing/LinkAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkAction;->$VALUES:[Lcom/dropbox/core/v2/sharing/LinkAction;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/LinkAction;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/dropbox/core/v2/sharing/LinkAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/LinkAction;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/LinkAction;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAction;->$VALUES:[Lcom/dropbox/core/v2/sharing/LinkAction;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/LinkAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/LinkAction;

    return-object v0
.end method
