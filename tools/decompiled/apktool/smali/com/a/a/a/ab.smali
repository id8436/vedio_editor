.class public final enum Lcom/a/a/a/ab;
.super Ljava/lang/Enum;
.source "JobStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/a/ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/a/ab;

.field public static final enum b:Lcom/a/a/a/ab;

.field public static final enum c:Lcom/a/a/a/ab;

.field public static final enum d:Lcom/a/a/a/ab;

.field private static final synthetic e:[Lcom/a/a/a/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/a/a/a/ab;

    const-string/jumbo v1, "WAITING_NOT_READY"

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/ab;->a:Lcom/a/a/a/ab;

    .line 19
    new-instance v0, Lcom/a/a/a/ab;

    const-string/jumbo v1, "WAITING_READY"

    invoke-direct {v0, v1, v3}, Lcom/a/a/a/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/ab;->b:Lcom/a/a/a/ab;

    .line 23
    new-instance v0, Lcom/a/a/a/ab;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/a/a/a/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/ab;->c:Lcom/a/a/a/ab;

    .line 35
    new-instance v0, Lcom/a/a/a/ab;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/a/a/a/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/ab;->d:Lcom/a/a/a/ab;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/a/a/a/ab;

    sget-object v1, Lcom/a/a/a/ab;->a:Lcom/a/a/a/ab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/a/ab;->b:Lcom/a/a/a/ab;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/a/ab;->c:Lcom/a/a/a/ab;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/a/ab;->d:Lcom/a/a/a/ab;

    aput-object v1, v0, v5

    sput-object v0, Lcom/a/a/a/ab;->e:[Lcom/a/a/a/ab;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/a/ab;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/a/a/a/ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/ab;

    return-object v0
.end method

.method public static values()[Lcom/a/a/a/ab;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/a/a/a/ab;->e:[Lcom/a/a/a/ab;

    invoke-virtual {v0}, [Lcom/a/a/a/ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/a/ab;

    return-object v0
.end method
