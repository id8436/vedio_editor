.class public final enum Lcom/facebook/c/a/e;
.super Ljava/lang/Enum;
.source "CacheEventListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/c/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/c/a/e;

.field public static final enum b:Lcom/facebook/c/a/e;

.field public static final enum c:Lcom/facebook/c/a/e;

.field public static final enum d:Lcom/facebook/c/a/e;

.field private static final synthetic e:[Lcom/facebook/c/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/facebook/c/a/e;

    const-string/jumbo v1, "CACHE_FULL"

    invoke-direct {v0, v1, v2}, Lcom/facebook/c/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/a/e;->a:Lcom/facebook/c/a/e;

    .line 64
    new-instance v0, Lcom/facebook/c/a/e;

    const-string/jumbo v1, "CONTENT_STALE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/c/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/a/e;->b:Lcom/facebook/c/a/e;

    .line 65
    new-instance v0, Lcom/facebook/c/a/e;

    const-string/jumbo v1, "USER_FORCED"

    invoke-direct {v0, v1, v4}, Lcom/facebook/c/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/a/e;->c:Lcom/facebook/c/a/e;

    .line 66
    new-instance v0, Lcom/facebook/c/a/e;

    const-string/jumbo v1, "CACHE_MANAGER_TRIMMED"

    invoke-direct {v0, v1, v5}, Lcom/facebook/c/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/a/e;->d:Lcom/facebook/c/a/e;

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/c/a/e;

    sget-object v1, Lcom/facebook/c/a/e;->a:Lcom/facebook/c/a/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/c/a/e;->b:Lcom/facebook/c/a/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/c/a/e;->c:Lcom/facebook/c/a/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/c/a/e;->d:Lcom/facebook/c/a/e;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/c/a/e;->e:[Lcom/facebook/c/a/e;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/c/a/e;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/facebook/c/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/a/e;

    return-object v0
.end method

.method public static values()[Lcom/facebook/c/a/e;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/c/a/e;->e:[Lcom/facebook/c/a/e;

    invoke-virtual {v0}, [Lcom/facebook/c/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/c/a/e;

    return-object v0
.end method
