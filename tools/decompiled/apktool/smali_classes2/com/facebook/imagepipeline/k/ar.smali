.class final enum Lcom/facebook/imagepipeline/k/ar;
.super Ljava/lang/Enum;
.source "JobScheduler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/imagepipeline/k/ar;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/imagepipeline/k/ar;

.field public static final enum b:Lcom/facebook/imagepipeline/k/ar;

.field public static final enum c:Lcom/facebook/imagepipeline/k/ar;

.field public static final enum d:Lcom/facebook/imagepipeline/k/ar;

.field private static final synthetic e:[Lcom/facebook/imagepipeline/k/ar;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/facebook/imagepipeline/k/ar;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/k/ar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/k/ar;->a:Lcom/facebook/imagepipeline/k/ar;

    new-instance v0, Lcom/facebook/imagepipeline/k/ar;

    const-string/jumbo v1, "QUEUED"

    invoke-direct {v0, v1, v3}, Lcom/facebook/imagepipeline/k/ar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/k/ar;->b:Lcom/facebook/imagepipeline/k/ar;

    new-instance v0, Lcom/facebook/imagepipeline/k/ar;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/facebook/imagepipeline/k/ar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/k/ar;->c:Lcom/facebook/imagepipeline/k/ar;

    new-instance v0, Lcom/facebook/imagepipeline/k/ar;

    const-string/jumbo v1, "RUNNING_AND_PENDING"

    invoke-direct {v0, v1, v5}, Lcom/facebook/imagepipeline/k/ar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/k/ar;->d:Lcom/facebook/imagepipeline/k/ar;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/imagepipeline/k/ar;

    sget-object v1, Lcom/facebook/imagepipeline/k/ar;->a:Lcom/facebook/imagepipeline/k/ar;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/imagepipeline/k/ar;->b:Lcom/facebook/imagepipeline/k/ar;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/imagepipeline/k/ar;->c:Lcom/facebook/imagepipeline/k/ar;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/imagepipeline/k/ar;->d:Lcom/facebook/imagepipeline/k/ar;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/imagepipeline/k/ar;->e:[Lcom/facebook/imagepipeline/k/ar;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/imagepipeline/k/ar;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/facebook/imagepipeline/k/ar;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/k/ar;

    return-object v0
.end method

.method public static values()[Lcom/facebook/imagepipeline/k/ar;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/facebook/imagepipeline/k/ar;->e:[Lcom/facebook/imagepipeline/k/ar;

    invoke-virtual {v0}, [Lcom/facebook/imagepipeline/k/ar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/imagepipeline/k/ar;

    return-object v0
.end method
