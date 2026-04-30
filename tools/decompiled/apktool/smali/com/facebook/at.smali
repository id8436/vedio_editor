.class public final enum Lcom/facebook/at;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/at;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/at;

.field public static final enum b:Lcom/facebook/at;

.field public static final enum c:Lcom/facebook/at;

.field private static final synthetic d:[Lcom/facebook/at;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/facebook/at;

    const-string/jumbo v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/facebook/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/at;->a:Lcom/facebook/at;

    .line 35
    new-instance v0, Lcom/facebook/at;

    const-string/jumbo v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/facebook/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/at;->b:Lcom/facebook/at;

    .line 40
    new-instance v0, Lcom/facebook/at;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lcom/facebook/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/at;->c:Lcom/facebook/at;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/at;

    sget-object v1, Lcom/facebook/at;->a:Lcom/facebook/at;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/at;->b:Lcom/facebook/at;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/at;->c:Lcom/facebook/at;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/at;->d:[Lcom/facebook/at;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/at;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/facebook/at;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/at;

    return-object v0
.end method

.method public static values()[Lcom/facebook/at;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/facebook/at;->d:[Lcom/facebook/at;

    invoke-virtual {v0}, [Lcom/facebook/at;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/at;

    return-object v0
.end method
