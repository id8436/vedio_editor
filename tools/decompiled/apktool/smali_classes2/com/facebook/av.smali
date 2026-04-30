.class public final enum Lcom/facebook/av;
.super Ljava/lang/Enum;
.source "LoggingBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/av;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/av;

.field public static final enum b:Lcom/facebook/av;

.field public static final enum c:Lcom/facebook/av;

.field public static final enum d:Lcom/facebook/av;

.field public static final enum e:Lcom/facebook/av;

.field public static final enum f:Lcom/facebook/av;

.field public static final enum g:Lcom/facebook/av;

.field public static final enum h:Lcom/facebook/av;

.field private static final synthetic i:[Lcom/facebook/av;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/facebook/av;

    const-string/jumbo v1, "REQUESTS"

    invoke-direct {v0, v1, v3}, Lcom/facebook/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/av;->a:Lcom/facebook/av;

    .line 37
    new-instance v0, Lcom/facebook/av;

    const-string/jumbo v1, "INCLUDE_ACCESS_TOKENS"

    invoke-direct {v0, v1, v4}, Lcom/facebook/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/av;->b:Lcom/facebook/av;

    .line 41
    new-instance v0, Lcom/facebook/av;

    const-string/jumbo v1, "INCLUDE_RAW_RESPONSES"

    invoke-direct {v0, v1, v5}, Lcom/facebook/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/av;->c:Lcom/facebook/av;

    .line 45
    new-instance v0, Lcom/facebook/av;

    const-string/jumbo v1, "CACHE"

    invoke-direct {v0, v1, v6}, Lcom/facebook/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/av;->d:Lcom/facebook/av;

    .line 49
    new-instance v0, Lcom/facebook/av;

    const-string/jumbo v1, "APP_EVENTS"

    invoke-direct {v0, v1, v7}, Lcom/facebook/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/av;->e:Lcom/facebook/av;

    .line 54
    new-instance v0, Lcom/facebook/av;

    const-string/jumbo v1, "DEVELOPER_ERRORS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/av;->f:Lcom/facebook/av;

    .line 60
    new-instance v0, Lcom/facebook/av;

    const-string/jumbo v1, "GRAPH_API_DEBUG_WARNING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/av;->g:Lcom/facebook/av;

    .line 67
    new-instance v0, Lcom/facebook/av;

    const-string/jumbo v1, "GRAPH_API_DEBUG_INFO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/av;->h:Lcom/facebook/av;

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/facebook/av;

    sget-object v1, Lcom/facebook/av;->a:Lcom/facebook/av;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/av;->b:Lcom/facebook/av;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/av;->c:Lcom/facebook/av;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/av;->d:Lcom/facebook/av;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/av;->e:Lcom/facebook/av;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/av;->f:Lcom/facebook/av;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/av;->g:Lcom/facebook/av;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/av;->h:Lcom/facebook/av;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/av;->i:[Lcom/facebook/av;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/av;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/facebook/av;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/av;

    return-object v0
.end method

.method public static values()[Lcom/facebook/av;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/facebook/av;->i:[Lcom/facebook/av;

    invoke-virtual {v0}, [Lcom/facebook/av;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/av;

    return-object v0
.end method
