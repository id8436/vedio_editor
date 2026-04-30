.class final enum Lcom/facebook/a/l;
.super Ljava/lang/Enum;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/a/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/a/l;

.field public static final enum b:Lcom/facebook/a/l;

.field public static final enum c:Lcom/facebook/a/l;

.field public static final enum d:Lcom/facebook/a/l;

.field private static final synthetic e:[Lcom/facebook/a/l;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 642
    new-instance v0, Lcom/facebook/a/l;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/facebook/a/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/l;->a:Lcom/facebook/a/l;

    .line 643
    new-instance v0, Lcom/facebook/a/l;

    const-string/jumbo v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/facebook/a/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/l;->b:Lcom/facebook/a/l;

    .line 644
    new-instance v0, Lcom/facebook/a/l;

    const-string/jumbo v1, "NO_CONNECTIVITY"

    invoke-direct {v0, v1, v4}, Lcom/facebook/a/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/l;->c:Lcom/facebook/a/l;

    .line 645
    new-instance v0, Lcom/facebook/a/l;

    const-string/jumbo v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/facebook/a/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/l;->d:Lcom/facebook/a/l;

    .line 640
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/a/l;

    sget-object v1, Lcom/facebook/a/l;->a:Lcom/facebook/a/l;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/a/l;->b:Lcom/facebook/a/l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/a/l;->c:Lcom/facebook/a/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/a/l;->d:Lcom/facebook/a/l;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/a/l;->e:[Lcom/facebook/a/l;

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
    .line 641
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/a/l;
    .locals 1

    .prologue
    .line 640
    const-class v0, Lcom/facebook/a/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/l;

    return-object v0
.end method

.method public static values()[Lcom/facebook/a/l;
    .locals 1

    .prologue
    .line 640
    sget-object v0, Lcom/facebook/a/l;->e:[Lcom/facebook/a/l;

    invoke-virtual {v0}, [Lcom/facebook/a/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/a/l;

    return-object v0
.end method
