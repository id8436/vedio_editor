.class final enum Lcom/b/a/d/b/w;
.super Ljava/lang/Enum;
.source "EngineRunnable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/b/a/d/b/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/a/d/b/w;

.field public static final enum b:Lcom/b/a/d/b/w;

.field private static final synthetic c:[Lcom/b/a/d/b/w;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 137
    new-instance v0, Lcom/b/a/d/b/w;

    const-string/jumbo v1, "CACHE"

    invoke-direct {v0, v1, v2}, Lcom/b/a/d/b/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/d/b/w;->a:Lcom/b/a/d/b/w;

    .line 139
    new-instance v0, Lcom/b/a/d/b/w;

    const-string/jumbo v1, "SOURCE"

    invoke-direct {v0, v1, v3}, Lcom/b/a/d/b/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/d/b/w;->b:Lcom/b/a/d/b/w;

    .line 135
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/b/a/d/b/w;

    sget-object v1, Lcom/b/a/d/b/w;->a:Lcom/b/a/d/b/w;

    aput-object v1, v0, v2

    sget-object v1, Lcom/b/a/d/b/w;->b:Lcom/b/a/d/b/w;

    aput-object v1, v0, v3

    sput-object v0, Lcom/b/a/d/b/w;->c:[Lcom/b/a/d/b/w;

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
    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/d/b/w;
    .locals 1

    .prologue
    .line 135
    const-class v0, Lcom/b/a/d/b/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/a/d/b/w;

    return-object v0
.end method

.method public static values()[Lcom/b/a/d/b/w;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/b/a/d/b/w;->c:[Lcom/b/a/d/b/w;

    invoke-virtual {v0}, [Lcom/b/a/d/b/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/d/b/w;

    return-object v0
.end method
