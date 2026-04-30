.class public final enum Lcom/facebook/u;
.super Ljava/lang/Enum;
.source "FacebookRequestError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/u;

.field public static final enum b:Lcom/facebook/u;

.field public static final enum c:Lcom/facebook/u;

.field private static final synthetic d:[Lcom/facebook/u;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 447
    new-instance v0, Lcom/facebook/u;

    const-string/jumbo v1, "LOGIN_RECOVERABLE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/u;->a:Lcom/facebook/u;

    .line 452
    new-instance v0, Lcom/facebook/u;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/facebook/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/u;->b:Lcom/facebook/u;

    .line 457
    new-instance v0, Lcom/facebook/u;

    const-string/jumbo v1, "TRANSIENT"

    invoke-direct {v0, v1, v4}, Lcom/facebook/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/u;->c:Lcom/facebook/u;

    .line 440
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/u;

    sget-object v1, Lcom/facebook/u;->a:Lcom/facebook/u;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/u;->b:Lcom/facebook/u;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/u;->c:Lcom/facebook/u;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/u;->d:[Lcom/facebook/u;

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
    .line 440
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/u;
    .locals 1

    .prologue
    .line 440
    const-class v0, Lcom/facebook/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/u;

    return-object v0
.end method

.method public static values()[Lcom/facebook/u;
    .locals 1

    .prologue
    .line 440
    sget-object v0, Lcom/facebook/u;->d:[Lcom/facebook/u;

    invoke-virtual {v0}, [Lcom/facebook/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/u;

    return-object v0
.end method
